@section('title', 'Fazendo Festa | Produto')
@extends('layouts.main')
@section('content')
    <section class="galeria">
        <div class="container">
            <h1 class="titulo_grande cor_escuro_50">Emitir Nota Fiscal</h1><br>
            <div class="card flex_col">
                <div class="flex_row col_12">
                    <a href="/events/consultaNotaFiscal" class="card_acao col_6">Consultar Notas Fiscais</a>
                    <a href="/events/gerenciamento" class="card_acao muted col_6" style="margin-right:5px">Gerenciamento</a>
                </div>
                @csrf
                <br>
                <h3 class="titulo_medio cor_escuro_50">Dodos do Prestador do Serviço</h3>
                <div class="container_campo col_12">
                    <label class="campo_label col_4">CNPJ</label>
                    <div class="campo">
                        <input type="text" name="cnpj" value="{{ $dadosEmpresa->cnpj }}"
                            placeholder="Número do Cnpj" required readonly>
                    </div>
                </div>
                <br>
                <div class="container_campo col_12">
                    <label class="campo_label col_4">Razão Social</label>
                    <div class="campo">
                        <input type="text" name="nomeempresa" id='nomeempresa'
                            value="{{ $dadosEmpresa->nomeempresa }}" placeholder="Razão Social da empresa"
                            required readonly>
                    </div>
                </div>
                <br>
                <h3 class="titulo_medio cor_escuro_50">Dodos do Tomador do Serviço</h3>
                <br>
            </div>
        </div>
        
    </section>
@endsection

