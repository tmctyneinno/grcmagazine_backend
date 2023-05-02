<?php

namespace App\Http\Controllers;

use App\Events\advertevent;
use App\Events\allarticles;
use App\Events\contactevent;
use App\Events\messageevent;
use App\Events\notifyevent;
use App\Events\showbroad;
use App\Http\Requests\adsrequuest;
use App\Http\Requests\changepass;
use App\Http\Requests\commentlist;
use App\Http\Requests\contactrequest;
use App\Http\Requests\Search;
use App\Http\Requests\Subscripreq;
use App\Http\Requests\Advest;
use App\Http\Requests\approvedreq;
use App\Http\Requests\checkreq;
use App\Http\Requests\insertnotifyreq;
use App\Http\Requests\listpagreq;
use App\Http\Requests\replyrequest;
use App\Http\Requests\Repostreq;
use App\Http\Requests\sendmessagereq;
use App\Http\Resources\articlesresource;
use App\Http\Resources\chatresource;
use App\Http\Resources\commitresource;
use Illuminate\Http\Request;
use App\Http\Resources\convertid;
use App\Http\Resources\storieslist;
use App\Models\advertpayment;
use App\Models\article;
use App\Models\comment;
use App\Models\Contactmodel;
use App\Models\messagechat;
use App\Models\Notify;
use App\Models\payment;
use App\Models\Subcription;
use App\Models\Unqine;
use App\Models\User;
use App\Models\Advestment;
use App\Models\Reply;
use App\Models\Report;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;

class PostController extends Controller
{
   protected $comment;
   protected $contactmodel;
    public function __construct(comment $comments,Contactmodel  $contact){
       $this->comment = $comments;
       $this->contactmodel = $contact;
    }




    public function listpag(listpagreq $request){

        $data = article::all();
        $convertid = convertid::collection($data)->resolve();
         $page = $request->page;
         $pagdata =  $this->paginate($convertid, 6, $page);
        return response()->json($pagdata);
    }


    public function artclesinsert(commentlist $request){
        if(Auth::check()){
            $this->comment->create([
                'name'=>auth()->user()->name,
                'email'=>auth()->user()->email,
                'message'=>$request->message,
                'articles_id'=> $request->articles_id,
            ]);
            $all = $this->comment->where('articles_id', $request->articles_id)->get();
            $allx = commitresource::collection($all)->resolve();
            $article_in = article::all();
           $conarticles =  articlesresource::collection($article_in)->resolve();
           $pagdata =  $this->paginate($conarticles, 6, 1);
            event(new showbroad($allx));
             event(new allarticles( $pagdata ));
        }else{
            $this->comment->create([
                'name'=>$request->name,
                'email'=>$request->email,
                'message'=>$request->message,
                'articles_id'=> $request->articles_id,
            ]);
            $all = $this->comment->where('articles_id', $request->articles_id)->get();
            $allx = commitresource::collection($all)->resolve();

            $article_in = article::all();
  $conarticles =  articlesresource::collection($article_in)->resolve();
           $pagdata =  $this->paginate($conarticles, 6, 1);
             event(new showbroad($allx));
             event(new allarticles( $pagdata ));

        }
    }

    public function contact(contactrequest $request){

       $this->contactmodel->create([
        'name'=>$request->name,
        'email'=>$request->email,
        'message'=>$request->message
       ]);
       event(new contactevent($request->name, $request->email, $request->message));
       $data = ['success'=>'we have receviced your message we will contact you soon'];
       return response()->json($data);
    }

    public function searcharticles($search){

        $result =   article::search($search)->take(5)->get();
        $convertid = convertid::collection($result)->resolve();;
        return response()->json($convertid);
    }

    public function changepassword(changepass $request){
     $user = User::where(['email'=>auth()->user()->email, 'id'=>auth()->user()->id])->first();
     if($user){
        $user->update([
            'password' => $request->password
        ]);
        return response()->json(['success'=>'your password has been updated']);
     }
    }

