<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class notifyevent
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
     public $email;
     public $id;
    //  public $name;
    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($email, $id, )
    {
        $this->email = $email;
        $this->id = $id;
        // $this->name = $name;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new PrivateChannel('channel-name');
    }
}
