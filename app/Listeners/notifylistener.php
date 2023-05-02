<?php

namespace App\Listeners;

use App\Events\notifyevent;
use App\Mail\Nofitymail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class notifylistener
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
    public function handle(notifyevent $event)
    {
        $data = [
            'id'=>$event->id
        ];
        Mail::to($event->email)->send( new Nofitymail($data) );
    }
}
