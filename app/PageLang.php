<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PageLang extends Model
{
    //
    protected $table = 'page_langs';
    public function page(){
        return $this->belongsTo('App\Page');
    }
}
