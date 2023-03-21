<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class InformacoesprestacaoservicoController extends Controller
{
    public function showDadosEmpresaServico(){
        $dadosEmpresaPrestacaoServico = \DB::table('informacoesprestacaoservicos')
        ->select('*')
        ->join('informacoes','informacoes.id','=' ,'informacoesprestacaoservicos.idempresa')
        ->get();
        return view('/events/dadosEmpresaServico',['dadosEmpresaPrestacaoServico' => $dadosEmpresaPrestacaoServico]);
    }
}