    public function approved(approvedreq $request){
    $article = article::where(['id'=>$request->id])->first();

    if($article){
      $article->status = 1;
      $article->save();
      $this->sendnotification($article->id);
      $art = article::all();
      $story = storieslist::collection($art)->resolve();
      $ans = 1;
      $pagdata =  $this->paginate($story, 6, $ans);
      return response()->json(['success'=>'you have approved the article', 'data'=>$pagdata]);
    }
    }

    function sendnotification($id){
        $ansid =  Crypt::encrypt($id);
         $notifies = Notify::all();
         foreach ($notifies as  $notfy) {
           event(new notifyevent($notfy->email, $ansid));
         }
    }

    public function insertnotify(insertnotifyreq $request){
       $email = $request->email;
        Notify::create([
          'email'=>  $email
        ]);

    }

    public function disapproved(approvedreq $request){
        $article = article::where(['id'=>$request->id])->first();

        if($article){
            $article->status = 0;
            $article->save();
              $art = article::all();
              $story = storieslist::collection($art)->resolve();
              $ans = 1;
              $pagdata =  $this->paginate($story, 6, $ans);
              return response()->json(['success'=>'you have disapproved the article', 'data'=>$pagdata]);
        }
    }

            public function sendmessage(sendmessagereq $request){
                $unq =  DB::select('select * from unqines  WHERE  send_id="'.$request->send_id.'" AND rec_id="'.$request->rec_id.'"  OR send_id="'.$request->rec_id.'" AND rec_id="'.$request->send_id.'" ');
                    if($unq){
                        messagechat::create([
                            'send_id'=>$request->send_id,
                            'rec_id'=>$request->rec_id,
                            'message'=>$request->message,
                            'status'=>0,
                            'uniquecode'=>$unq[0]->uniquecode
                        ]);
                        messagechat::where(["send_id"=>intval($request->rec_id), "rec_id"=>auth()->user()->id, "status"=>0])->update([
                            "status"=>1
                         ]);
                    $data = messagechat::all();
                    $ansdata = chatresource::collection($data)->resolve();
                    event(new messageevent($ansdata, $request->rec_id));
                    return response()->json(['success'=>$ansdata]);
                    }else{
                       $info = Unqine::create([
                            'send_id'=>$request->send_id,
                            'rec_id'=>$request->rec_id,
                            'uniquecode'=>sha1(time()),
                        ]);

                        messagechat::create([
                            'send_id'=>$request->send_id,
                            'rec_id'=>$request->rec_id,
                            'message'=>$request->message,
                            'status'=>0,
                            'uniquecode'=>$info->uniquecode
                        ]);
                        $data = messagechat::all();
                        $ansdata = chatresource::collection($data)->resolve();
                            event(new messageevent($ansdata, $request->rec_id));
                        return response()->json(['success'=>$ansdata ]);

                    }


            }

            public function getsubscription(Subcription $subcription){
               $all =   $subcription->all();
               $ansall = count($all) > 0? $all:[];
               return response()->json(['success'=>$ansall]);
            }

            public function addsubscription(Subscripreq $request){
            Subcription::create([
                'name'=>$request->name,
                'price'=>$request->price,
                'days'=>$request->days,
                'number_of_article'=>$request->article,
                'bodys'=>$request->bodys,
            ]);
            $all =   Subcription::all();
            return response()->json(['success'=>'you have created a subscription', 'data'=>$all]);
            }

            public function editsubscription(Subscripreq $request){
                $subscription = Subcription::find($request->id);
                $subscription->update([
                    'name'=>$request->name,
                    'price'=>$request->price,
                    'days'=>$request->days,
                    'number_of_article'=>$request->article,
                    'bodys'=>$request->bodys,
                ]);
                $all =   Subcription::all();
                return response()->json(['success'=>'you have  successfully edited your data', 'data'=>$all]);
            }

            public function deletesubscription(Subcription $subscription, Request $request){
                 $subscription->where('id', $request->id)->delete();
                 $all = $subscription->all();
                 return response()->json(['success'=>'you have  successfully delete your data', 'data'=>$all]);

            }


