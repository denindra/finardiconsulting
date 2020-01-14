<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use Illuminate\Support\Facades\Mail;

// use Illuminate\Mail\Mailable;
use App\Mail\StoreCreated;
use App\Mail\deletedStore;
class UserController extends Controller
{
	public function dashboard()
	{
		//Jumlah store berdasarkan id user
		$store= Auth::user()->join('store', 'users.id', '=', 'store.st_users_id')
							->where('id', Auth::id())
							->get();
		//tamplilkan paket 
		$package_table=DB::table('package')->get();
		$package= array(
			'user'		=> Auth::user(),
			'store'		=> $store,
			'package'	=> $package_table
		);
		return view('Users.dashboard', $package);
	}

	public function getUsersStore()
	{
		// Menampilkan Jumlah store berdasarkan id user menggunakan AJAX
		$store_payments = Auth::user()->join('store', 'users.id', '=', 'store.st_users_id')
							   		  ->join('package','store.st_package_pac_idpackage','=','package.pac_idpackage')
							   		  ->where('id', Auth::id())
							   		  ->get();
		return $store_payments;
	}

	public function postPasswordChanged(Request $request)
	{
		$current_password 	= $request->get('current_password');
		$password_user		= Auth::user()->password;
		$new_password		= $request->get('new_password');
		// check current password and new password same
		$validationpassword = Hash::check($current_password , $password_user);

		if (!$validationpassword){
			$message = array(
			'status'	=> 'error',
			'message' 	=> 'error Your current password does not matches with the password you provided. Please try again.'
			);
			return $message;
		}
			
		// Current password and new password are same
		if (strcmp($current_password ,$new_password) == 0){
			$message = array(
			'status'	=> 'error',
			'message'	=> 'error New Password cannot be same as your current password. Please choose a different password.'
			);
		return $message;
		}

		$validated		= array(
						'current_password'	=> 'required',
						'new_password' 		=> 'required|string|min:6|confirmed'
		);
		$validatedData 	= $request->validate($validated);

		// Change Password

		$user 			= Auth::user();
		$user->password = bcrypt($request->get('new_password'));
		$user->save();
		$message 		= array(
							'status' => 'success',
							'message' => 'success Password changed successfully !'
		);
		return $message;
	}

	public function createStore(Request $request)
	{
		$namatoko		= $request->store_name;
		$id_user		= Auth::id();
		$store_email 	= Auth::user()->email;
		$date			= date("M_d_Y_h_i_s_A");
		$id_package		= $request->package;
		$data = array(
			'st_name_store' 				=> $namatoko,
			'st_email' 						=> $store_email,
			'st_dbhost' 					=> 'localhost',
			'st_dbusername' 				=> 'root',
			'st_password' 					=> Hash::make(''. $request->password .'') ,
			'st_dbpassword' 				=> '',
			'st_dbname' 					=> $namatoko . 'ncom',
			'st_name_domain'				=> 'http://ncommerce.id/' . $namatoko,
			'st_status' 					=> 'online',
			'st_status_sts_idstatus'		=> 1,
			'st_users_id'					=> $id_user,
			'st_package_pac_idpackage'		=> $id_package
		);
		//Insert Id and get Store Id
		$id_store=DB::table('store')->insertGetId($data);

		$servername = "localhost";
		$username = 'root';
		$password = "";
		// Create connection
		$conn = mysqli_connect($servername, $username, $password);
		// Check connection
		if ($conn->connect_error){
			die("Connection failed: " . $conn->connect_error);
		}
		// Create database
		$DBname = 'ncomm_'.$namatoko.'_'.rand().'_'.$date.'_'.$id_store;
		$sql = "CREATE DATABASE ".$DBname;
		mysqli_query($conn, $sql);
		$datadbname = array(
			'dbname' =>$DBname
		);
		//insert DBname to dbname column
		DB::table('store')->where('st_id_store',$id_store)->update($datadbname);
		$message = array(
			'DBname'     =>$DBname,
            'message'    =>'success',
			'id_store'   =>$id_store,
			'id_package' =>$request->package
		);
		session($message);
		return $message;

	}

