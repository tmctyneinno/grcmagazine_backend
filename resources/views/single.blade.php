@extends('layouts.layout')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
            <div class="page-breadcrumb">
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">{{ strip_tags($findno->categories) }}</a></li>
                    <li class="active">{{  strip_tags($findno->articlename) }} </li>
                </ol>
            </div>
        </div>
        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
            <div class="page-section">
                <h1 class="page-title">Post Single Page</h1></div>
        </div>
    </div>
</div>


<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <h1>{{  strip_tags($findno->articlename) }}</h1>
                        <p class="meta"><span class="meta-category"><a href="#" class="meta-link">Year</a></span> <span class="meta-date">{{  strip_tags($findno->yearup) }}</span> <span class="meta-comments">(23) <a href="#" class="meta-link">Comments</a></span>
                        </p>
                        <div class="post-img"> <img src="{{ $findno->picture }}" alt=""></div>
                        <div class="row">
                            {{--  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                <div class="blog-social-share">
                                    <ul>

                                        <li><a href="#">Facebook  <i class="fa-brands fa-facebook-f pull-right widget-social-icon"></i></a></li>
                                        <li><a href="#">Twitter <i class="fa-brands fa-twitter pull-right widget-social-icon"></i></a></li>
                                        <li><a href="#">Instagram <i class="fa-brands fa-instagram pull-right widget-social-icon"></i></a></li>
                                        <li><a href="#">Linkedin <i class="fa-brands  fa-linkedin pull-right widget-social-icon"></i></a></li>

                                    </ul>
                                </div>
                            </div>  --}}
                            <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                                <div class="post-content">


                                    {{--  first artcle  --}}

                                       <p class="firstartcle"></p>


                                    {{--  first artcle  --}}

                                        {{--  second artcle  --}}
                                    <p class="secondartcle">Consectetur mi curabitur hendrerit fringilla enim accumsan turpis aliquam fringilla hendrerit leo eget sed eros ipsum consequat ac orci a semper.</p>
                                     {{--  second artcle  --}}

                                     {{--  artcle cout mark  --}}
                                    <blockquote class="artclecoutmark">Eros pretium nam magna ne diam commodo viverra eget et leo curabitur a diam semper e tempor odio sed vehicula ornare libero viva acsod orna libero unc laoreet turpis elit non eleifend eget.</blockquote>
                                      {{--  artcle cout mark  --}}

                                      {{--  thrid artcle  --}}
                                    <p class="thridartcle"></p>
                                     {{--  thrid artcle  --}}

                                      {{--  fouth arcle  --}}
                                     <p class="foutharcle"></p>
                                       {{--  fouth arcle  --}}

                                       {{--  fivtharcle  --}}
                                    <p class="fivtharcle">Non neque id eleifend etiam scelerisque tortor sed porta ultrices risus nunc laoreet act turpis nonc eleifend felis tortor quis diam praesent feugiat mi in metus tempor faucibus maecenas eget consectetur mi curabitur hendrerit fringilla enim accumsan turpis aliquam fringilla nulla hendrerit leo eget suscipit rhoncus sed eros ipsum consequat ac orci a semper interdum elit.</p>
                                      {{--  fivth arcle  --}}

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <!-- post author block -->

                    </div>
                    <!-- post author block -->
                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <!-- related post block -->
                        <div class="related-post-block">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="section-header">
                                        <h2 class="heading-line">Related Posts</h2></div>
                                </div>
                            </div>
                            <div class="row">
                                @foreach ($relatedtopic as $relate )
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                    <div class="related-post">
                                        <a href="#"><img src="{{ $relate->picture }}" alt=""></a>
                                        <div class="related-post-content">
                                            <h3><a href="{{ route('single', encrypt($relate->id))  }}" class="post-title">{{  strip_tags($relate->articlename) }} </a></h3>
                                            <p class="meta">in <span class=" meta-category"><a href="#" class="meta-link">{{ $relate->categories }}</a></span></p>
                                        </div>
                                    </div>
                                </div>
                                @endforeach



                            </div>
                        </div>
                    </div>
                    <!-- /.related post block -->
                    {{--  <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <div class="next-prev-post">
                            <div class="row">
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <div class="prev-post">
                                        <h3 class="prev-link-title"><a href="#" class="title">When Buying Tops Renting a Home</a></h3>
                                        <p><a href="#" class="prev-link btn-link">Previous Post</a></p>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <div class="next-post">
                                        <h3 class="next-link-title"><a href="#" class="title">Believe in the Business of  Your Dreams</a></h3>
                                        <p><a href="#" class="next-link btn-link">Next Post</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  --}}
                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <div class="comments-area mb40">
                            <h1 class="comments-title heading-line amountcomment"></h1>

                            <ul class="comment-list listnone">
                                {{--  <li class="comment">
                                    <div class="comment-body">
                                        <div class="">
                                            <div class="comment-author"><img src="{{ asset('images/user-pic-1.jpg')}}" alt=" " class="img-responsive"> </div>
                                            <div class="comment-info">
                                                <div class="comment-header">
                                                    <h4 class="user-title">Jose Arbogast</h4>
                                                    <div class="comment-meta"><span class="comment-meta-date">Jan 25, 2017</span></div>
                                                </div>
                                                <div class="comment-content">
                                                    <p>Magna sem ultrices non mollis invul tateolutpat risus lorem aecenas enim lectus molestie sitamet lorem.</p>
                                                    <div class="reply"><a  class="btn-link" ></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>  --}}



                            </ul>



                        </div>
                    </div>

                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <div class="leave-reply">
                            <div class="row">
                                <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                                    <div class="section-header">
                                        <h2 class="heading-line mb20">Leave A Comments</h2>
                                        <p>Your email address will not be published. Required fields are marked *</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                                    <form class="reply-form">
                                        <div class="row">
                                            <!-- Textarea -->
                                            <div class="col-md-12">
                                                <label class="control-label" for="textarea">Message</label>
                                                <textarea class="form-control message" id="textarea" name="textarea" rows="6" placeholder="Message"></textarea>
                                            </div>
                                            <div class="col-md-8">
                                                <!-- Text input-->
                                                <div class="form-group">
                                                    <label class="control-label" for="name">Name<span>*</span></label>
                                                    <input id="name" name="name" type="text"  placeholder="Name" class="form-control  input-md name" required>
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            <div class="col-md-8">
                                                <div class="form-group">
                                                    <label class="control-label" for="email">E-mail<span>*</span></label>
                                                    <input id="email" name="email" type="text" placeholder="E-mail" class="form-control input-md email" required>
                                                </div>
                                            </div>
                                            <!-- Text input-->
                                            {{--  <div class="col-md-8">
                                                <div class="form-group">
                                                    <label class="control-label" for="Website">Website</label>
                                                    <input id="Website" name="Website" type="text" placeholder="Website" class="form-control input-md" required>
                                                </div>
                                            </div>  --}}
                                            <div class="col-md-12">
                                                <!-- Button -->
                                                <div class="form-group">
                                                    <button id="singlebutton" data-id="{{ $article_id }}" name="singlebutton" class="btn btn-default singlebtn">Submit</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="widget widget-categories">
                            <!-- widget category start -->
                            <h2 class="widget-title">categories</h2>
                            <ul class="firstmain">

                            </ul>
                        </div>
                        <!-- widget category start -->
                    </div>
                    {{--  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="widget-bg widget-newsletter">
                            <div class="">
                                <div class="newsletter-bg">
                                    <h1>Helping you plan your big day subscribe us today</h1>
                                    <p>Subscribe with your email to get updates about wedding news &amp; offers.</p>
                                    <form method="post" action="http://jituchauhan.com/weddingmagazine/regular-template/newsletter.php">
                                        <!-- Text input-->
                                        <div class="form-group">
                                            <label class="sr-only  control-label" for="e-mail">E-Mail</label>
                                            <input id="e-mail" name="e-mail" type="text" placeholder="Email Address" class="form-control input-md" required="">
                                        </div>
                                        <!-- Button -->
                                        <div class="form-group">
                                            <label class="sr-only control-label" for="submit">Submit</label>
                                            <button id="submit" name="submit" class="btn btn-default">Submit</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>  --}}
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="widget widget-social">
                            <!-- widget category start -->
                            <h2 class="widget-title">Share with us</h2>
                            <ul>
                                <li><a href="#">Facebook  <i class="fa-brands fa-facebook-f pull-right widget-social-icon"></i></a></li>
                                <li><a href="#">Twitter <i class="fa-brands fa-twitter pull-right widget-social-icon"></i></a></li>
                                <li><a href="#">Instagram <i class="fa-brands fa-instagram pull-right widget-social-icon"></i></a></li>
                                <li><a href="#">Linkedin <i class="fa-brands  fa-linkedin pull-right widget-social-icon"></i></a></li>
                            </ul>
                        </div>
                        <!-- widget category start -->
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="widget widget-recent-news">
                            <!-- widget category start -->
                            <h2 class="widget-title">Recent news</h2>
                            <ul>
                                @foreach ($recent as $cent )
                                <li>
                                    <h4><a href="{{ route('single', encrypt($cent->id))  }}" class="post-title">{{strip_tags($cent->articlename)}}</a></h4>
                                    <p class="meta"><span class="meta-category"><a href="{{ route('single', encrypt($cent->id))  }}" class="meta-link">{{ $cent->categories }}</a></span> <span class="meta-date">{{ $cent->yearup }}</span>
                                    </p>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                        <!-- widget category start -->
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        {{--  <div class="widget widget-tags">
                            <!-- widget category start -->
                            <h2 class="widget-title">Tags</h2>
                            <div class="tags">
                                <a href="#">Wedding</a>
                                <a href="#">Wedding dress</a>
                                <a href="#">planning</a>
                                <a href="#">venue</a>
                                <a href="#">destinations</a>
                                <a href="#">beauty</a>
                                <a href="#">Wedding planning</a>
                            </div>
                        </div>  --}}
                        <!-- widget category start -->
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        {{--  <div class="widget widget-archive">
                            <h2 class="widget-title">Archives</h2>
                            <ul>
                                <li><a href="#">June 2018</a></li>
                                <li><a href="#">March 2018</a></li>
                                <li><a href="#">February 2018</a></li>
                                <li><a href="#">January 2018</a></li>
                            </ul>
                        </div>  --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


@endsection
