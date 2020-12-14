<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    public function getUsers(){
        return $this->hasMany(User::class,"country_id");
    }
    public function getArticles(){
        return $this->hasManyThrough(Article::class,User::class,"country_id","user_id");
    }
}
