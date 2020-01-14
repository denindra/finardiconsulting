<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStoreTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'store';

    /**
     * Run the migrations.
     * @table store
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('st_id_store');
            $table->string('st_name_store', 45)->nullable();
            $table->string('st_email', 45)->nullable();
            $table->text('st_password')->nullable();
            $table->string('st_logo', 45)->nullable();
            $table->string('st_dbhost', 45)->nullable();
            $table->string('st_dbusername', 45)->nullable();
            $table->string('st_dbpassword', 45)->nullable();
            $table->string('st_dbname', 45)->nullable();
            $table->string('st_name_domain', 45)->nullable();
            $table->string('st_status', 45)->nullable();
            $table->unsignedInteger('st_status_sts_idstatus');
            $table->unsignedInteger('st_users_id');

            $table->index(["st_users_id"], 'fk_store_users1_idx');

            $table->index(["st_status_sts_idstatus"], 'fk_store_status1_idx');


            $table->foreign('st_status_sts_idstatus', 'fk_store_status1_idx')
                ->references('sts_idstatus')->on('status')
                ->onDelete('no action')
                ->onUpdate('no action');

            $table->foreign('st_users_id', 'fk_store_users1_idx')
                ->references('id')->on('users')
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