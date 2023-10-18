<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Image;
use Illuminate\Support\Str;

class Slider extends Model

{
    //
    protected $table = 'sliders';
    public function add($request){
    	$this->href = $request->href;
    	$this->display = $request->display;
    	$this->target = $request->target;
    	$this->stt = $request->stt;
    	$file_name = $request->file('images')->getClientOriginalName();
    	$random = Str::random(2);
		$this->url = $random.$file_name;
    	$path = public_path('uploads/images/sliders/' .$random. $file_name);
    	ini_set('memory_limit','512M');
        Image::make($request->file('images'))->resize(1900, null, function ($constraint) {
            $constraint->aspectRatio();
        })->save($path,100)->destroy();
    	$this->save();
    }
    public function edit($request, $id){
    	$slider = $this::where('id',$id)->get()->first();
    	$slider->href = $request->href;
    	$slider->display = $request->display;
    	$slider->target = $request->target;
    	$slider->stt = $request->stt;
    	if($request->hasFile('images')){
    		$random = Str::random(2); 
	    	$file_name = $request->file('images')->getClientOriginalName();
			$slider->url = $random.$file_name;
	    	$path = public_path('uploads/images/sliders/' .$random. $file_name);
	    	ini_set('memory_limit','512M');
	        Image::make($request->file('images'))->resize(1900, null, function ($constraint) {
	            $constraint->aspectRatio();
	        })->save($path,100)->destroy();
	    }
	    $slider->save();
    }
}
