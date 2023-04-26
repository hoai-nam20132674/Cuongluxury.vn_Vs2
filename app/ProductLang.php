<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductLang extends Model
{
    //
    protected $table = 'product_langs';
    public function product(){
        return $this->belongsTo('App\Product');
    }
}
