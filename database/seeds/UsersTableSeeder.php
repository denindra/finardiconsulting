<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        date_default_timezone_set('Asia/Jakarta');
            $date=Carbon::now()->toDateTimeString();
            $password = 'coba12345';
            $dataseeds =[ array(
                'u_name'        =>'Dirsza',
                'email'         =>'dirszas14@gmail.com',
                'u_phone'       =>"082213201235",
                'password'      =>Hash::make(''.$password.''),
                'u_createdate'  =>$date
            ),
            // array(
            //     'u_name'        =>'testing',
            //     'email'         =>'bandtankk@gmail.com',
            //     'u_phone'       =>"82384432432",
            //     'password'      =>Hash::make(''.$password.''),
            //     'u_createdate'  =>$date
            // )
        ];
            DB::table('users')->insert($dataseeds);
            
    }
}
