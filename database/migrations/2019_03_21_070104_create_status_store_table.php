<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStatusStoreTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'status_store';

    /**
     * Run the migrations.
     * @table status_store
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('ss_idstatus');
            $table->string('ss_statusstore', 45)->nullable();
            $table->string('ss_description', 45)->nullable();
            $table->unsignedInteger('ss_store_id_store');

            $table->index(["ss_store_id_store"], 'fk_status_store_store1_idx');


            $table->foreign('ss_store_id_store', 'fk_status_store_store1_idx')
                ->references('st_id_store')->on('store')
                ->onDelete('no action')
                ->onUpdate('no action');
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