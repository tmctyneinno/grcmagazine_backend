<?php

namespace App\Providers;

use App\Events\advertevent;
use App\Events\contactevent;
use App\Events\notifyevent;
use App\Events\UserReg;
use App\Listeners\advertlistener;
use App\Listeners\contactlisten;
use App\Listeners\notifylistener;
use App\Listeners\UserListen;
use Illuminate\Auth\Events\Registered;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Event;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event to listener mappings for the application.
     *
     * @var array<class-string, array<int, class-string>>
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],

        contactevent::class =>[
           contactlisten::class
        ],

        UserReg::class =>[
         UserListen::class
        ],

        notifyevent::class=>[
            notifylistener::class
        ],
        advertevent::class=>[
          advertlistener::class,
        ]


    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Determine if events and listeners should be automatically discovered.
     *
     * @return bool
     */
    public function shouldDiscoverEvents()
    {
        return false;
    }
}
