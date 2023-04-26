<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BlogCategorieLang extends Model
{
    //
    protected $table = 'blog_categorie_langs';
    public function cate(){
        return $this->belongsTo('App\BlogCate');
    }
}