            public function payment_sub(payment $payment, Request $request){
                $payment->create([
                 'plan_name'=>$request->plan_name,
                 'price'=>$request->price,
                   'code'=>$request->code,
                 'message'=>$request->message,
                'user_id'=>$request->user_id,
                'days'=>$request->days,
                'number_of_article'=>$request->number_of_article,
                'status'=>'Active'
                ]);
                return response()->json(['success'=>'your payment was successful']);
            }

            public function advestment(Advest $request){
                // Advest
                $img = $this->cloudinary($request->image);
              $advert =  Advestment::create([
                   'name'=>$request->name,
                   'email'=>$request->email,
                   'companyname'=>$request->companyname,
                   'image'=>$img,
                   'message'=>$request->message
                ]);
                // Crypt
                $cryptid =  Crypt::encrypt($advert->id);
               event(new advertevent($request->name, $request->email, $cryptid));
                return response()->json(['success'=>'we have  received your enqiury ']);
            }


            public function replies(replyrequest $request ){
            Reply::create([
             'comment_id'=>$request->comment_id,
             'article_id'=>$request->articles_id,
             'name'=>$request->name,
             'email'=>$request->email,
             'message'=>$request->message,
            ]);
            $all = $this->comment->where('articles_id', $request->articles_id)->get();
            $allx = commitresource::collection($all)->resolve();
            event(new showbroad($allx));
            return response()->json(['success'=>'your rely has been sent']);
            }


             public function deletecomment(Request $request, Reply $reply){
                if(auth()->user()->user_type == 'Admin'){
                    $this->comment->where("id", $request->comment_id)->delete();
                    $reply->where("comment_id", $request->comment_id)->delete();
                    $all = $this->comment->where('articles_id', $request->articles_id)->get();
                    $allx = commitresource::collection($all)->resolve();
                    event(new showbroad($allx));
                    return response()->json(['success'=>'deleted']);
                }else{
                    return response()->json(['error'=>'you do not have access']);
                }

             }

             public function pinncomment(Request $request){
                if(auth()->user()->user_type == 'Admin'){
                    $this->comment->where("id", $request->comment_id)->update([
                        'pinned'=>1
                    ]);
                    $all = $this->comment->where('articles_id', $request->articles_id)->get();
                    $allx = commitresource::collection($all)->resolve();
                    event(new showbroad($allx));
                    return response()->json(['success'=>'success']);
                }
             }

             public function unpinncomment(Request $request){
                if(auth()->user()->user_type == 'Admin'){
                    $this->comment->where("id", $request->comment_id)->update([
                        'pinned'=>0
                    ]);
                    $all = $this->comment->where('articles_id', $request->articles_id)->get();
                    $allx = commitresource::collection($all)->resolve();
                    event(new showbroad($allx));
                    return response()->json(['success'=>'success']);
                }
             }

              public function report(Request $request){
                // return response()->json([auth()->user()]);
                $report = Report::where([ 'user_id'=>auth()->user()->id,  'comment_id'=>$request->comment_id])->exists();
                if(!$report){
                    Report::create([
                        'user_id'=>auth()->user()->id,
                        'message'=>$request->message,
                        'comment_id'=>$request->comment_id,
                    ]);
                }
                return response()->json(['success'=>'sent']);
              }

              public function advertpayment(adsrequuest $request){
                $id = Crypt::decrypt($request->advestments_id);
               $adveststment = Advestment::where(['id'=>$id])->exists();
               if($adveststment){
                advertpayment::create([
                    'adname'=>$request->adname,
                    'adprice'=>$request->adprice,
                    'addays'=>$request->addays,
                    'advestments_id'=>$id,
                    'user_id'=>$request->user_id,
                    'code'=>$request->code,
                    'message'=>$request->message,
                    'status'=>$request->status
                   ]);
                   return response()->json(['success'=>'your purchase was successfully']);
               }


              }

              public function checkads(checkreq $request){
                $id = Crypt::decrypt($request->get('id'));
               $check = advertpayment::where(['advestments_id'=>$id])->exists();
               return response()->json(['success'=>$check]);
              }

}
