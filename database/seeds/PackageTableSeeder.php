<?php

use Illuminate\Database\Seeder;

class PackageTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataseed=[
            array('pac_idpackage'=>1 ,'pac_name_package'=>'Free','pac_price_package'=>0),
            array('pac_idpackage'=>2 ,'pac_name_package'=>'Basic','pac_price_package'=>150000),
            array('pac_idpackage'=>3 ,'pac_name_package'=>'Advance','pac_price_package'=>250000)
        ];
        DB::table('package')->insert($dataseed);
    }
}
