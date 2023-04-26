<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BlogLang extends Model
{
    //
    protected $table = 'blog_langs';
    public function blog(){
        return $this->belongsTo('App\Blog');
    }
}
