<?php

namespace App\Listeners;

use App\Events\contactevent;
use App\Mail\Contactmail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class contactlisten
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
    public function handle(contactevent $event)
    {
        $data = [
         'name'=> $event->name,
         'email'=> $event->email,
          'message'=>$event->message
        ];
        Mail::to('support@tmcinstitute.com')->send(new Contactmail($data));
    }
}
