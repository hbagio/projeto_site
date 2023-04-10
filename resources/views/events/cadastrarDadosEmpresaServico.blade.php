@section('title', 'Fazendo Festa | Produto')
@extends('layouts.main')
@section('content')
<section class="galeria">
    <div class="container">
        <h1 class="titulo_grande cor_escuro_50">Dados de Prestação de Serviço</h1><br>
        <form class="card flex_col col_12" action="/events/cadastrarDadosEmpresaServico/store" method="POST" enctype="multipart/form-data">
            {{-- Diretiva necessário por segurança, senão não deixar fazer o request --}}
            @csrf

            <div class="container_campo col_10">
                <label class="campo_label col_3">Cnae</label>
                <div class="campo">
                    <input type="number" class="form-control" name="cnae" id="cnae" placeholder="Código Cnae" required>
                </div>
            </div>
            <br>
            <div class="container_campo col_10">
                <label class="campo_label col_3">Lista de Serviço</label>
                <div class="campo">
                    <input type="number" class="form-control" name="listaservico" id="listaservico" placeholder="Código da Lista de Serviço">
                </div>
            </div>
            <br>
            <div class="container_campo col_10">
                <label class="campo_label col_3">Aliquota</label>
                <div class="campo">
                    <input type="number" class="form-control" name="aliquota" id="aliquota" placeholder="Aliquota">
                </div>
            </div>
            <br>
            <input type="submit" class="card_acao col_10" value="Cadastrar"><br>
            <a href="/events/dadosEmpresaServico" class="card_acao muted col_5">Voltar</a>
        </form>
    </div>
</section>
@endsection