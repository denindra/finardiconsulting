<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Carbon\Carbon;
class LoginController extends Controller
{
    public function loginCheck(Request $request)
    {
        $datalogin = array(
            'email'     => $request->email, 
            'password'  => $request->password
        );
        $requestlogin   = Auth::attempt($datalogin);
        
        if($requestlogin == true){
            $date       = Carbon::now()->toDateTimeString();
            // $request->validate([
            //     'email'     =>$request->email,
            //     'password'  =>$request->password,
            // ]);
            $datauser   = array(
                'u_lastlogin' =>$date
            );
            DB::table('users')->where('id', Auth::id())
                              ->update($datauser);
            $message    = 'terimakasih anda telah login';
        } else {
            $message    = 'maaf anda memasukan email atau password salah';
            }
        $package        = array(    
            'message'   => $message,
        );
        $data           = array(
            'data'      => $package,
            'status'    => $requestlogin   
        );
        return $data;
        
    }
}