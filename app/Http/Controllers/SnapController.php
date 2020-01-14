<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Veritrans\Midtrans;
use App\Veritrans\Veritrans;
use Illuminate\Support\Facades\Auth;

class SnapController extends Controller
{
    public function __construct()
    {   
        Midtrans::$serverKey = 'VT-server-CC-YuJOoPxEobj3pmD8lc7pc';
        //set is production to true for production mode
        Midtrans::$isProduction = false;
    }

    public function snap()
    {
        return view('snap_checkout');
    }

    public function token($id_payments,$id_users) 
    {
        error_log('masuk ke snap token dri ajax');
        $midtrans           = new Midtrans;
        $datapayments       = DB::table('payments')->where('pay_idpayments',$id_payments)->first();
        $datauser           = DB::table('users')->join('store','users.id','=','store.st_users_id')->where('id',$id_users)->first();
        $CANCEL             = 3;
        $DENY               = 5;
        $EXPIRED            = 6;
        $payment_status     = $datapayments->pay_status_payments_idstatus;
        $id_store           = $datapayments->pay_store_id_store;
        $id_user            = $datapayments->pay_users_id_users;
        $date               =  date("dYm");
        if($payment_status == $CANCEL || $payment_status == $DENY || $payment_status == $EXPIRED){
            $data           = array(
                'order_id'  => "ncomm_".$id_store.'_'.$id_user.'_'.$date.'_'.rand()
            );
            DB::table('payments')->where('pay_idpayments',$id_payments)->update($data);
        }
        $transaction_details = array(
            'order_id'      => $datapayments->order_id,
            'gross_amount'  => $datapayments->pay_price_package
        );

        // Populate items
        $items = [
            array(
                'id'        => $datapayments->pay_idpayments,
                'price'     => $datapayments->pay_price_package,
                'quantity'  => 1,
                'name'      => $datapayments->pay_name_package,
            )
        ];

        // Populate customer's billing address
        $billing_address = array(
            'first_name'    => $datauser->u_name,
            // 'last_name'     => "Setiawan",
            'address'       => "Tempat Tinggal Dummy",
            'city'          => "Jakarta",
            'postal_code'   => "51161",
            'phone'         => $datauser->u_phone,
            'country_code'  => 'IDN'
            );

        // Populate customer's shipping address
        $shipping_address = array(
            'first_name'    => $datauser->u_name,
            // 'last_name'     => "Watson",
            'address'       => "Bakerstreet 221B.Dummy",
            'city'          => "Jakarta",
            'postal_code'   => "51162",
            'phone'         => $datauser->u_phone,
            'country_code'  => 'IDN'
            );

        // Populate customer's Info
        $customer_details = array(
            'first_name'      => $datauser->u_name,
            // 'last_name'       => "Setiawan",
            'email'           => $datauser->email,
            'phone'           => $datauser->u_phone,
            'billing_address' => $billing_address,
            'shipping_address'=> $shipping_address
            );

        // Data yang akan dikirim untuk request redirect_url.
        $credit_card['secure'] = true;
        //ser save_card true to enable oneclick or 2click
        //$credit_card['save_card'] = true;

        $time = time();
        $custom_expiry = array(
            'start_time' => date("Y-m-d H:i:s O",$time),
            'unit'       => 'hour', 
            'duration'   => 2
        );
        
        $transaction_data = array(
            'transaction_details'=> $transaction_details,
            'item_details'       => $items,
            'customer_details'   => $customer_details,
            'credit_card'        => $credit_card,
            'expiry'             => $custom_expiry
        );
    
        try
        {
            $snap_token = $midtrans->getSnapToken($transaction_data);
            //return redirect($vtweb_url);
            
            echo $snap_token;
        } 
        catch (Exception $e) 
        {   
            return $e->getMessage;
        }
    }

    public function finish(Request $request)
    {
        $result = $request->input('result_data');
        $result = json_decode($result);
        echo $result->status_message . '<br>';
        echo 'RESULT <br><pre>';
        var_dump($result);
        echo '</pre>' ;
       
    }

    public function notification()
    {
        $midtrans = new Veritrans;
        // echo 'test notification handler';
        $json_result = file_get_contents('php://input');
        $notif = json_decode($json_result);
        
        // dd($notif);
        // die();
        // if($result){
        // $notif = $midtrans->status($result->order_id);
        // }

        // error_log(print_r($result,TRUE));

        
        $transaction = $notif->transaction_status;
        $type = $notif->payment_type;
        $order_id = $notif->order_id;
        $fraud = $notif->fraud_status;

        if ($transaction == 'capture') {
          // For credit card transaction, we need to check whether transaction is challenge by FDS or not
          if ($type == 'credit_card'){
            if($fraud == 'challenge'){
              // TODO set payment status in merchant's database to 'Challenge by FDS'
              // TODO merchant should decide whether this transaction is authorized or not in MAP
              echo "Transaction order_id: " . $order_id ." is challenged by FDS";
              } 
              else {
              // TODO set payment status in merchant's database to 'Success'
              DB::table('payments')->where('order_id',$notif->order_id)->update([
                'transaction_id' => $notif->transaction_id,
                'pay_status_payments_idstatus' =>1 //PAID,
            ]);
                
              }
            }
          }
        else if ($transaction == 'settlement'){
          // TODO set payment status in merchant's database to 'Settlement'
          DB::table('payments')->where('order_id',$notif->order_id)->update([
            'transaction_id' => $notif->transaction_id,
            'pay_status_payments_idstatus' =>1 //PAID,
        ]);
          } 
          else if($transaction == 'pending'){
          // TODO set payment status in merchant's database to 'Pending'
          DB::table('payments')->where('order_id',$notif->order_id)->update([
            'transaction_id' => $notif->transaction_id,
            'pay_status_payments_idstatus' =>7 //PENDING,
        ]);
          } 
          else if ($transaction == 'deny') {
          // TODO set payment status in merchant's database to 'Denied'
          DB::table('payments')->where('order_id',$notif->order_id)->update([
            'transaction_id' => $notif->transaction_id,
            'pay_status_payments_idstatus' =>5 //DENY,
        ]);
        }
   
    }
}    