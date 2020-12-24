<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Visitor extends Model
{
    public function getUser(){
        return $this->belongsTo(User::class,"user_id");
    }
}
