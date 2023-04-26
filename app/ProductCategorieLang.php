<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductCategorieLang extends Model
{
    //
    protected $table = 'product_categorie_langs';
    public function cate(){
        return $this->belongsTo('App\ProductCate');
    }
}
