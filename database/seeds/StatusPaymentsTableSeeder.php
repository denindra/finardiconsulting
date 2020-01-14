<?php

use Illuminate\Database\Seeder;

class StatusPaymentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataseed=array(
            array('status_pay_idstatuspay'=>1 ,'status_pay_name'=>'PAID'),
            array('status_pay_idstatuspay'=>2 , 'status_pay_name'=>'UNPAID'),
            array('status_pay_idstatuspay'=>3 , 'status_pay_name'=>'CANCEL'),
            array('status_pay_idstatuspay'=>4 , 'status_pay_name'=>'FREE'),
            array('status_pay_idstatuspay'=>5 , 'status_pay_name'=>'DENY'),
            array('status_pay_idstatuspay'=>6 , 'status_pay_name'=>'EXPIRED'),
            array('status_pay_idstatuspay'=>7 , 'status_pay_name'=>'PENDING')

        );
        DB::table('status_payments')->insert($dataseed);
    }
}
