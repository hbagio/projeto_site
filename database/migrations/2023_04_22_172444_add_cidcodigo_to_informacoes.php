<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('informacoes', function (Blueprint $table) {
            $table->integer('cidcodigoibge');
            $table->integer('cidcodigoreceitafederal');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('informacoes', function (Blueprint $table) {
            $table->dropColumn('cidcodigoibge');
            $table->dropColumn('cidcodigoreceitafederal');
        });
    }
};
