<?php

use Illuminate\Database\Seeder;

class ChatRoomSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        DB::table('chat_rooms')->insert([
            [
                'status' =>1
            ],
            [
                'status' =>1
            ]
            ]
        );
    }
}
