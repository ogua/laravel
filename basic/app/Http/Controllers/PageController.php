<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PageController extends Controller
{
    public function c($aa){
        return "this is form controller $aa";
    }

    public function detail($id){
        $name = "hein htet zan";
        $age = 26;
        return view("detail",compact('id','name','age'));
    }
}
