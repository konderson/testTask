<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class IndexController extends Controller
{
    public function  index(){
        $content=DB::table('mainpage')->first();

        return view ('index',compact('content'));
    }
}
