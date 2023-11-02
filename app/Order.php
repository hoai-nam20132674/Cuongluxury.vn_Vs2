<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cart;
use App\OrderDetail;

class Order extends Model
{
    //
    protected $table = 'orders';
    public function products(){
        return $this->belongsToMany('App\Product','order_details','orders_id','products_id');
    }
    public function add($request,$items){
    	$this->name = $request->order_name;
    	$this->phone = $request->order_phone;
        $this->email = $request->order_email;
    	$this->address = $request->order_address;
    	$this->messages = $request->order_messages;
        $this->payment = $request->order_payment;
    	$this->status = 0;
    	$this->save();
    	foreach($items as $item){
    		$order_detail = new OrderDetail;
    		$order_detail->orders_id = $this->id;
    		$order_detail->products_id = $item->id;
    		$order_detail->status =0;
    		$order_detail->qty = $item->qty;
    		$order_detail->amount = $item->qty*$item->price;
    		$order_detail->save();
    	}
    	
    }
}
