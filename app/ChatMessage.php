<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use App\ChatRoom;
use Carbon\Carbon;

class ChatMessage extends Model
{
    //
    protected $table = 'chat_messages';
    public function add($request,$room_id){
        $chat_message_auth = $this::where('room_id',$room_id)->where('user_id',Auth::user()->id)->get()->first();
        if(isset($chat_message_auth)){
            $now = Carbon::now()->format('d/m/Y h:i A');
            $chat_message_auth->messages = $chat_message_auth->messages.'<br><div class="chats chats-right"><div class="chat-content"><div class="message-content">'.$request->message.'</div><div class="chat-time"><div><div class="time">'.$now.'<i><img src="https://dreamschat.dreamguystech.com/template/assets/img/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>';
            $chat_message_auth->unread = '';
            $chat_message_auth->save();
            $chat_message_partners = $this::where('room_id',$room_id)->where('id','!=',$chat_message_auth->id)->get();
            foreach($chat_message_partners as $chat_message_partner){
                $chat_message_partner->messages = $chat_message_partner->messages.'<br><div class="chats"><div class="chat-avatar"><img src="https://dreamschat.dreamguystech.com/template/assets/img/avatar-2.jpg" class="rounded-circle dreams_chat mCS_img_loaded" alt="image"></div><div class="chat-content"><div class="message-content">'.$request->message.'</div><div class="chat-time"><div><div class="time">'.$now.'<i><img src="https://dreamschat.dreamguystech.com/template/assets/img/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>';
                $chat_message_partner->unread = $request->message;
                $chat_message_partner->save();
            }
            return $chat_message_partner;
        }
        else{
            return false;
        }
    }
}
