@extends('layouts.layout')
@section('content')
<article>
    {{-- slide show   --}}
    <div class="post-slider">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                    <!-- big post center -->

                    <div class="slider" id="slider">
                        <!-- slider -->
                     @foreach ($mainsildes as $mainsilde )
                            <div class="slider-img"><img src="{{ $mainsilde->picture }}" alt=" " class="img-responsive">
                                <div class="row">
                                    <div class="col-lg-5 col-md-5 col-sm-6 col-xs-9">
                                        <div class="slider-captions">
                                            <!-- slider-captions -->
                                    <h1 class="slider-title">{{ strip_tags($mainsilde->articlename) }}</h1>
                                            <p class="meta"><span class="meta-category"><a href="{{ route('single', encrypt($mainsilde->id))  }}" class="meta-link">year</a></span> <span class="meta-date">{{ $mainsilde->yearup }}</span> <span class="meta-comments">(23) <a href="#" class="meta-link">Comments</a></span>
                                            </p>
                                            <p class="slider-text hidden-xs">{{ substr( strip_tags($mainsilde->articlebodyone), 0, 100) }}</p>
                                            <a href="{{ route('single', encrypt($mainsilde->id))  }}" class="btn-link hidden-xs">Read More..</a> </div>
                                    </div>
                                </div>
                            </div>

                            @endforeach

                        <!-- slider -->
                    </div>

                </div>
                <!-- big post center -->
            </div>
        </div>
    </div>
    {{-- slide show   --}}


    <div class="space-small">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-sm-8 col-md-8 col-xs-12">
                    <div class="row">
                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                            <div class="section-header">
                                <h2 class="heading-line">latest articles</h2>
                            </div>
                        </div>
                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">

                            <div class="post-vertical-block">
                                <!-- post vertical block -->
                                <div class="featured-img">
                                    <a href="{{ route('single', encrypt($latest->id))  }}" class="imagehover"><img src="{{ $latest->picture }}" alt=""></a>
                                </div>
                                <div class="post-vertical-content">
                                    <h2><a href="{{ route('single', encrypt($latest->id))  }}" class="post-title">{{strip_tags($latest->articlename) }}</a></h2>
                                    <p class="meta"><span class="meta-category"><a href="{{ route('single', encrypt($latest->id))  }}" class="meta-link">Year</a></span> <span class="meta-date">{{ $latest->yearup }}</span> <span class="meta-comments">(23) <a href="{{ route('single', encrypt($latest->id))  }}" class="meta-link">Comments</a></span>
                                    </p>
                                    <p>{{ substr( strip_tags($latest->articlebodyone), 0, 220) }}...</p>
                                    <a href="{{ route('single', encrypt($latest->id))  }}" class="btn-link">Read More..</a>
                                </div>
                            </div>


                            <!-- /.post vertical block -->
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                            <div class="section-header">
                                <h2 class="heading-line">Artificial Intelligence</h2>
                                <a href="{{ route('stories') }}" class="btn btn-primary btn-xs pull-right"> SEE ALL POSTS</a>
                            </div>
                        </div>
                        @foreach ($AI as $als)
                        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                            <div class="post-vertical-block">
                                <!-- post vertical block -->
                                <div class="featured-img">
                                    <a href="#" class="imagehover"><img src="{{ $als->picture }}" alt=""></a>
                                </div>
                                <div class="post-vertical-content">
                                    <h2><a href="{{ route('single', encrypt($als->id))  }}" class="post-title">{{strip_tags($als->articlename)}} </a></h2>
                                    <p class="meta"><span class="meta-category"><a href="{{ route('single', encrypt($als->id))  }}" class="meta-link">year</a></span> <span class="meta-date">{{ $als->yearup }}</span> <span class="meta-comments">(23) <a href="#" class="meta-link">Comments</a></span>
                                    </p>
                                    <p>{{ substr( strip_tags($als->articlebodyone), 0, 60) }}...</p>
                                    <a href="{{ route('single', encrypt($als->id))  }}" class="btn-link">Read More..</a>
                                </div>
                            </div>
                            <!-- /.post vertical block -->
                        </div>
                        @endforeach

                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                            <div class="section-header">
                                <h2 class="heading-line">Banking</h2>
                                <a href="{{ route('stories') }}" class="btn btn-primary btn-xs pull-right"> SEE ALL POSTS</a>
                            </div>
                        </div>
                        @foreach ($Banking as $Bank)
                        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                            <div class="post-vertical-block">
                                <!-- post vertical block -->
                                <div class="featured-img">
                                    <a href="{{ route('single', encrypt($Bank->id))  }}" class="imagehover"><img src="{{ $Bank->picture }}" alt=""></a>
                                </div>
                                <div class="post-vertical-content">
                                    <h2><a href="{{ route('single', encrypt($Bank->id))  }}" class="post-title">{{strip_tags($Bank->articlename)}} </a></h2>
                                    <p class="meta"><span class="meta-category"><a href="#" class="meta-link">year</a></span> <span class="meta-date">{{ $Bank->yearup }}</span> <span class="meta-comments">(23) <a href="#" class="meta-link">Comments</a></span>
                                    </p>
                                    <p>{{ substr( strip_tags($Bank->articlebodyone), 0, 60) }}...</p>
                                    <a href="{{ route('single', encrypt($Bank->id))  }}" class="btn-link">Read More..</a>
                                </div>
                            </div>
                            <!-- /.post vertical block -->
                        </div>
                        @endforeach
                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                            <div class="section-header">
                                <h2 class="heading-line">Covid-19</h2>
                                <a href="{{ route('stories') }}" class="btn btn-primary btn-xs pull-right"> SEE ALL POSTS</a>
                            </div>
                        </div>
                        @foreach ($Covid as $Covids)
                        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                            <div class="post-vertical-block">
                                <!-- post vertical block -->
                                <div class="featured-img">
                                    <a href="#" class="imagehover"><img src="{{ $Covids->picture }}" alt=""></a>
                                </div>
                                <div class="post-vertical-content">
                                    <h2><a href="{{ route('single', encrypt($Covids->id))  }}" class="post-title">{{strip_tags($Covids->articlename)}} </a></h2>
                                    <p class="meta"><span class="meta-category"><a href="{{ route('single', encrypt($Covids->id))  }}" class="meta-link">year</a></span> <span class="meta-date">{{ $Covids->yearup }}</span> <span class="meta-comments">(23) <a href="#" class="meta-link">Comments</a></span>
                                    </p>
                                    <p>{{ substr( strip_tags($Covids->articlebodyone), 0, 60) }}...</p>
                                    <a href="{{ route('single', encrypt($Covids->id))  }}" class="btn-link">Read More..</a>
                                </div>
                            </div>
                            <!-- /.post vertical block -->
                        </div>
                        @endforeach

                    </div>
                    <div class="row">
                        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                            <div class="section-header">
                                <h2 class="heading-line">Cybersecurity</h2>
                                <a href="{{ route('stories') }}" class="btn btn-primary btn-xs pull-right"> SEE ALL POSTS</a>
                            </div>
                        </div>
                        @foreach ($cybersecurity as $cyber)
                        <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                            <div class="post-vertical-block">
                                <!-- post vertical block -->
                                <div class="featured-img">
                                    <a href="{{ route('single', encrypt($cyber->id))  }}" class="imagehover"><img src="{{ $cyber->picture }}" alt=""></a>
                                </div>
                                <div class="post-vertical-content">
                                    <h2><a href="{{ route('single', encrypt($cyber->id))  }}" class="post-title">{{strip_tags($cyber->articlename)}} </a></h2>
                                    <p class="meta"><span class="meta-category"><a href="#" class="meta-link">year</a></span> <span class="meta-date">{{ $cyber->yearup }}</span> <span class="meta-comments">(23) <a href="#" class="meta-link">Comments</a></span>
                                    </p>
                                    <p>{{ substr( strip_tags($cyber->articlebodyone), 0, 60) }}...</p>
                                    <a href="{{ route('single', encrypt($cyber->id))  }}" class="btn-link">Read More..</a>
                                </div>
                            </div>
                            <!-- /.post vertical block -->
                        </div>
                        @endforeach


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
                                                <label class="sr-only  control-label" for="email">E-Mail</label>
                                                <input id="email" name="email" type="text" placeholder="Email Address" class="form-control input-md" required="">
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
                        {{--  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="widget widget-tags">
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
                            </div>
                        </div>  --}}
                        {{--  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="widget widget-archive">
                                <h2 class="widget-title">Archives</h2>
                                <ul>
                                    <li><a href="#">June 2018</a></li>
                                    <li><a href="#">March 2018</a></li>
                                    <li><a href="#">February 2018</a></li>
                                    <li><a href="#">January 2018</a></li>
                                </ul>
                            </div>
                        </div>  --}}
                    </div>
                </div>
            </div>
        </div>
    </div>



</article>

@endsection
