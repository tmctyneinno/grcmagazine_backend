<?php

namespace App\Listeners;

use App\Events\advertevent;
use App\Mail\advest;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class advertlistener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle(advertevent $event)
    {
        $data =[
            'name' =>$event->name,
            'email' =>$event->email,
            'cryptid'=>$event->cryptid
        ];

        Mail::to($event->email)->send(new advest($data));

    }
}
