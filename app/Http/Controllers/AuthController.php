<?php

namespace App\Http\Controllers;

use App\Events\UserReg;
use App\Http\Requests\adminLogin;
use App\Http\Requests\adminRequest;
use App\Http\Requests\userlogin;
use App\Http\Requests\userssignup;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Laravel\Passport\HasApiTokens;
class AuthController extends Controller
{


     public function adminsignup(adminRequest $request){

     $user = User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>Hash::make($request->password),
            'user_type'=>'Admin',
            'confirmed_email'=>1
        ]);
        if($user){
            return response()->json(['success'=>'your account has been created']);
        }else{
            return response()->json(['error'=>'please enter the right details']);
        }

     }

     public function logout(){
        auth()->user()->tokens()->delete();
        return response()->json(['success'=>'logged out']);
     }

     public function adminlogin(adminLogin $request){
        $user = User::where('email', $request->email)->first();

        if($user && Hash::check($request->password, $user->password) && $user->user_type == 'Admin'){
            $token =  $user->createToken('my-app-token')->plainTextToken;
            $user->api_token = $token;
            $user->save();
            $data =['id'=>$user->id, 'email'=>$user->email,  'token'=>$token, 'name'=>$user->name,  'usertype'=>$user->user_type];
            return response()->json(['success'=>200, 'message'=>'you logged in successfully', 'data'=>$data]);
        }else{
        return response()->json(['error'=>'please enter correct details']);
        }
     }



     public function usersignup(userssignup $request){
       $user =   User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>Hash::make($request->password),
            'user_type'=>'User',
            'confirmed_email'=>0,
            'confirmed_code'=>sha1(time()),
            'term'=>$request->term
        ]);

        event(new UserReg($user->email, $user->name, $user->confirmed_code));
        return response()->json(['success'=>'please check your email']);
     }

     public function userlogin(userlogin $request){
        $user = User::where('email', $request->email)->first();
        if($user && Hash::check($request->password, $user->password) && $user->user_type == 'User' ){
            $token =  $user->createToken('my-app-token')->plainTextToken;
            $user->api_token = $token;
            $user->save();
            $data =['id'=>$user->id, 'email'=>$user->email,  'token'=>$token, 'name'=>$user->name,  'usertype'=>$user->user_type];
            return response()->json(['success'=>200, 'message'=>'you logged in successfully', 'data'=>$data]);
        }else{
        return response()->json(['error'=>'please enter correct details']);
        }
     }

     public function activate($email, $code){
        // return([$email, $code]);
        $user = User::where(['email'=>$email, 'confirmed_code'=>$code])->first();

        if($user->confirmed_email == 0){
            $user->update([
                'confirmed_email'=>1
            ]);
          return response()->json(['success'=>'you account has been activated']);
        }else{
            return response()->json(['error'=>'This account has already been activated']);

        }
     }




}
