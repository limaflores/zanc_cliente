<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    //Administrador do sistema.
    public function __construct(){
        $this->middleware('auth:admin');
    }

    public function index(){
        return view('admin');
    }
}
