@section('title', 'Fazendo Festa | Categoria')
@extends('layouts.main')
@section('content')
<section class="galeria">
    <div class="container">
        <h1 class="titulo_grande cor_escuro_50">Dados de Prestação de Serviço</h1><br>
        <div class="flex_row col_12">
            <a class="card_acao col_6" href="/events/cadastrarDadosEmpresaServico">Cadastrar </a>
            <a class="card_acao muted col_6"  href="/events/dadosEmpresa" style="margin-right:5px">Voltar</a>

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
                            <a class="lista_consulta_acao editar" href="/events/alterarCategoria/{{ $dadoEmpresaPrestacaoServico->id }}">Editar <i class="fa-solid fa-pen-to-square"></i></a>
                            <a class="lista_consulta_acao excluir" href="/events/excluirCategoria/{{ $dadoEmpresaPrestacaoServico->id }}">Excluir <i class="fa-solid fa-trash"></i></a>
                        </div>
                    </td>
                </tr>
                @endforeach
            </table>
        

        </div>
    </div>
</section>
@endsection