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
            $table->string('bairro');
            $table->string('cidade');
            $table->integer('cep');
            $table->char('estado', 2);
            $table->string('complemento');

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
           $table->dropColumn('bairro');
           $table->dropColumn('cidade');
           $table->dropColumn('cep');
           $table->dropColumn('estado');
           $table->dropColumn('complemento');
        });
    }
};
