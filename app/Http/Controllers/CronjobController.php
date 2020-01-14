<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\DB;
use App\Mail\BillPayments;
class CronjobController extends Controller
{
    public function insertPayment()
    {
        $date           = Carbon::now()->toDateTimeString();
        //Join store dan nama package
        $statusstore    = DB::table('store')
                            ->join('package','store.st_package_pac_idpackage','=','pac_idpackage')
                            ->join('users','store.st_users_id','=','id')
                            ->where('st_status_sts_idstatus',1)->get();
        foreach($statusstore as $payments){
            $data = array(
                'pay_users_id_users'            => $payments->st_users_id,
                'pay_store_id_store'            => $payments->st_id_store,
                'pay_name_package'              => $payments->pac_name_package,
                'pay_price_package'             => $payments->pac_price_package,
                'pay_order_date'                => $date,
                'pay_status_payments_idstatus'  => 2    //UNPAID
            );  
            DB::table('payments')->insert($data);
            Mail::to($payments->email)->send(new BillPayments($payments));
            
        }
    }
}
