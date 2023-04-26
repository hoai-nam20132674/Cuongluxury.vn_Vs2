<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Mail;

class Yeucau extends Model
{
    //
    protected $table = 'yeucaus';
    public function add($request){
        $this->lyc = $request->lyc;
        $this->name = $request->name;
        $this->email = $request->email;
        $this->phone = $request->phone;
        $this->price = $request->price;
        $this->da = $request->da;
        $this->lbds = $request->lbds;
        $this->dt = $request->dt;
        $this->kv = $request->kv;
        $this->huong = $request->huong;
        $this->message = $request->message;
        $this->save();
        $yeucau = $this;
        Mail::send('mailyc', array('name'=>$request["name"],'email'=>$request["email"], 'phone'=>$request['phone'],'lyc'=>$request['lyc'],'yeucau'=>$yeucau), function($message){
            $message->to('kkumhouse.mkt@gmail.com', 'kkumhouse')->subject('Yêu cầu bất động sản');
        });
        $email = $request->email;
        Mail::send('mailcf', array('name'=>$request["name"]), function($message) use ($email){
            $message->to($email, 'kkumhouse')->subject('Cảm ơn quý khách');
        });
    }
}
