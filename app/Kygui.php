<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\KyguiImage;
use Image;
use Mail;
use App\Kygui;

class Kygui extends Model
{
    //
    protected $table = 'kyguis';
    public function images(){
        return $this->hasMany('App\KyguiImage');
    }
    public function add($request){
        $this->lkg = $request->lkg;
        $this->lbds = $request->lbds;
        $this->name = $request->name;
        $this->email = $request->email;
        $this->phone = $request->phone;
        if(isset($request->price)){
            $this->price = preg_replace( '/\D/', '', $request->price);
        }
        $this->da = $request->da;
        $this->tbds = $request->tbds;
        $this->dt = $request->dt;
        $this->mt = $request->mt;
        $this->nt = $request->nt;
        $this->th = $request->th;
        $this->pn = $request->pn;
        $this->vs = $request->vs;
        $this->st = $request->st;
        $this->tiente = $request->tiente;
        $this->huong = $request->huong;
        $this->content = $request->content;
        $this->video = $request->video;
        if(isset($request->tulanh)){
            $this->tulanh = $request->tulanh;
        }
        if(isset($request->bontam)){
            $this->bontam = $request->bontam;
        }
        if(isset($request->wifi)){
            $this->wifi = $request->wifi;
        }
        if(isset($request->baove)){
            $this->baove = $request->baove;
        }
        if(isset($request->binhnonglanh)){
            $this->binhnonglanh = $request->binhnonglanh;
        }
        if(isset($request->beboi)){
            $this->beboi = $request->beboi;
        }
        if(isset($request->bancongsanthuong)){
            $this->bancongsanthuong = $request->bancongsanthuong;
        }
        if(isset($request->gym)){
            $this->gym = $request->gym;
        }
        if(isset($request->banghephongan)){
            $this->banghephongan = $request->banghephongan;
        }
        if(isset($request->banghephongkhach)){
            $this->banghephongkhach = $request->banghephongkhach;
        }
        if(isset($request->chodexemay)){
            $this->chodexemay = $request->chodexemay;
        }
        if(isset($request->chodeoto)){
            $this->chodeoto = $request->chodeoto;
        }
        $this->save();
        if($request->hasFile('images')){
            foreach($request->file('images') as $file){
                if(isset($file)){
                    $file_name = $file->getClientOriginalName();
                    if(strlen($file_name) >= 180){
                        $file_name = substr($file_name,0,170);
                    }
                    $file_type = $file->getClientOriginalExtension();
                    if($file_type == 'jpg' || $file_type == 'png' || $file_type == 'jpeg' || $file_type == 'gif'){
                        $image = new KyguiImage;
                        $image->url = $file_name.'.jpg';
                        $image->kygui_id = $this->id;
                        $image->save();
                        $path = public_path('uploads/images/kyguis/' . $file_name . '.jpg');
                        // Image::make($file)->save($path);
                        ini_set('memory_limit','512M');
                        Image::make($file)->resize(1000, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->save($path,100)->destroy();
                    }
                    
                }
            }
        }
        $kygui = Kygui::where('id',$this->id)->with('images')->get()->first();
        Mail::send('mailkg', array('name'=>$request["name"],'email'=>$request["email"], 'phone'=>$request['phone'],'lkg'=>$request['lkg'],'request'=>$request,'kygui'=>$kygui), function($message){
            $message->to('kkumhouse.mkt@gmail.com', 'kkumhouse')->subject('Ký gửi bất động sản');
        });
        $email = $request->email;
        Mail::send('mailcf', array('name'=>$request["name"]), function($message) use ($email){
            $message->to($email, 'kkumhouse')->subject('Cảm ơn quý khách');
        });
    }
}
