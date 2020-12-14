<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    public function getVisitors(){
        return $this->hasMany(Visitor::class,"article_id");
    }
}
