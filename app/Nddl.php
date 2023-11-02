<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Nddl extends Model
{
    //
    protected $table = 'nddls';
    public function add($request){
        $this->name = $request->name;
        $this->content = $request->content;
        $this->status = $request->status;
        $this->keyword = $request->keyword;
        $this->save();
    }
    public function edit($request,$id){
        $nddl = $this::where('id',$id)->get()->first();
        $nddl->name = $request->name;
        $nddl->content = $request->content;
        $nddl->status = $request->status;
        $nddl->keyword = $request->keyword;
        $nddl->save();

    }
}