	public function createTable(Request $request)
	{
		$DBname			= $request->session()->get('DBname');
		$id_store		= $request->session()->get('id_store');
		$id_package		= $request->session()->get('id_package');
		$request->session()->forget(['DBname', 'id_store','id_package']);
		
		$filename		= asset('ncommerce_db.sql');
		$servername 	= "localhost";
		$username 		= 'root';
		$password 		= "";
		$id_user		= Auth::id();
		$store_email	= Auth::user()->email;
		$conntab		= mysqli_connect($servername, $username, $password, $DBname);
		$createTable	= $filename;
		//table created
		mysqli_query($conntab, $createTable);
        // Check connection 
        if ($conntab->connect_error) { 
            die("Connection failed: " . $conntab->connect_error); 
        }  

        // // Temporary variable, used to store current query 
        // $templine = ''; 
        // // Read in entire file 
        // $lines = file($filename); 
        // // Loop through each line 
        // foreach ($lines as $line) 
        // { 
        //     // Skip it if it's a comment 
        //     if (substr($line, 0, 2) == '--' || $line == '') 
        //         continue; 

        //     // Add this line to the current segment 
        //     $templine .= $line; 
        //     // If it has a semicolon at the end, it's the end of the query 
        //     if (substr(trim($line), -1, 1) == ';') 
        //     { 
        //         // Perform the query 
        //         mysqli_query($conntab,$templine) or print('Error performing query \'<strong>' . $templine . '\': ' . mysqli_error($conntab) . '<br /><br />'); 
        //         // Reset temp variable to empty 
        //         $templine = ''; 
        //     } 
        // } 
         
        // echo true;

		$date			= Carbon::now()->toDateTimeString();
		$date1			= date("dYm");
		$package		= DB::table('package')->where('pac_idpackage',$id_package)->first();

		$free			= 1;
		if($package->pac_idpackage == $free){
			$data = array(
				'pay_users_id_users'   		 	=> $id_user,
				'pay_store_id_store'    		=> $id_store,
				'pay_name_package'      		=> $package->pac_name_package,
				'pay_price_package'     		=> $package->pac_price_package,
				'pay_order_date'        		=> $date,
				'order_id'      				=> "ncomm_".$id_store.'_'.$id_user.'_'.$date1.'_'.rand(),
				'pay_status_payments_idstatus' 	=> 4	//FREE
			);
		} 	
		elseif($package->pac_idpackage !== $free){
			$data = array(
				'pay_users_id_users'    		=> $id_user,
				'pay_store_id_store'    		=> $id_store,
				'pay_name_package'      		=> $package->pac_name_package,
				'pay_price_package'     		=> $package->pac_price_package,
				'pay_order_date'        		=> $date,
				'order_id'      				=> "ncomm_".$id_store.'_'.$id_user.'_'.$date1.'_'.rand(),
				'pay_status_payments_idstatus'	=> 2	//UNPAID
			);
		}
						DB::table('payments')->insert($data);
		$datastore	=	DB::table('store')->where('st_id_store',$id_store)->first();
		//Send Mail
        Mail::to($store_email)->send(new StoreCreated($datastore));
		$message = array(
			'message' => 'success'
		);
		return $message;
	}

	public function bill($id_store)
	{
		$listpayment	= DB::table('payments')
								->join('store','payments.pay_store_id_store','=','store.st_id_store')
								->where('pay_store_id_store',$id_store)
								->where('st_users_id',Auth::user()->id)
								->get();
			
		$store_id		= DB::table('payments')
								->select('pay_store_id_store')
								->where('pay_store_id_store',$id_store)
								->first();

		$package 		= array(
							'user' 			 => Auth::user(),
							'store_payments' => $listpayment,
							'store_id'		 => $store_id
		);

		if(empty($store_id)){
			abort(404);
		} else {
			return view('Users.bill',$package);
		}
	}

	public function deleteStore($id_store)
	{
		$store		= DB::table('store')
						->where('st_id_store',$id_store)
						->where('st_users_id',Auth::id())->first();
		$package 	= array(
			'user' 	=> Auth::user(),
			'store' => $store
		);
		return view('Users.deletestore',$package);
	}

	public function postDeletestore($id_store)
	{
		$servername 	= "localhost";
		$username 		= 'root';
		$password 		= "";
		$conn 			= mysqli_connect($servername, $username, $password);
		$store_users	= DB::table('store')
							->join('users','store.st_users_id','=','users.id')
							->where('st_id_store',$id_store)
							->first();
		// Drop DB
		$query 		= "DROP DATABASE ".$store_users->dbname;
		mysqli_query($conn, $query);
		//delete payments store
		// DB::table('payments')->where('pay_store_id_store',$id_store)->delete();
		//delete store 
		$data		= array(
			'st_status_sts_idstatus'	=>3	//deleted
		);
		DB::table('store')->where('st_id_store',$id_store)->update($data);
		Mail::to($store_users->email)->send(new deletedStore($store_users));
		return redirect()->route('dashboard')->with('status','Store Deleted!');
	}

	public function logout()
	{
		$date 		= Carbon::now()->toDateTimeString();
		$id			= Auth::id();
		$package 	= array(
			'u_lastlogin' => $date
		);
		DB::table('users')->where('id',$id)->update($package);
		Auth::logout();
		return redirect('/login');
	}
}