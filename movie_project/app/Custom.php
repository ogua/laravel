<?php


namespace App;


class Custom
{
    public static $info =  [

        "name" => "Free Movie",
        "short_name" => "Free Move",
        "type" => "web app",
        "phone" => "",
        "address" =>"",
        "meta-img" => "f/img/meta.jpg",
        "mms-logo" => "dashboard/images/mms-logo.jpg",
        "c-logo" => "dashboard/images/logo.jpg",
        "main_css" => "dashboard/css/bootstrap.min.css",
    ];

    public static function makeSlug($x){
        $slug=preg_replace('/[^A-Za-z0-9-]+/', '-', $x);
        return trim($slug,"-");
    }

    public static function makeExcerpt($x,$end=100){

        $txt = strip_tags($x);
        if(strlen($txt)>$end){
            $txt = mb_substr($txt,0,$end,"UTF-8")." ...";
        }

        return $txt;
    }
}
