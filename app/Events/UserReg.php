<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class UserReg
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
    public $email;
    public $name;
    public $confirmed_code;
    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($email, $name, $confirmed_code)
    {
        // $user->email, $user->name, $user->confirmed_code)
        // $data = [$email, $name, $confirmed_code];
        // dd($data);
     $this->email = $email;
     $this->name = $name;
     $this->confirmed_code = $confirmed_code;
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
