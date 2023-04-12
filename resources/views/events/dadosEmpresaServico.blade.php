@section('title', 'Fazendo Festa | Categoria')
@extends('layouts.main')
@section('content')
    <section class="galeria">
        <div class="container">
            <h1 class="titulo_grande cor_escuro_50">Dados de Prestação de Serviço</h1><br>
            @csrf
            <div class="container_campo col_12">
                <label class="campo_label col_4">Id Empresa</label>
                <div class="campo">
                    <input type="text" name="idempresa" id='idempresa'
                        value="{{ $dadosEmpresaPrestacaoServico[0]->idempresa }}" placeholder="Razão Social da empresa"
                        required readonly>
                </div>
            </div>
            <br>
            <div class="container_campo col_12">
                <label class="campo_label col_4">CNPJ</label>
                <div class="campo">
                    <input type="text" name="cnpj" value="{{ $dadosEmpresaPrestacaoServico[0]->cnpj }}"
                        placeholder="Número do Cnpj" required readonly>
                </div>
            </div>
            <br>
            <div class="container_campo col_12">
                <label class="campo_label col_4">Razão Social</label>
                <div class="campo">
                    <input type="text" name="nomeempresa" id='nomeempresa'
                        value="{{ $dadosEmpresaPrestacaoServico[0]->nomeempresa }}" placeholder="Razão Social da empresa"
                        required readonly>
                </div>
            </div>
            <br>
            <div class="flex_row col_12">
                <a class="card_acao col_6"
                    href="/events/cadastrarDadosEmpresaServico/{{ $dadosEmpresaPrestacaoServico[0]->idempresa }}">Cadastrar
                </a>
                <a class="card_acao muted col_6" href="/events/dadosEmpresa" style="margin-left:5px">Voltar</a>
            </div>
            <div class="card flex_col">
                <br>
                <table class="lista_consulta">
                    <tr>
                        <th class="lista_consulta_cabecalho">Cnae</th>
                        <th class="lista_consulta_cabecalho">Item Lista de Serviços</th>
                        <th class="lista_consulta_cabecalho">Aliquota</th>
                        <th class="lista_consulta_cabecalho">Ações</th>
                    </tr>
                    @foreach ($dadosEmpresaPrestacaoServico as $dadoEmpresaPrestacaoServico)
                        <tr>
                            <td>{{ $dadoEmpresaPrestacaoServico->cnae }}</td>
                            <td>{{ $dadoEmpresaPrestacaoServico->listaservico }}</td>
                            <td>{{ $dadoEmpresaPrestacaoServico->aliquota }}</td>
                            <td>
                                <div class="flex_col">
                                    <a class="lista_consulta_acao excluir"
                                        href="/events/cadastrarDadosEmpresaServico/delete/{{ $dadoEmpresaPrestacaoServico->id }}/{{ $dadoEmpresaPrestacaoServico->idempresa }}">Excluir
                                        <i class="fa-solid fa-trash"></i></a>
                                </div>
                            </td>
                        </tr>
                    @endforeach
                </table>
            </div>
        </div>
    </section>
@endsection
