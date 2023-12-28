<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\viewController;
use App\Http\Controllers\UserOnlineController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::domain('api.grcfincrimetoday.org')->group(function(){ 

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::controller(viewController::class)->group(function(){
    Route::get('home', 'home');
    Route::get('list', 'list');
    Route::get('single/{id}', 'single');
    Route::get('contact', 'contact');
});

Route::controller(PostController::class)->group(function(){
    Route::post('listpag', 'listpag');
    Route::post('artclesinsert', 'artclesinsert');
    Route::post('/contact', 'contact');
   Route::get('/searcharticles/{search}', 'searcharticles');
   Route::post('/insertnotify', 'insertnotify');
//    Route::post('/replies', 'replies');
});
Route::post('/replies', [PostController::class, 'replies']);

// Route::post('/usersignup', [AuthController::class, 'usersignup']);
Route::controller(AuthController::class)->group(function(){
Route::post('adminsignup', 'adminsignup');
// Route::get('/logout', 'logout');,0
Route::post('/adminlogin', 'adminlogin');
Route::post('/usersignup', 'usersignup');
Route::post('/userlogin', 'userlogin');
// not done
Route::get('/activate/{email}/{code}', 'activate');
// not done

});
Route::post('/advestment', [PostController::class, 'advestment']);
Route::get('/activeadds', [viewController::class, 'activeadds']);
Route::get('/showads', [viewController::class, 'showads']);
// Route::middleware('auth:api')->put('user/{user}/online', [UserOnlineController::class]);

Route::middleware('auth:sanctum')->group( function(){
    Route::get('/stories', [viewController::class, 'stories']);
    Route::post('/profile', [viewController::class, 'profile']);
    Route::post('/changepassword', [PostController::class, 'changepassword']);
    Route::put('/approved', [PostController::class, 'approved']);
    Route::put('/disapproved', [PostController::class, 'disapproved']);
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::get('/passwordchange',[viewController::class, 'passwordchange']);
    Route::get('/categories', [viewController::class, 'categories']);
    Route::post('/createarticle', [viewController::class, 'createarticle']);
    Route::get('/chatmessage', [viewController::class, 'chatmessage']);
    Route::post('/sendmessage', [PostController::class, 'sendmessage']);
    Route::get('/particularuser/{otheruser}', [viewController::class, 'particularuser']);
    Route::get('/allmessages', [ViewController::class, 'allmessages']);
    Route::get('/typing/{otheruserid}', [ViewController::class, 'typing']);
    Route::get('/searchuser/{search}', [viewController::class, 'searchuser']);
    Route::post('picx', [viewController::class, 'Picx']);
    Route::get('/getprofile/{email}', [viewController::class, 'getprofile']);
    Route::post('/editarticle', [viewController::class, 'editarticle']);
    Route::get('/userstories', [viewController::class, 'userstories']);
    Route::get('/subscription', [viewController::class, 'subscription']);
    Route::post('/addsubscription', [PostController::class, 'addsubscription']);
    Route::get('/getsubscription', [PostController::class, 'getsubscription']);
    Route::put('/editsubscription', [PostController::class, 'editsubscription']);
    Route::delete('/deletesubscription', [PostController::class, 'deletesubscription']);
    Route::get('/paystack_verify/{ref}', [viewController::class, 'paystack_verify']);
    Route::post('/payment_sub', [PostController::class, 'payment_sub']);
    Route::get('/getpayment/{id}', [viewController::class, 'getpayment']);
    Route::get('/getarticleadmin', [viewController::class, 'getarticleadmin']);
    Route::get('/getsubscriptiondetails/{id}', [viewController::class, 'getsubscriptiondetails']);
    Route::delete('/deletecomment', [PostController::class, 'deletecomment']);
    Route::post('/report', [PostController::class, 'report']);
    Route::get('/reportdetail', [viewController::class, 'reportdetail']);
    Route::put('/pinncomment', [PostController::class, 'pinncomment']);
    Route::put('/unpinncomment', [PostController::class, 'unpinncomment']);
    Route::get('/adverstdetall',[viewController::class, 'adverstdetall']);
    Route::post('/advertpayment', [PostController::class, 'advertpayment']);
    Route::get('/checkads', [PostController::class, 'checkads']);

});
});


