<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\PageLang;
use Image;

class Page extends Model
{
    //
    protected $table = 'pages';
    public function langs(){
        return $this->hasMany('App\PageLang');
    }
    public function add($request){
        $this->name = $request->name;
        $this->title = $request->title;
        $this->seo_keyword = $request->seo_keyword;
        $this->seo_description = $request->seo_description;
        $this->url = $request->url;
        $this->content = $request->content;
        $this->display = $request->display;
        if(isset($request->lang)){
            $this->lang=$request->lang;
        }
        else{
            $this->lang='vi';
        }
        $file_name = $request->file('avata')->getClientOriginalName();
        $this->avata = $file_name;
        $path = public_path('uploads/images/pages/' . $file_name);
        ini_set('memory_limit','512M');
        Image::make($request->file('avata'))->resize(600, null, function ($constraint) {
            $constraint->aspectRatio();
        })->save($path,100);
        $this->save();
        $url = $request->url.'-pa'.$this->id;
        $this->url = $url;
        $this->save();
        if($request->page_id == null){
            }
        else{
            $page_lang = new PageLang;
            $page_lang->page_id = $request->page_id;
            $page_lang->page_lang_id = $this->id;
            $page_lang->lang = $request->lang;
            $page_lang->save();
        }
        

    }
    public function edit($request,$id){
        $page = $this::where('id',$id)->get()->first();
        $page->name = $request->name;
        $page->title = $request->title;
        $page->seo_keyword = $request->seo_keyword;
        $page->seo_description = $request->seo_description;
        $url = $request->url.'-pa'.$page->id;
        $page->url = $url;
        $page->content = $request->content;
        $page->display = $request->display;
        if($request->hasFile('avata')){ 
            $file_name = $request->file('avata')->getClientOriginalName();
            $page->avata = $file_name;
            $path = public_path('uploads/images/pages/' . $file_name);
            ini_set('memory_limit','512M');
            Image::make($request->file('avata'))->resize(600, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save($path,100);
        }
        $page->save();

    }
}
