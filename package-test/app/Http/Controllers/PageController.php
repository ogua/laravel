<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class PageController extends Controller
{
    public function upload(Request $request){
        $file = $request->file('photo');
        $newName = uniqid()."_".$file->getClientOriginalName();
//        $file->storeAs("public/photo",$newName);
        $img = Image::make($file);
        $watermark = Image::make(public_path('logo.png'));
        $watermark->fit(200,200);

        $img->insert($watermark,"bottom-right",20,20);

        $img->save("edited/".$newName);

        $img->fit(100,100);

        $img->save("small/".$newName);
//        return $img->response();

        return redirect()->route('/');
    }
}
