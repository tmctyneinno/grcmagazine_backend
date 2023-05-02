<?php

namespace App\Http\Controllers;

use App\Events\tpyingevent;
use App\Http\Requests\profilereq;
use App\Http\Resources\categorycout;
use App\Http\Resources\mainSlide;
use App\Http\Resources\convertid;
use App\Http\Resources\storieslist;
use App\Models\article;
use App\Models\Author;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use App\Events\allarticles;
use App\Http\Requests\articlereq;
use App\Http\Requests\editarticlereq;
use App\Http\Requests\listpagreq;
use App\Http\Requests\picxreq;
use App\Http\Requests\searchreq;
use App\Models\comment;
use App\Models\messagechat;
use App\Models\profile;
use App\Models\User;
use Carbon\Carbon;
use App\Http\Resources\chatresource;
use App\Models\payment;
use App\Models\Subcription;
use App\Models\Unqine;
use App\Http\Resources\articlesresource;
use App\Http\Resources\commitresource;
use App\Http\Resources\reportresource;
use App\Http\Resources\showresource;
use App\Http\Resources\userresource;
use App\Models\advertpayment;
use App\Models\Advestment;
use App\Models\Report;
use Carbon\CarbonImmutable;
use Illuminate\Support\Carbon as SupportCarbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class viewController extends Controller
{

    protected $comment;
    public function __construct(comment $comments){
       $this->comment = $comments;
    }

   protected function countCategory(){
    article::where(['categories'=>'Banking'])->count();
    }

public function home(){
    // $title = 'home';
    // $some =Crypt::encrypt(1);
    // dd($some);
   $articles = article::where(['categories'=>'Introduction', 'status'=>1])->get();
   $mainsildes = mainSlide::collection($articles);

  $countname = article::select('categories')->groupBy('categories')->get();
  $countall = categorycout::collection($countname);
  $latest = article::where(["status"=>1])->latest('id', 'desc')->first();
  $latestans = convertid::make($latest);

   $AI = article::where(['categories'=>'A.I', 'status'=>1])->take(2)->get();
   $Alans = convertid::collection($AI);
  $Banking = article::where(['categories'=>'Banking', 'status'=>1])->take(2)->get();
  $Bankingans = convertid::collection($Banking);
  $Covid = article::where(['categories'=>'Covid-19', 'status'=>1])->take(2)->get();
  $Covidans = convertid::collection($Covid);
  $cybersecurity = article::where(['categories'=>'cybersecurity', 'status'=>1])->get();
  $cybersecurityans = convertid::collection($cybersecurity);
  $recent = article::take(3)->get();
  $recentans = convertid::collection($recent);

  return response()->json(['mainsildes'=>$mainsildes, 'categoriesdata'=>$countall,
  'latest'=>$latestans,  'AI'=>$Alans, 'Banking'=>$Bankingans, 'Covid'=>$Covidans, 'cybersecurity'=>$cybersecurityans,
  'recent'=>$recentans
 ]);
//     return view('home', ['title' => $title, 'mainsildes'=>$mainsildes, 'categoriesdata'=>$countall,
//  'latest'=>$latest,  'AI'=>$AI, 'Banking'=>$Banking, 'Covid'=>$Covid, 'cybersecurity'=>$cybersecurity,
//  'recent'=>$recent
// ]);
}

public function subscription(payment $payment){
 $user = User::where("id", auth()->user()->id)->first();
 $datecabon = Carbon::parse($user->created_at)->addDays(3);
 $today = Carbon::now();
//  if(Auth::check()){
    // return response()->json($datecabon->gte($today));
    if($datecabon->gte($today)){
        // first three days
       return response()->json(["success"=>$datecabon->gte($today)]);
        }else{
            $payx = $payment->where(['user_id'=>auth()->user()->id, 'status'=>'Active'])->exists();

            if($payx){
                $pay = $payment->where(['user_id'=>auth()->user()->id, 'status'=>'Active'])->first();
               $futuredate = Carbon::parse($pay->created_at)->addDays(intval($pay->days));
                if($futuredate->diffInDays($today) == 0 && $futuredate->diffInHours($today) == 0){
                    $pay->update([
                        'status'=>'Expired'
                    ]);
                    return response()->json(["success"=>false]);
                }else{
                    return response()->json(["success"=>false]);

                }

            }else{
                return response()->json(["success"=>false]);
            }

          //return response()->json($datecabon->gte($today));


        }
//  }else{
//     return response()->json(false);
//  }

}


public function list(){
    $title = 'stories';
    $data = article::where(["status"=>1])->get();
   $convertid = convertid::collection($data)->resolve();
    $page = 1;
    $pagdata =  $this->paginate($convertid, 6, $page);
    $recent = article::where(["status"=>1])->take(3)->get();
    $recentans = convertid::collection($recent);
    $countname = article::select('categories')->groupBy('categories')->get();
    $countall = categorycout::collection($countname);
    $categoriesdata = [];
    return response()->json([ 'pagdata'=>$pagdata,
    'recent'=>$recentans, 'categoriesdata'=>$countall, ]);
    // return view('list', ['title' => $title, 'pagdata'=>$pagdata, 'categoriesdata'=>$categoriesdata,
    // 'recent'=>$recent ]);
}

public function single($id){
    $title ='information';
$some = Crypt::decrypt($id);
// return response()->json($some);
$findno = article::find($some);
$relatedtopic = article::where(['categories'=>$findno->categories, 'status'=>1])->inRandomOrder()->limit(3)->get();
$relatedtopicans = convertid::collection($relatedtopic)->resolve();

$countname = article::select('categories')->groupBy('categories')->get();
$countall = categorycout::collection($countname);
$recent = article::where(["status"=>1])->take(3)->get();
$recentans = convertid::collection($recent)->resolve();

$all = $this->comment->where('articles_id', $some)->get();
 $allx = commitresource::collection($all)->resolve();
return response()->json([ 'findno'=>$findno, 'relatedtopic'=>$relatedtopicans, 'categoriesdata'=>$countall,
'recent'=>$recentans, 'article_id'=>$some, 'comment'=>$allx
]);

}

public function contact(){
    $title = 'contact';
    $categoriesdata = [];
    $contact = 'contact';
    $recent = article::take(3)->get();
    $countname = article::select('categories')->groupBy('categories')->get();
$countall = categorycout::collection($countname);
   return response()->json(['recent'=>$recent, 'categoriesdata'=>$countall]);

}


public function stories(listpagreq $request){
   $art = article::all();
   $story = storieslist::collection($art)->resolve();
   $ans = $request->get('page')?$request->get('page'):1;
   $pagdata =  $this->paginate($story, 6, $ans);
   return response()->json($pagdata);
}

public function userstories(listpagreq $request){
    $art = article::where(['authors_id'=>auth()->user()->id])->get();
    $story = storieslist::collection($art)->resolve();
    $ans = $request->get('page')?$request->get('page'):1;
    $pagdata =  $this->paginate($story, 6, $ans);
    return response()->json($pagdata);
}


public function profile(profilereq $request){
 $profile = profile::where(['name'=>auth()->user()->name, 'email'=>auth()->user()->name])->first();
if(!$profile){
profile::create([
    'name'=>auth()->user()->name,
    'email'=>auth()->user()->email,
    'phone'=>$request->phone,
    'state'=>$request->state,
    'country'=>$request->country,
    'city'=>$request->city,
    'zipcode'=>$request->zipcode
]);

return response()->json(['success'=>'you have successfully created your profile']);
}else{
    return response()->json(['error'=>'please enter the correct input']);

}

}

public function passwordchange(){
    $user = profile::where(['email'=>auth()->user()->email])->first();
    return response()->json(['success'=>$user]);
}

public function categories(){
    $countname = article::select('categories')->groupBy('categories')->get();
    $countall = categorycout::collection($countname);
    return response()->json(['success'=>$countall]);
}

// articlereq
public function createarticle(articlereq $request, payment $payment){
  $ansdate = Carbon::parse($request->dataup);
  $img=  $this->cloudinary($request->picture);
if(auth()->user()->user_type === "Admin"){
    article::create([
        "articlename"=>$request->articlename,
        "articlebodyone"=>$request->articlebodyone,
        "articlebodytwo"=>$request->articlebodytwo,
        "articlebodythree"=>$request->articlebodythree,
        "articlebodyfour"=>$request->articlebodyfour,
        "articlebodyfive"=>$request->articlebodyfive,
        "articlecoatbody"=>$request->articlecoatbody,
        "dataup"=>$ansdate,
        "picture"=>$img,
        "categories"=>$request->categories,
        "authors_id"=>auth()->user()->id
        ]);

        $author = Author::where('user_id', auth()->user()->id)->first();
        if(!$author){
        Author::create([
            "author"=>auth()->user()->name,
            "user_id"=>auth()->user()->id
        ]);
        }
        return response()->json(["success"=>"your have created an article"]);

            }else{
                $pay = $payment->where(['user_id'=>auth()->user()->id, 'status'=>'Active'])->first();
                if($pay){
                   $today = Carbon::parse($pay->created_at);
                  // $future_date = Carbon::parse($pay->created_at)->addDays(intval($pay->days));
                  $article =  article::where(["authors_id"=>auth()->user()->id])->get();
                  if($pay->number_of_article >= count($article) ){
                    article::create([
                        "articlename"=>$request->articlename,
                        "articlebodyone"=>$request->articlebodyone,
                        "articlebodytwo"=>$request->articlebodytwo,
                        "articlebodythree"=>$request->articlebodythree,
                        "articlebodyfour"=>$request->articlebodyfour,
                        "articlebodyfive"=>$request->articlebodyfive,
                        "articlecoatbody"=>$request->articlecoatbody,
                        "dataup"=>$ansdate,
                        "picture"=>$img,
                        "categories"=>$request->categories,
                        "authors_id"=>auth()->user()->id
                        ]);

                        $answer = $pay->number_of_article - count($article);
                        $pay->remaining_days = $answer;
                        $pay->save();
                        $author = Author::where('user_id', auth()->user()->id)->first();
                        if(!$author){
                        Author::create([
                            "author"=>auth()->user()->name,
                            "user_id"=>auth()->user()->id
                        ]);
                        }
                  }else{

                  }
                  return response()->json(["success"=>"your have created an article"]);

                }else{
                  return response()->json(['error'=>'you have reached the limited to which you can create articles']);
                }


            }


}

public function editarticle(editarticlereq $request){
    // editarticlereq
    $article = article::find($request->id);
//  return response()->json($request->all());
    if($article){
        if(auth()->user()->user_type == 'Admin'){
            $img = str_contains($request->picture, 'https://res.cloudinary.com') ?$article->picture: $this->cloudinary($request->picture);
        $ansdate = Carbon::parse($request->dataup);
        $article->articlename = $request->articlename;
        $article->articlebodyone = $request->articlebodyone;
        $article->articlebodytwo  = $request->articlebodytwo;
        $article->articlebodythree = $request->articlebodythree;
        $article->articlebodyfour = $request->articlebodyfour;
        $article->articlebodyfive = $request->articlebodyfive;
        $article->articlecoatbody = $request->articlecoatbody;
        $article->dataup = $ansdate;
        $article->picture = $img;
        $article->categories = $request->categories;
        $article->save();
        return response()->json(["success"=>"your have edited your article"]);
        }else{
            $img = str_contains($request->picture, 'https://res.cloudinary.com') ?$article->picture: $this->cloudinary($request->picture);
            $ansdate = Carbon::parse($request->dataup);
            $article->articlename = $request->articlename;
            $article->articlebodyone = $request->articlebodyone;
            $article->articlebodytwo  = $request->articlebodytwo;
            $article->articlebodythree = $request->articlebodythree;
            $article->articlebodyfour = $request->articlebodyfour;
            $article->articlebodyfive = $request->articlebodyfive;
            $article->articlecoatbody = $request->articlecoatbody;
            $article->dataup = $ansdate;
            $article->picture = $img;
            $article->status = 0;
            $article->categories = $request->categories;
            $article->save();
            return response()->json(["success"=>"your have edited your article"]);
        }

    }
}

public function chatmessage(){
   $user = User::all();
   $userdata = userresource::collection($user)->resolve();
   return response()->json(["success"=>$userdata]);
}

// public function conversation(){
//  $data =   messagechat::all();

// }
public function particularuser($otheruser){
 $unq =  DB::select('select * from unqines  WHERE  send_id="'.auth()->user()->id.'" AND rec_id="'.intval($otheruser).'"  OR send_id="'.intval($otheruser).'" AND rec_id="'.auth()->user()->id.'" ');
 if($unq){
    messagechat::where(["send_id"=>intval($otheruser), "rec_id"=>auth()->user()->id, "status"=>0])->update([
       "status"=>1
    ]);
 $data = DB::select(' select * from messagechats  WHERE uniquecode="'.$unq[0]->uniquecode.'" ');
$ansdata = chatresource::collection($data)->resolve();

 return response()->json(["success"=>$ansdata, 'code'=>$unq[0]->uniquecode]);
 }else{
  $unq = Unqine::create([
        'send_id'=>auth()->user()->id,
        'rec_id'=>intval($otheruser),
        'uniquecode'=>sha1(time()),
    ]);
 return response()->json(["success"=>[], 'code'=>$unq->uniquecode]);
 }
}


public function allmessages(){
    $data = DB::select(' select * from messagechats ');
    $ansdata = chatresource::collection($data)->resolve();
     return response()->json(["success"=>$ansdata]);
}


public function typing($otheruserid){
$data =[
    'id'=>auth()->user()->id,
    'name'=>auth()->user()->name,
];
event( new tpyingevent($data, $otheruserid));

}

public function searchuser($search){
    $result =   User::search($search)->take(5)->get();
    return response()->json(["success"=>$result]);
}

public function Picx(picxreq $request){
    $profile = profile::where(['name'=>auth()->user()->name, 'email'=>auth()->user()->name])->first();
    if($profile){
        $img =  $this->cloudinary($request->image);
        $profile->picture = $img;
        $profile->save();
       return response()->json(['success'=>'you have uploaded your profile picture']);
    }else{
        $img=  $this->cloudinary($request->image);
        profile::create([
            'name'=>auth()->user()->name,
            'email'=>auth()->user()->email,
            'picture'=>$img,


        ]);
        return response()->json(['success'=>'you have uploaded your profile picture']);

    }

}

public function getprofile($email){
  $profile =  profile::where('email', $email)->first();
  return response()->json(['success'=>$profile]);
}


public function paystack_verify($ref){
    $sercrtKey = "sk_test_8a40b954383a29bc20a711400387d2c3205478f9";
    $curl = curl_init();
    curl_setopt_array($curl, array(
    CURLOPT_URL => "https://api.paystack.co/transaction/verify/$ref",
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => "",
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_SSL_VERIFYHOST => 0,
    CURLOPT_SSL_VERIFYPEER => 0,
    CURLOPT_TIMEOUT => 30,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => "GET",
    CURLOPT_HTTPHEADER => array(
        "Authorization: Bearer $sercrtKey",
        "Cache-Control: no-cache",
    ),
    ));

    $response = curl_exec($curl);
    return  response()->json(['success'=>$response]);

    $err = curl_error($curl);
    curl_close($curl);
        }


 public function getpayment(payment $payment, $id, ){
 $pay = $payment->where(['user_id'=>$id, 'status'=>'Active'])->first();
 return response()->json(['success'=>$pay]);
 }

 public function getarticleadmin(searchreq $request){
    $article_in = article::all();
    $conarticles =  articlesresource::collection($article_in)->resolve();
    $page = $request->get('search')?$request->get('search'):1;
    $pagdata =  $this->paginate($conarticles, 6, $page);
    return response()->json(["success"=>$pagdata]);
}


public function getsubscriptiondetails($id){
   $payment = payment::where(['user_id'=>$id, 'status'=>'Active'])->first();
  if($payment){
    $datecabon = Carbon::parse($payment->created_at)->addDays($payment->days);
    $today = CarbonImmutable::now();
    $remainingday = $datecabon->diffInDays($today);
    $remaininghour = $datecabon->diffInHours($today);
    return response()->json([
    "subcription"=>$payment->plan_name,
    "days"=>$payment->days,
    "remainingday"=>$remainingday."days, ".$remaininghour."hour",
   'number_of_article'=>$payment->number_of_article
]);
  }
}

// listpagreq
public function reportdetail(listpagreq $request){
   $report = Report::all();
 $reportsolve =  reportresource::collection($report)->resolve();
 $pagdata =  $this->paginate($reportsolve, 6, $request->get('page'));
  return response()->json(['success'=>$pagdata]);
}

public function adverstdetall(listpagreq $request){
    $advest =  Advestment::all()->toArray();
    $pagdata =  $this->paginate($advest, 6, $request->get('page'));
    return response()->json(['success'=>$pagdata]);
}

public function activeadds(){
 $data = advertpayment::where(['status'=>'Active'])->get();
   $today = CarbonImmutable::now();
  foreach ($data as $dat) {
     $dayadded =  $today->addDay($dat->addays);
     if($dayadded->diffInDays($today) == 0 && $dayadded->diffInHours($today) == 0){
          $ans =  advertpayment::where(['id'=>$dat->id])->first();
          $ans->update(['status'=>'Expired']);
  }
  }
}

public function showads(){
    $data = advertpayment::where(['status'=>'Active'])->get();
      $ansdata = showresource::collection($data)->resolve();
   return response()->json(['success'=>$ansdata ]);
    // advestadds
}


}
