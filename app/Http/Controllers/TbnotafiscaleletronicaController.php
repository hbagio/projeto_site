<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\tbnotafiscaleletronica;
use App\Http\Controllers\GerenciamentoController;
use Illuminate\Support\Facades\DB;

class TbnotafiscaleletronicaController extends Controller
{
    public function consultaNotaFiscal()
    {

        $notasFiscais = DB::table('tbnotafiscaleletronica')->orderBy('id', 'desc')->simplePaginate(20);

        return view('events.consultaNotaFiscalEletronica', ['notasFiscais' => $notasFiscais]);
    }

    public function emitirNfse()
    {
        $dadosEmpresa = new GerenciamentoController;

        $retorno = \DB::select('select count(1) as contador from informacoes ');

        if ($retorno[0]->contador >= 1) {
            $dadosEmpresa = $dadosEmpresa->buscaDadosEmpresa();
            return view('events.emitirNfse', ['dadosEmpresa' =>  $dadosEmpresa]);
        }

        return view('events.dadosEmpresa');
    }
}
