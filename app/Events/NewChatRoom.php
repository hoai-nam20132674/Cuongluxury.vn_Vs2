<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;
use App\ChatMessage;

class NewChatRoom implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $roomId;
    public $partnerId;
    public $partnerName;
    public $partnerAva;
    public $partnerPhone;
    public $partnerAddress;
    public $partnerFb;

    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($roomId, $partnerId, $partnerName, $partnerAva, $partnerPhone, $partnerAddress, $partnerFb)
    {
        $this->roomId = $roomId;
        $this->partnerId = $partnerId;
        $this->partnerName = $partnerName;
        $this->partnerAva = $partnerAva;
        $this->partnerPhone = $partnerPhone;
        $this->partnerAddress = $partnerAddress;
        $this->partnerFb = $partnerFb;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new Channel('chatChatRoom.'.$this->roomId);
    }
    public function broadcastAs(){
        return 'newChatRoom';
    }
}
