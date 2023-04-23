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
            $table->smallInteger('cidcodigoprestacao');
            $table->smallInteger('cidcodigoincidencia');
            $table->integer('listaservico');
            $table->float('valorservico',15,2);
            $table->float('aliquota',3,2);
            $table->date('nfedataemissao');
            $table->date('nfedatafatogerador');
            $table->string('nfeidentificador',50);
            $table->smallInteger('nfesituacao');
            $table->smallInteger('situacaotributaria');
            $table->string('descricaoservico');
            $table->float('valordeducao',15,2);
            $table->float('valordesconto',15,2);
            $table->float('valorir',15,2);
            $table->float('valorpis',15,2);
            $table->float('valorcofins',15,2);
            $table->float('valorinss',15,2);
            $table->float('valorcontribsocial',15,2);
            $table->float('valoroutrasretencoes',15,2);
            $table->text('outrasinformacoes');
            $table->foreign('idempresa')->references('id')->on('informacoes');
            $table->foreign('idtomador')->references('id')->on('pessoas');
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
