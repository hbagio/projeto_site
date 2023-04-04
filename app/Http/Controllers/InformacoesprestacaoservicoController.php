<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\informacoesprestacaoservico;

class InformacoesprestacaoservicoController extends Controller
{
    public function showDadosEmpresaServico(){
        $dadosEmpresaPrestacaoServico = \DB::table('informacoesprestacaoservicos')
        ->select('*')
        ->join('informacoes','informacoes.id','=' ,'informacoesprestacaoservicos.idempresa')
        ->get();
        return view('/events/dadosEmpresaServico',['dadosEmpresaPrestacaoServico' => $dadosEmpresaPrestacaoServico]);
    }

    public function cadastrarDadosEmpresaServico(){
        return view('/events/cadastrarDadosEmpresaServico');
    }

    public function store(Request $request){

        $dadosEmpresaPrestacaoServico = New informacoesprestacaoservico();
        $dadosEmpresaPrestacaoServico->cnae = $request->cnae;
        $dadosEmpresaPrestacaoServico->listaservico = $request->listaservico;
        $dadosEmpresaPrestacaoServico->aliquota = $request->aliquota;


    }
}
