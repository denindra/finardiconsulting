<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePackageTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'package';

    /**
     * Run the migrations.
     * @table package
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('pac_idpackage');
            $table->string('pac_name_package', 45)->nullable();
            $table->string('pac_price_package', 45)->nullable();
            $table->text('pac_description_package')->nullable();
            $table->integer('pac_discount_package')->nullable();
            $table->integer('pac_duration')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
     public function down()
     {
       Schema::dropIfExists($this->tableName);
     }
}