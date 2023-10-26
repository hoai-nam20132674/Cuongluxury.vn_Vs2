<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Mail;
use App\Mail\NewContact;
class Contact extends Model
{
    //
    protected $table = 'contacts';
    public function add($request){
        $this->name = $request->name;
        $this->email = $request->email;
    	$this->phone = $request->phone;
        $this->message = $request->message;
        if(isset($request->da)){
            $this->da = $request->da;
        }
    	$this->save();
        // Mail::send('mailfb', array('name'=>$request["name"],'email'=>$request["email"], 'phone'=>$request['phone']), function($message){
        //     $message->to('kkumhouse.mkt@gmail.com', 'kkumhouse')->subject('Có yêu cầu hỗ trợ tư vấn mới');
        // });
        // $email = $request->email;
        // Mail::send('mailcf', array('name'=>$request["name"]), function($message) use ($email){
        //     $message->to($email, 'kkumhouse')->subject('Cảm ơn quý khách');
        // });
    }
    
}
