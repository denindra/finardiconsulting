<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddIdPackageToStoreTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('store', function (Blueprint $table) {
            $table->unsignedInteger('st_package_pac_idpackage');
            $table->index(["st_package_pac_idpackage"], 'fk_store_package1_idx');
            $table->foreign('st_package_pac_idpackage', 'fk_store_package1_idx')
                ->references('pac_idpackage')->on('package')
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
        Schema::table('store', function (Blueprint $table) {
            //
        });
    }
}
