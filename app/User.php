<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Notification;
use Carbon\Carbon;
use Image;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'phone', 'role', 'status',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];



    public function chatRooms(){
        return $this->belongsToMany('App\ChatRoom','chat_messages','user_id','room_id');
    }
    public function products(){
        return $this->hasMany('App\Product');
    }
    public function blogs(){
        return $this->hasMany('App\Blog');
    }
    public function notifications(){
        return $this->hasMany('App\Notification');
    }

    public function add($request){
        if(Auth::user()->role == 1){
            $this->name = $request->name;
            $this->email = $request->email;
            $this->phone = $request->phone;
            $this->role = $request->role;
            $this->status = $request->status;
            $this->password = Hash::make($request->password);
            $this->save();
            return true;
        }
        else{
            return false;
        }
    }
    public function edit($request, $id){
        $user = $this::where('id',$id)->get()->first();
        if(Auth::user()->role == 1 || Auth::user()->id == $user->id){
            
            $user->name = $request->name;
            $user->phone = $request->phone;
            // $user->email = $request->email;
            $user->status = $request->status;
            $user->role = $request->role;
            $user->save();
            return true;
        }
        else{
            return false;
        }
    }
    public function editPassword($request,$id){
        $user = $this::where('id',$id)->get()->first();
        if(Auth::user()->role == 1){
            
            $user->password = Hash::make($request->password);
            $user->save();
            return true;
        }
        else{
            return false;
        }
    }
}
