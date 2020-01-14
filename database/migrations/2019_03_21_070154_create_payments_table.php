<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePaymentsTable extends Migration
{
    /**
     * Schema table name to migrate
     * @var string
     */
    public $tableName = 'payments';

    /**
     * Run the migrations.
     * @table payments
     *
     * @return void
     */
    public function up()
    {
        Schema::create($this->tableName, function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('pay_idpayments');
            $table->unsignedInteger('pay_users_id_users');
            $table->unsignedInteger('pay_store_id_store');
            $table->string('pay_name_package', 45)->nullable();
            $table->string('pay_price_package', 45)->nullable();
            $table->timestamp('pay_order_date')->nullable();
            $table->text('transaction_id')->nullable();
            $table->unsignedInteger('pay_status_payments_idstatus');

            $table->index(["pay_store_id_store"], 'fk_payments_store1_idx');

            $table->index(["pay_users_id_users"], 'fk_payments_users1_idx');

            $table->index(["pay_status_payments_idstatus"], 'fk_payments_status_payments1_idx');


            $table->foreign('pay_users_id_users', 'fk_payments_users1_idx')
                ->references('id')->on('users')
                ->onDelete('no action')
                ->onUpdate('no action');

            $table->foreign('pay_store_id_store', 'fk_payments_store1_idx')
                ->references('st_id_store')->on('store')
                ->onDelete('no action')
                ->onUpdate('no action');

            $table->foreign('pay_status_payments_idstatus', 'fk_payments_status_payments1_idx')
                ->references('status_pay_idstatuspay')->on('status_payments')
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