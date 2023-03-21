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
        Schema::create('informacoesprestacaoservicos', function (Blueprint $table) {
            $table->id();
            //Precisa ser unsignedBigInteger para chave estrangeira
            $table->unsignedBigInteger('idempresa');
            $table->integer('cnae');
            $table->integer('listaservico');
            $table->float('aliquota');
            $table->foreign('idempresa')->references('id')->on('informacoes');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('informacoesprestacaoservicos');
    }
};
