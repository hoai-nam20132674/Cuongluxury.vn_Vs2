<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PropertiesValue extends Model
{
    //
    protected $table = 'properties_values';
    public function propertie(){
        return $this->belongsTo('App\Properties');
    }
    public function products_filter(){
        return $this->belongsToMany('App\Product','product_properties_value_filters','propertie_value_id','product_id');
    }
    public function products_variation(){
        return $this->belongsToMany('App\ProductVariations','pro_var_pro_val','propertie_value_id','pro_var_id');
    }
}
