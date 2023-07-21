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
}
