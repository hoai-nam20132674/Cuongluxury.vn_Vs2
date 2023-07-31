<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductVariations extends Model
{
    //
    protected $table = 'product_variations';
    public function product(){
        return $this->belongsTo('App\Product');
    }
    public function properties_value(){
        return $this->belongsToMany('App\PropertiesValue','pro_var_pro_val','pro_var_id','propertie_value_id');
    }
}
