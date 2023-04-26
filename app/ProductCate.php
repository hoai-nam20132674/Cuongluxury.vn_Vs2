<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Image;
use App\ProductCategorieLang;
use Illuminate\Support\Str;

class ProductCate extends Model
{
    //
    protected $table = 'product_cates';
    public function products(){
        return $this->belongsToMany('App\Product','pcids','cate_id','product_id');
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
		$this->avata = $file_name;
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
        

    }
    public function edit($request,$id){
    	$cate = $this::where('id',$id)->get()->first();
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
    	$cate->save();
    }
}
