<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\tbnotafiscaleletronica;
use Illuminate\Support\Facades\DB;

class TbnotafiscaleletronicaController extends Controller
{
    public function consultaNotaFiscal()
    {

        $notasFiscais = DB::table('tbnotafiscaleletronica')->orderBy('id', 'desc')->simplePaginate(20);

        return view('events.consultaNotaFiscalEletronica', ['notasFiscais' => $notasFiscais]);
    }
}
