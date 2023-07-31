<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Image;
use App\ProductCategorieLang;
use App\CateProperties;
use Illuminate\Support\Str;

class ProductCate extends Model
{
    //
    protected $table = 'product_cates';
    public function products(){
        return $this->belongsToMany('App\Product','pcids','cate_id','product_id');
    }
    public function properties(){
        return $this->belongsToMany('App\Properties','cate_properties','cate_id','propertie_id');
    }
    public function langs(){
        return $this->hasMany('App\ProductCategorieLang');
    }
    public function add($request){
    	$this->name = $request->name;
    	$this->title = $request->title;
    	$this->seo_keyword = $request->seo_keyword;
    	$this->seo_description = $request->seo_description;
    	$this->url = $request->url;
    	$this->parent_id = $request->parent_id;
    	$this->display = $request->display;
    	$file_name = $request->file('avata')->getClientOriginalName();
        $file_name_banner = $request->file('banner')->getClientOriginalName();
		$this->avata = $file_name;
        $this->banner = $file_name_banner;
        if(isset($request->lang)){
            $this->lang=$request->lang;
        }
        else{
            $this->lang='vi';
        }
    	$path = public_path('uploads/images/products/categories/' . $file_name);
        Image::make($request->file('avata'))->resize(400, null, function ($constraint) {
            $constraint->aspectRatio();
        })->save($path);
        $path2 = public_path('uploads/images/products/categories/' . $file_name_banner);
        Image::make($request->file('banner'))->save($path2);
    	$this->save();
        $url = $request->url.'-pc'.$this->id;
        $this->url = $url;
        $this->save();
        if($request->product_cate_id == null){
            

        }
        else{
            $product_cate_lang = new ProductCategorieLang;
            $product_cate_lang->product_cate_id = $request->product_cate_id;
            $product_cate_lang->product_cate_lang_id = $this->id;
            $product_cate_lang->lang = $request->lang;
            $product_cate_lang->save();
        }
        if(isset($request->properties)){
            foreach($request->properties as $propertie){
                $item = new CateProperties;
                $item->propertie_id = $propertie;
                $item->cate_id = $this->id;
                $item->save();
            }
        }
        

    }
    public function edit($request,$id){
    	$cate = $this::where('id',$id)->with('properties')->get()->first();
    	$cate->name = $request->name;
    	$cate->title = $request->title;
    	$cate->seo_keyword = $request->seo_keyword;
    	$cate->seo_description = $request->seo_description;
        $url = $request->url.'-pc'.$cate->id;
    	$cate->url = $url;
    	$cate->parent_id = $request->parent_id;
    	$cate->display = $request->display;
    	if($request->hasFile('avata')){ 
            $file_name = $request->file('avata')->getClientOriginalName();
            $cate->avata = $file_name;
            $path = public_path('uploads/images/products/categories/' . $file_name);
            Image::make($request->file('avata'))->resize(400, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save($path);
        }
        if($request->hasFile('banner')){ 
            $file_name = $request->file('banner')->getClientOriginalName();
            $cate->banner = $file_name;
            $path = public_path('uploads/images/products/categories/' . $file_name);
            Image::make($request->file('banner'))->save($path);
        }  	
    	$cate->save();

        $properties = $request->properties;
        if(empty($properties)){
            $itemDeletes = CateProperties::where('cate_id',$id)->get();
            foreach($itemDeletes as $itemDelete){
                $itemDelete->delete();
            }
        }
        if(isset($properties)){
            $itemDeletes = CateProperties::where('cate_id',$id)->whereNotIn('propertie_id',$properties)->get();
            foreach($itemDeletes as $itemDelete){
                $itemDelete->delete();
            }
            $count = count($properties);
            for($j=0;$j<$count;$j++){
                $item = CateProperties::where('propertie_id',$properties[$j])->where('cate_id',$id)->get();
                if(count($item)==0){
                    $cp = new CateProperties;
                    $cp->cate_id = $id;
                    $cp->propertie_id = $properties[$j];
                    $cp->save();
                }
                
            }
        }
    }
}
