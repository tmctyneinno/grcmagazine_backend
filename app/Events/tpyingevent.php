<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class tpyingevent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
     public $otheruserid;
     public $data;
    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($data, $otheruserid)
    {
        $this->otheruserid = $otheruserid;
        $this->data = $data;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new PrivateChannel('typing.'.$this->otheruserid);
    }


    public function broadcastAs(){
        return 'type';
    }
}
