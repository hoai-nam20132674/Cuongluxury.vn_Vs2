<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Image;

class System extends Model
{
    //
    protected $table = 'systems';
    public function edit($request){
        $system = $this::where('id',1)->get()->first();
        $system->name = $request->name;
        $system->title = $request->title;
        $system->seo_keyword = $request->seo_keyword;
        $system->seo_description = $request->seo_description;
        $system->website = $request->website;
        $system->facebook = $request->facebook;
        $system->instagram = $request->instagram;
        $system->zalo = $request->zalo;
        $system->youtube = $request->youtube;
        $system->address = $request->address;
        $system->email = $request->email;
        $system->phone = $request->phone;
        $system->mst = $request->mst;
        $system->css = $request->css;
        $system->script = $request->script;
        $system->script_body = $request->script_body;
        if($request->hasFile('shortcut_logo')){ 
            $file_name = $request->file('shortcut_logo')->getClientOriginalName();
            $system->shortcut_logo = $file_name;
            $path = public_path('uploads/images/systems/' . $file_name);
            Image::make($request->file('shortcut_logo'))->save($path);
            
        }
        if($request->hasFile('logo')){ 
            $file_name = $request->file('logo')->getClientOriginalName();
            $system->logo = $file_name;
            $path = public_path('uploads/images/systems/' . $file_name);
            Image::make($request->file('logo'))->save($path);
        }
        if($request->hasFile('popup')){ 
            $file_name = $request->file('popup')->getClientOriginalName();
            $system->popup = $file_name;
            $path = public_path('uploads/images/popup/' . $file_name);
            Image::make($request->file('popup'))->save($path);
        }
        if($request->hasFile('ogimage')){ 
            $file_name = $request->file('ogimage')->getClientOriginalName();
            $system->ogimage = $file_name;
            $path = public_path('uploads/images/ogimage/' . $file_name);
            Image::make($request->file('ogimage'))->save($path);
        }
        $system->save();
        

    }
}
