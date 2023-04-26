<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ChatRoom extends Model
{
    //
    protected $table = 'chat_rooms';
    public function users(){
        return $this->belongsToMany('App\User','chat_messages','room_id','user_id');
    }
}
