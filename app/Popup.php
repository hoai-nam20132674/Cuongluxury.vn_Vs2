<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Image;

class Popup extends Model
{
    //
    protected $table = 'popups';
    public function add($request){
        $this->href = $request->href;
        $this->display = $request->display;
        $this->target = $request->target;
        $file_name = $request->file('images')->getClientOriginalName();
        $this->url = $file_name;
        // $request->file('avata')->move('public/uploads/images/products/avatas/',$file_name);
        // $request->file('images')->move('public/uploads/images/popups/',$file_name);
        $path = public_path('uploads/images/popups/' . $file_name);
        ini_set('memory_limit','512M');
        Image::make($request->file('images'))->save($path);
        $this->save();
    }
    public function edit($request, $id){
        $popup = $this::where('id',$id)->get()->first();
        $popup->href = $request->href;
        $popup->display = $request->display;
        $popup->target = $request->target;
        if($request->hasFile('images')){ 
            $file_name = $request->file('images')->getClientOriginalName();
            $popup->url = $file_name;
            // $request->file('avata')->move('public/uploads/images/products/avatas/',$file_name);
            // $request->file('images')->move('public/uploads/images/popups/',$file_name);
            $path = public_path('uploads/images/popups/' . $file_name);
            ini_set('memory_limit','512M');
            Image::make($request->file('images'))->save($path);
        }
        $popup->save();
    }
}
