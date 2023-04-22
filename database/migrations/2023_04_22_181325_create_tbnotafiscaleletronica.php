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
        Schema::create('tbnotafiscaleletronica', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->unsignedBigInteger('idempresa');
            $table->unsignedBigInteger('idtomador');
            $table->smallInteger('serie');
            $table->unsignedBigInteger('listaservico');
            $table->float('valorservico');
            $table->string('descricaoservico');



            $table->foreign('idempresa')->references('id')->on('informacoes');
            $table->foreign('idtomador')->references('id')->on('pessoas');
            $table->foreign('listaservico')->references('listaservico')->on('informacoesprestacaoservicos');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbnotafiscaleletronica');
    }
};
