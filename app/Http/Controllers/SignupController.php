<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Mail;
use App\Mail\ThankyouRegister;

class SignupController extends Controller
{
    public function postSignup(Request $request)
    {
        $date=Carbon::now()->toDateTimeString();
        $validationdata    = array(
            'u_name'    =>'required',
            'email'     =>'required|email|unique:users,email,NULL',
            'u_phone'   =>'required|numeric|unique:users,u_phone,NULL',
            'password'  =>'required|min:8|confirmed'
        );
        $validationmessage = array(
            'u_name.required'     =>"Name field is required",
            'email.required'      =>'Email field is required',
            'email.email'         =>'Email field must be email',
            'u_phone.required'    =>'Phone field is required',
            'u_phone.numeric'     =>'Phone field must be number',
            'u_phone.unique'      =>'Phone has already been taken',
            'password.required'   =>'Password field is required',
            'password.min'        =>'Password must be filled 6 characters',
            'password.confirmed'  =>'Re-Password does not match'
        );
        $request->validate($validationdata,$validationmessage);
        $useremail  = $request->email;
        $username   = $request->u_name;
        $userphone  = $request->u_phone;
        $data = array(
            'u_name'        => $username,
            'email'         => $useremail,
            'u_phone'       => $userphone,
            'password'      => Hash::make(''.$request->password.''),
            'u_createdate'  => $date
        );
        $id=DB::table('users')->insertGetId($data);
        //pass data to E-mail
        $datauser=DB::table('users')->where('id',$id)->first();
        //send E-mail
        Mail::to($useremail)->send(new ThankyouRegister($datauser));
    }
}
