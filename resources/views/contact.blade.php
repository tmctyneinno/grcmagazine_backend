@extends('layouts.layout')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
            <div class="page-breadcrumb">
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li class="active">Contact us</li>
                </ol>
            </div>
        </div>
        <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
            <div class="page-section">
                <h1 class="page-title">Contact us</h1></div>
        </div>
    </div>
</div>

<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-sm-8 col-md-8 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <div class="section-header">
                            <p class="lead">We’d love to receive your feedback on our magazine’s articles and the editorial style!</p>
                            <p class="messagex" ></p>
                        </div>
                    </div>
                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <form class="contact-form">
                            <div class="row">
                                <!-- Textarea -->
                                <div class="col-md-6">
                                    <!-- Text input-->
                                    <div class="form-group">
                                        <label class="control-label" for="name">Name<span>*</span></label>
                                        <input id="namecontact" name="name" type="text" placeholder="Name" class="form-control input-md" required>
                                    </div>
                                </div>
                                <!-- Text input-->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label class="control-label" for="email">E-mail<span>*</span></label>
                                        <input id="emailcontact" name="email" type="text" placeholder="E-mail" class="form-control input-md" required>
                                    </div>
                                </div>
                                <!-- Text input-->
                                {{--  <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <label class=" control-label" for="Contactfor">Contact Purpose</label>
                                            <div class="">
                                                <select id="Contactfor" name="Contactfor" class="form-control">
                                                    <option value="Wedding Tips">Wedding Tips</option>
                                                    <option value="Wedding Planning">Wedding Planning</option>
                                                    <option value="Wedding Venue">Wedding Venue</option>
                                                    <option value="Advertisement">Advertisement</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>  --}}
                                <div class="col-md-12">
                                    <label class="control-label" for="textarea">Message</label>
                                    <textarea class="form-control" id="messagecontact" name="textarea" rows="6" placeholder="Message"></textarea>
                                </div>
                                <div class="col-md-12">
                                    <!-- Button -->
                                    <div class="form-group">
                                        <button id="singlebutton" name="singlebutton" class="btn btn-default">Submit</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <div class="conatct-info">
                            <div class="section-header">
                                <h2 class="heading-line">We Are Here To Help You</h2>
                            </div>
                            <div class="contact-details">
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <div class="contact-icon"><i class="fa fa-envelope-open"></i></div>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                                        <h4 class="contact-title">Email</h4>
                                        <p>info@wedpress.com</p>
                                    </div>
                                </div>
                            </div>
                            <div class="contact-details">
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <div class="contact-icon"><i class="fa fa-home"></i></div>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                                        <h4 class="contact-title">Address</h4>
                                        <p>Nigeria: 2nd Floor 1, Adeola Adeoye Street Off Toyin Street ikeja, Lagos Nigeria</p>
                                        <p>United Kingdom: 24 Holborn Viaduct London EC1A 2BN United Kingdom</p>
                                    </div>
                                </div>
                            </div>
                            <div class="contact-details">
                                <div class="row">
                                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                                        <div class="contact-icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                                    </div>
                                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                                        <h4 class="contact-title">Phone</h4>
                                        <p>+23417001770</p>
                                        <p>09153414314</p>
                                        <p>+44-7466588324</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    {{--  <div class="col-lg-12 col-sm-12 col-md-12 col-xs-12">
                        <div class="section-header">
                            <h2 class="heading-line">Find Us Google Map</h2>
                        </div>
                        <div class="map"><img src="images/map.jpg" alt=""></div>
                    </div>  --}}
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
                        {{--  <div class="widget-bg widget-newsletter">
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
                        </div>  --}}
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

