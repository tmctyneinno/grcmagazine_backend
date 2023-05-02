<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ ucfirst($title) }}</title>

    <!-- Fonts -->
    {{--  <link rel="dns-prefetch" href="//fonts.gstatic.com">  --}}
    {{--  <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">  --}}


    <link href="https://fonts.googleapis.com/css?family=Libre+Franklin:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i%7cKarla:400,400i,700,700i" rel="stylesheet">
    {{--  <script src="https://js.pusher.com/7.2.0/pusher.min.js"></script>  --}}
    <script src="https://unpkg.com/axios@1.1.2/dist/axios.min.js"></script>
    <!-- Scripts -->
    @viteReactRefresh
    @vite(['resources/css/bootstrap.min.css',
      'resources/css/app.css',
     'resources/css/style.css',
     'resources/css/owl.carousel.css',
     'resources/css/owl.theme.css',
    'resources/js/jquery.min.js',
    'resources/js/bootstrap.min.js',
    'resources/js/script.js',
    'resources/js/owl.carousel.min.js',
    'resources/js/slider-carousel.js',
    'resources/js/maindata.js',
    ])
</head>
<body>
    <div class="header">
        <!-- header -->
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="header-logo text-center">
                        <!-- header logo -->
                        <a href="index.html" title="WedPress - HTML Wedding Website Templates"><img src="https://res.cloudinary.com/okpeku/image/upload/v1669639229/logo_irijcu.png" alt="WedPress - HTML Wedding Website Templates"></a>
                    </div>
                    <!-- /.header logo -->
                </div>
            </div>
        </div>
    </div>
   {{--header    --}}
    <div class="navigation">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <!-- navigations -->
                    <div id='navigation'>
                        <ul>
                            <li><a href="{{ route('home')  }}">Home page</a>
                                {{--  <ul>
                                    <li><a href="index.html">Home Page V.1</a></li>
                                    <li><a href="index-2.html">Home Page V.2</a></li>
                                    <li><a href="index-3.html">Home Page V.3</a></li>
                                    <li><a href="index-4.html">Home Page V.4</a></li>
                                    <li><a href="index-5.html">Home Page V.5</a></li>
                                    <li><a href="index-6.html">Home Page V.6</a></li>
                                    <li><a href="index-7.html">Home Page V.7</a></li>
                                    <li><a href="index-8.html">Home Page V.8</a></li>
                                </ul>  --}}
                            </li>
                            <li class='active'><a href="{{ route('stories') }}"> Stories </a>
                                {{--  <ul>
                                    <li><a href='post-default.html'>Post Simple</a>
                                    </li>
                                    <li><a href='post-fullwidth.html'>Post Full width</a>
                                    </li>
                                    <li><a href='post-left-sidebar.html'>Post Left sidebar</a>
                                    </li>
                                </ul>  --}}
                            </li>
                            <li><a href="{{ route('contact') }}">contact us </a></li>
                                    {{--  <li><a href='category-sidebar.html'>Planning</a></li>
                                    <li><a href='category-sidebar.html'>Destination</a></li>
                                    <li><a href='category-sidebar.html'>Fashion</a></li>  --}}
                                </ul>
                            </li>

                            {{--  <li><a href='#'>Features <i class="fa fa-chevron-down" aria-hidden="true"></i></a>
                                <ul>
                                    <li><a href='category-sidebar.html'>Category Version</a>
                                        <ul>
                                            <li><a href="category-sidebar.html">Category / Sidebar</a></li>
                                            <li><a href="category-3column.html">Category / 3 Column</a></li>
                                        </ul>
                                    </li>
                                    <li><a href='#'>Author Post</a>
                                        <ul>
                                            <li><a href="author-page.html">Author Post / Sidebar</a></li>
                                            <li><a href="author-page-fullwidth.html">Author Post / Single</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="aboutus-page.html">About us</a></li>
                                    <li><a href="404error-page.html">404 Error</a></li>
                                </ul>
                            </li>  --}}
                            {{--  <li><a href='contactus-page.html'>Contact us</a></li>
                            <li><a href='wedding-submit-page.html'>Submit Real Weddings</a></li>  --}}
                        </ul>
                    </div>
                </div>
                <!-- /.navigations -->
            </div>
        </div>
    </div>
     {{--header    --}}
    @yield('content')
    @include('footer')

    <script type="text/javascript">
    var categoriesdata = {{ Js::from($categoriesdata??"") }};
    var findno =  {{ Js::from($findno??"")}};
    var pagdata = @js($pagdata??"");
    var comm =  @js($comment??"");
     var contact = @js($contact??"")

</script>


</body>

</html>
