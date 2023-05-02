<?php

use App\Models\Unqine;
use Illuminate\Support\Facades\Broadcast;

/*
|--------------------------------------------------------------------------
| Broadcast Channels
|--------------------------------------------------------------------------
|
| Here you may register all of the event broadcasting channels that your
| application supports. The given channel authorization callbacks are
| used to check if an authenticated user can listen to the channel.
|
*/

Broadcast::channel('App.Models.User.{id}', function ($user, $id) {
    return (int) $user->id === (int) $id;
});




Broadcast::channel('message.{code}', function ($user, $code){
    return (int) $user->id === (int)$code;
});


Broadcast::channel('typing.{otheruserid}', function ($user, $otheruserid){
    return (int) $user->id === (int)$otheruserid;
});


Broadcast::channel('chat', function ($user) {
     return $user;
});



Broadcast::channel('articles', function ($user, $id) {
    return (int) $user->id === (int) $id;
});

