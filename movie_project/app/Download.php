<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Download extends Model
{
    public function server(){
        return $this->belongsTo(Server::class,"server_id");
    }

    public function episode(){
        return $this->belongsTo(Episode::class,"episode_id");
    }
}
