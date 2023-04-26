<?php

use Illuminate\Database\Seeder;

class ChatMessageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('chat_messages')->insert([
            [
                'room_id' =>2,
                'user_id' =>2,
                'messages'=>'<div class="chats chats-right"><div class="chat-content"><div class="message-content">Xin Chào !</div><div class="chat-time"><div><div class="time">14:29 PM <i><img src="https://dreamschat.dreamguystech.com/template/assets/img/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>',
            ],
            [
                'room_id' =>2,
                'user_id' =>14,
                'messages'=>'<div class="chats"><div class="chat-avatar"><img src="https://dreamschat.dreamguystech.com/template/assets/img/avatar-2.jpg" class="rounded-circle dreams_chat mCS_img_loaded" alt="image"></div><div class="chat-content"><div class="message-content">Xin Chào !</div><div class="chat-time"><div><div class="time">14:29 PM <i><img src="https://dreamschat.dreamguystech.com/template/assets/img/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>',
            ]
            ]
        );
    }
}
