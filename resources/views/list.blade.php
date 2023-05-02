@extends('layouts.layout')
@section('content')
{{--  small head  --}}
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
            <div class="page-breadcrumb">
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Real Weddings</li>
                </ol>
            </div>
        </div>
        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
            <div class="page-section">
                <h1 class="page-title">Stories</h1></div>
        </div>
    </div>
</div>
{{--  small head  --}}


<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-sm-8 col-md-8 col-xs-12">
                <div class="row">

                    <div class="products-center rowpagone">


                    </div>

                    {{--  <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
                        <div class="realwedding-block">
                            <!-- realwedding-block -->
                            <div class="realwedding-img">

                                <a href="#" class="imagehover"><img src="images/real-wedding-couple-1.jpg" alt="Real wedding couple"></a>
                            </div>
                            <div class="realwedding-content">
                                <h2><a href="#" class="title">James Mathy Weds Jessa Smith</a></h2>
                                <p class="meta">
                                    <span class="meta-category">
                                <a href="#" class="meta-link">Real Wedding</a></span> <span class="meta-date">19 Jan, 2017</span>
                                    <span class="meta-author"><a href="#" class="meta-link">glenn Downy</a></span>
                                </p>
                                <p>Phasellus at egestas diam. Curabitur molestie mauris ac nibh egestas, ullamcorper laoreet leo hendrerit.</p>
                            </div>
                        </div>
                        <!-- /.realwedding-block -->
                    </div>  --}}







                </div>
                <div class="row">
                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <ul class="pagination">
                            <li class=" Previous">
                                <a  aria-label="">
                                    <span aria-hidden="true"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
                                </a>
                            </li>
                            <li class="active"><a class="numberpag">1</a></li>
                            {{--  <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>  --}}
                            <li class="Next">
                                <a  aria-label=" ">
                                    <span aria-hidden="true"><i class="fa fa-chevron-right" aria-hidden="true"></i></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="widget widget-categories">
                            <!-- widget category start -->
                            <h2 class="widget-title">categories</h2>
                            <ul>
                                <li><a href="#">Planning</a> <span class="badge">6</span></li>
                                <li><a href="#">Real Weddings</a><span class="badge">2</span></li>
                                <li><a href="#">Fashion</a><span class="badge">9</span></li>
                                <li><a href="#">Gallery</a><span class="badge">4</span></li>
                                <li><a href="#">Destinations</a><span class="badge">8</span></li>
                            </ul>
                        </div>
                        <!-- widget category start -->
                    </div>
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
                </div>
            </div>
        </div>
    </div>
</div>


@endsection
