<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class allarticles implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
   public $data;
    /**
     * Create a new event instance.
     *
     * @return void
     */
    public function __construct($article_in)
    {
    $this->data = $article_in;
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        return new Channel('articles');
    }

    public function broadcastAs(){
        return 'all_articles';
    }
}
