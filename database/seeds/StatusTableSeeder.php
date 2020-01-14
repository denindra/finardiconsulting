<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class StatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataseed=[
            array('sts_idstatus'=>1 ,'sts_status_name'=>'online'),
            array('sts_idstatus'=>2 , 'sts_status_name'=>'offline'),
            array('sts_idstatus'=>3 , 'sts_status_name'=> 'deleted')
        ];
        DB::table('status')->insert($dataseed);
    }
}
