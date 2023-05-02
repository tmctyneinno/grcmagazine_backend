<?php

namespace App\Http\Controllers;

use App\Events\UserOnline;
use App\Models\User;
use Illuminate\Http\Request;

class UserOnlineController extends Controller
{

    public function __invoke(User $user)
    {
        $user->status = 'online';
        $user->save();
        return response()->json($user);
        broadcast(new UserOnline($user));
    }
}
