<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\informacoesprestacaoservico;
use App\Models\Informacao;

class InformacoesprestacaoservicoController extends Controller
{
    public function showDadosEmpresaServico($id){
      
        $dadosEmpresaPrestacaoServico = \DB::table('informacoesprestacaoservicos')
        ->select('*')
        ->join('informacoes','informacoes.id','=' ,'informacoesprestacaoservicos.idempresa')
        ->where('informacoesprestacaoservicos.idempresa','=', [$id])
        ->get();

        $dadosEmpresa = Informacao::findOrFail($id);

        return view('/events/dadosEmpresaServico',['dadosEmpresaPrestacaoServico' => $dadosEmpresaPrestacaoServico , 'dadosEmpresa' => $dadosEmpresa]);
    }

    public function cadastrarDadosEmpresaServico(){
        return view('/events/cadastrarDadosEmpresaServico');
    }

    public function store(Request $request){

        $dadosEmpresaPrestacaoServico = New informacoesprestacaoservico();

        $dadosEmpresaPrestacaoServico->cnae = $request->cnae;
        $dadosEmpresaPrestacaoServico->listaservico = $request->listaservico;
        $dadosEmpresaPrestacaoServico->aliquota = $request->aliquota;

        $dadosEmpresaPrestacaoServico->save();


    }
}
