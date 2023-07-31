<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\PropertiesValue;

class Properties extends Model
{
    //
    protected $table = 'properties';

    public function propertie_values(){
        return $this->hasMany('App\PropertiesValue');
    }
    public function categories(){
        return $this->belongsToMany('App\ProductCate','cate_properties','propertie_id','cate_id');
    }
    public function products(){
        return $this->belongsToMany('App\Product','product_properties_variations','propertie_id','product_id');
    }
    public function add($request){
        $this->name = $request->name;
        $this->status = $request->status;
        $this->save();
        if(isset($request->properties)){
            foreach($request->properties as $propertie){
                $newItem = new PropertiesValue;
                $newItem->value = $propertie;
                $newItem->properties_id = $this->id;
                $newItem->save();
            }
        }
    }
    public function edit($request,$id){
        $item = $this::where('id',$id)->with('propertie_values')->get()->first();
        $item->name = $request->name;
        $item->status = $request->status;
        $item->save();
        if(count($item->propertie_values)){
            foreach($item->propertie_values as $val){
                $key = 'properties-'.$val->id;
                $val->value = $request->$key;
                $val->save();
            }
        }
        if(isset($request->properties)){
            foreach($request->properties as $propertie){
                $newItem = new PropertiesValue;
                $newItem->value = $propertie;
                $newItem->properties_id = $item->id;
                $newItem->save();
            }
        }
    }
}
