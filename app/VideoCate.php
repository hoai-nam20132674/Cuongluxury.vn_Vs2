<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class VideoCate extends Model
{
    //
    protected $table = 'video_cates';
    public function videos(){
        return $this->belongsToMany('App\Video','vcids','cate_id','video_id');
    }
    public function add($request){
        $this->name = $request->name;
        $this->parent_id = $request->parent_id;
        $this->status = $request->status;
        $this->save();

    }
    public function edit($request,$id){
        $cate = $this::where('id',$id)->get()->first();
        $cate->name = $request->name;
        $cate->parent_id = $request->parent_id;
        $cate->status = $request->status;
           
        $cate->save();
    }
}
