<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KyguiImage extends Model
{
    //
    protected $table = 'kygui_images';
    public function kygui(){
        return $this->belongsTo('App\Kygui');
    }
}
