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

    public function category(){
        return $this->belongsTo(Category::class,"category_id");
    }

    public function quality(){
        return $this->belongsTo(Quality::class,"quality_id");
    }

    public function user(){
        return $this->belongsTo(User::class,"user_id");
    }

    public function genre(){
        return $this->belongsToMany(Genre::class,PostGenre::class,"post_id","genre_id");
    }
}
