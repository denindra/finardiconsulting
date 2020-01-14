<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStatusUserTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'status_user';

    /**
     * Run the migrations.
     * @table status_user
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('su_idstatus');
            $table->string('su_statusname', 45)->nullable();
            $table->string('su_description', 45)->nullable();
            $table->unsignedInteger('su_users_id_users');

            $table->index(["su_users_id_users"], 'fk_status_user_users1_idx');


            $table->foreign('su_users_id_users', 'fk_status_user_users1_idx')
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