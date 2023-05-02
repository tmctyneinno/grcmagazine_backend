<?php

namespace App\Listeners;

use App\Events\UserReg;
use App\Mail\useremail;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Mail;

class UserListen
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
    public function handle(UserReg  $event)
    {
        $data = [
            'name'=> $event->name,
            'email'=> $event->email,
             'code'=>$event->confirmed_code
           ];
           Mail::to('support@tmcinstitute.com')->send(new useremail($data));
    }
}
