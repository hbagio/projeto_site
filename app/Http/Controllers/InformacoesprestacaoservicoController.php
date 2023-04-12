<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\informacoesprestacaoservico;
use App\Models\Informacao;

class InformacoesprestacaoservicoController extends Controller
{
    public function showDadosEmpresaServico($idempresa)
    {
        $temRegistros = \DB::select('select count(1) as total from informacoesprestacaoservicos');

        $dadosEmpresaPrestacaoServico = \DB::table('informacoesprestacaoservicos')
            ->join('informacoes', 'informacoes.id', '=', 'informacoesprestacaoservicos.idempresa')
            ->where('informacoesprestacaoservicos.idempresa', '=', [$idempresa])
            ->select('informacoesprestacaoservicos.*', 'informacoes.nomeempresa', 'informacoes.cnpj')
            ->get();

        if ($temRegistros[0]->total > 0) {

            return view('/events/dadosEmpresaServico', ['dadosEmpresaPrestacaoServico' => $dadosEmpresaPrestacaoServico]);
        } else {
            $dadosEmpresa = Informacao::findOrFail($idempresa);
            return view('/events/cadastrarDadosEmpresaServico', ['dadosEmpresa' => $dadosEmpresa]);
        }
    }

    public function cadastrarDadosEmpresaServico($idempresa)
    {

        $dadosEmpresa = Informacao::findOrFail($idempresa);
        return view('/events/cadastrarDadosEmpresaServico', ['dadosEmpresa' => $dadosEmpresa]);
    }

    public function store(Request $request)
    {

        $dadosEmpresaPrestacaoServico = new informacoesprestacaoservico;

        $dadosEmpresaPrestacaoServico->cnae = $request->cnae;
        $dadosEmpresaPrestacaoServico->listaservico = $request->listaservico;
        $dadosEmpresaPrestacaoServico->aliquota = $request->aliquota;
        $dadosEmpresaPrestacaoServico->idempresa = $request->idempresa;
        $dadosEmpresaPrestacaoServico->save();

        return redirect()->route('gerenciamento.empresa.servico', [$request->idempresa]);
    }

    public function destroy($id, $idempresa)
    {
        $informacoesprestacaoservico = informacoesprestacaoservico::findOrFail($id)->delete();

        return redirect()->back();

    }
}
