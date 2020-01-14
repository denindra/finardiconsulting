<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'users';

    /**
     * Run the migrations.
     * @table users
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->string('u_name', 45)->nullable();
            $table->string('u_phone', 45)->nullable();
            $table->string('email', 45)->nullable();
            $table->text('password')->nullable();
            $table->dateTime('u_createdate')->nullable();
            $table->dateTime('u_lastlogin')->nullable();
            $table->dateTime('u_lastupdate')->nullable();
            $table->string('u_status', 45)->nullable();
            $table->text('remember_token')->nullable();

            $table->unique(["u_phone"], 'u_phone_UNIQUE');

            $table->unique(["email"], 'email_UNIQUE');
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