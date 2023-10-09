<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    //
    protected $table = 'payments';
    public function add($request){
        $this->title = $request->title;
        $this->content = $request->content;
        $this->status = $request->status;
        $this->save();
    }
    public function edit($request,$id){
        $page = $this::where('id',$id)->get()->first();
        $page->title = $request->title;
        $page->content = $request->content;
        $page->status = $request->status;
        $page->save();

    }
}
