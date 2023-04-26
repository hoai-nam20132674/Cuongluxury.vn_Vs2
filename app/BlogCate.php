<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Input;
use Image;
use App\BlogCategorieLang;

class BlogCate extends Model
{
    //
    protected $table = 'blog_cates';
    public function langs(){
        return $this->hasMany('App\BlogCategorieLang');
    }
    public function blogs(){
        return $this->belongsToMany('App\Blog','bcids','cate_id','blog_id');
    }
    public function add($request){
    	$this->name = $request->name;
    	$this->title = $request->title;
    	$this->seo_keyword = $request->seo_keyword;
    	$this->seo_description = $request->seo_description;
    	$this->url = $request->url;
    	$this->parent_id = $request->parent_id;
    	$this->display = $request->display;
        if(isset($request->lang)){
            $this->lang=$request->lang;
        }
        else{
            $this->lang='vi';
        }
    	$file_name = $request->file('avata')->getClientOriginalName();
		$this->avata = $file_name;
    	$path = public_path('uploads/images/blogs/categories/' . $file_name);
        Image::make($request->file('avata'))->resize(100, null, function ($constraint) {
            $constraint->aspectRatio();
        })->save($path);
    	$this->save();
        $url = $request->url.'-bc'.$this->id;
        $this->url = $url;
        $this->save();
        if($request->blog_cate_id == null){
            

        }
        else{
            $blog_cate_lang = new BlogCategorieLang;
            $blog_cate_lang->blog_cate_id = $request->blog_cate_id;
            $blog_cate_lang->blog_cate_lang_id = $this->id;
            $blog_cate_lang->lang = $request->lang;
            $blog_cate_lang->save();
        }

    }
    public function edit($request,$id){
    	$cate = $this::where('id',$id)->get()->first();
    	$cate->name = $request->name;
    	$cate->title = $request->title;
    	$cate->seo_keyword = $request->seo_keyword;
    	$cate->seo_description = $request->seo_description;
        $url = $request->url.'-bc'.$cate->id;
    	$cate->url = $url;
    	$cate->parent_id = $request->parent_id;
    	$cate->display = $request->display;
    	if($request->hasFile('avata')){ 
            $file_name = $request->file('avata')->getClientOriginalName();
            $cate->avata = $file_name;
            $path = public_path('uploads/images/blogs/categories/' . $file_name);
            Image::make($request->file('avata'))->resize(100, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save($path);
        }  	
    	$cate->save();
    }
}
