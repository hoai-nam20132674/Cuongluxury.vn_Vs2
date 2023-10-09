<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Image;
use App\VCID;
use Carbon\Carbon;
use Validator;
use Illuminate\Support\Str;
class Video extends Model
{
    //
    protected $table = 'videos';
    public function categories(){
        return $this->belongsToMany('App\VideoCate','vcids','video_id','cate_id');
    }
    public function add($request){
        $this->title = $request->title;
        $this->href = $request->href;
        $this->content = $request->content;
        $this->status = $request->status;
        
        $file_name = $request->file('avata')->getClientOriginalName();
        $this->avata = $file_name;
        $path = public_path('uploads/images/videos/' . $file_name);
        ini_set('memory_limit','512M');
        Image::make($request->file('avata'))->resize(600, null, function ($constraint) {
            $constraint->aspectRatio();
        })->save($path);
        $this->save();
        
        
        $categories = $request->categories;
        if(isset($categories)){
            $count = count($categories);
            for($j=0;$j<$count;$j++){
                $vcid = new VCID;
                $vcid->video_id = $this->id;
                $vcid->cate_id = $categories[$j];
                $vcid->save();
            }
        }

    }
    public function edit($request,$id){
        $video = $this::where('id',$id)->get()->first();
        $video->title = $request->title;
        $video->href = $request->href;
        $video->content = $request->content;
        $video->status = $request->status;
        if($request->hasFile('avata')){ 
            $file_name = $request->file('avata')->getClientOriginalName();
            $video->avata = $file_name;
            $path = public_path('uploads/images/videos/' . $file_name);
            ini_set('memory_limit','512M');
            Image::make($request->file('avata'))->resize(600, null, function ($constraint) {
                $constraint->aspectRatio();
            })->save($path);
        }
        $video->save();
        $categories = $request->categories;
        if(isset($categories)){
            $count = count($categories);
            $itemDeletes = VCID::where('video_id',$id)->whereNotIn('cate_id',$categories)->get();
            foreach($itemDeletes as $itemDelete){
                $itemDelete->delete();
            }
            for($j=0;$j<$count;$j++){
                $item = VCID::where('cate_id',$categories[$j])->where('video_id',$id)->get();
                if(count($item)==0){
                    $vcid = new VCID;
                    $vcid->video_id = $id;
                    $vcid->cate_id = $categories[$j];
                    $vcid->save();
                }
                
            }
        }

    }
}
