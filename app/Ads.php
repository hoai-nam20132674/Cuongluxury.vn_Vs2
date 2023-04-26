<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Image;

class Ads extends Model
{
    //
    public function add($request){
    	$this->href = $request->href;
    	$this->display = $request->display;
    	$this->target = $request->target;
    	$this->stt = $request->stt;
    	$this->type= $request->type;
    	$file_name = $request->file('images')->getClientOriginalName();
		$this->url = $file_name;
    	$path = public_path('uploads/images/adss/' . $file_name);
    	if($request->type == 3){
    		ini_set('memory_limit','512M');
    		Image::make($request->file('images'))->resize(800, null, function ($constraint) {
	            $constraint->aspectRatio();
	        })->save($path,100)->destroy();
    	}
    	else{
    		ini_set('memory_limit','512M');
    		Image::make($request->file('images'))->resize(1500, null, function ($constraint) {
	            $constraint->aspectRatio();
	        })->save($path,100)->destroy();
    	}
        
    	$this->save();
    }
    public function edit($request, $id){
    	$item = $this::where('id',$id)->get()->first();
    	$item->href = $request->href;
    	$item->display = $request->display;
    	$item->target = $request->target;
    	$item->stt = $request->stt;
    	$item->type = $request->type;
    	if($request->hasFile('images')){ 
	    	$file_name = $request->file('images')->getClientOriginalName();
			$item->url = $file_name;
	    	$path = public_path('uploads/images/adss/' . $file_name);
	        if($request->type == 3){
	        	ini_set('memory_limit','512M');
	    		Image::make($request->file('images'))->resize(800, null, function ($constraint) {
		            $constraint->aspectRatio();
		        })->save($path,100)->destroy();
	    	}
	    	else{
	    		ini_set('memory_limit','512M');
	    		Image::make($request->file('images'))->resize(1500, null, function ($constraint) {
		            $constraint->aspectRatio();
		        })->save($path,100)->destroy();
	    	}
	    }
	    $item->save();
    }
}
