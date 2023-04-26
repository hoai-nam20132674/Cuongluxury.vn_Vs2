<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use App\BCID;
use App\BlogLang;
use Image;

class Blog extends Model
{
    //
    protected $table = 'blogs';
    public function langs(){
        return $this->hasMany('App\BlogLang');
    }
    public function user(){
        return $this->belongsTo('App\User');
    }
    public function categories(){
        return $this->belongsToMany('App\BlogCate','bcids','blog_id','cate_id');
    }
    public function add($request){
    	$this->name = $request->name;
    	$this->title = $request->title;
    	$this->seo_keyword = $request->seo_keyword;
    	$this->seo_description = $request->seo_description;
    	$this->url = $request->url;
    	$this->content = $request->content;
    	$this->user_id = Auth::user()->id;
    	$this->display = $request->display;
        $this->short_description = $request->short_description;
        if(isset($request->lang)){
            $this->lang=$request->lang;
        }
        else{
            $this->lang='vi';
        }
    	$file_name = $request->file('avata')->getClientOriginalName();
		$this->avata = $file_name;
    	$path = public_path('uploads/images/blogs/' . $file_name);
        ini_set('memory_limit','512M');
        Image::make($request->file('avata'))->resize(600, null, function ($constraint) {
            $constraint->aspectRatio();
        })->save($path);
    	$this->save();
        $url = $request->url.'-bi'.$this->id;
        $this->url = $url;
        $this->save();
        if($request->blog_id == null){
            }
        else{
            $blog_lang = new BlogLang;
            $blog_lang->blog_id = $request->blog_id;
            $blog_lang->blog_lang_id = $this->id;
            $blog_lang->lang = $request->lang;
            $blog_lang->save();
        }
        
    	$categories = $request->categories;
        if(isset($categories)){
        	$count = count($categories);
        	for($j=0;$j<$count;$j++){
                $bcid = new BCID;
                $bcid->blog_id = $this->id;
                $bcid->cate_id = $categories[$j];
                $bcid->save();
            }
        }

    }
    public function edit($request,$id){
        $blog = $this::where('id',$id)->get()->first();
        $blog->name = $request->name;
        $blog->title = $request->title;
        $blog->seo_keyword = $request->seo_keyword;
        $blog->seo_description = $request->seo_description;
        $url = $request->url.'-bi'.$blog->id;
        $blog->url = $url;
        $blog->content = $request->content;
        $blog->user_id = Auth::user()->id;
        $blog->display = $request->display;
        $blog->short_description = $request->short_description;
        if($request->hasFile('avata')){ 
            $file_name = $request->file('avata')->getClientOriginalName();
            $blog->avata = $file_name;
            $path = public_path('uploads/images/blogs/' . $file_name);
            ini_set('memory_limit','512M');
            Image::make($request->file('avata'))->resize(600, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save($path);
        }
        $blog->save();
        $categories = $request->categories;
        if(isset($categories)){
            $count = count($categories);
            $itemDeletes = BCID::where('blog_id',$id)->whereNotIn('cate_id',$categories)->get();
            foreach($itemDeletes as $itemDelete){
                $itemDelete->delete();
            }
            for($j=0;$j<$count;$j++){
                $item = BCID::where('cate_id',$categories[$j])->where('blog_id',$id)->get();
                if(count($item)==0){
                    $bcid = new BCID;
                    $bcid->blog_id = $id;
                    $bcid->cate_id = $categories[$j];
                    $bcid->save();
                }
                
            }
        }

    }
}
