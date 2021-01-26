<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    public function episode(){
        return $this->hasMany(Episode::class,"post_id");
    }

    public function moviePhoto(){
        return $this->hasMany(Photo::class,"post_id");
    }
}
