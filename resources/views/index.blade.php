<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php 
        $setting = Cache::get('setting'); 
        $product_list = Cache::get('product_list');
    ?>
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name='revisit-after' content='1 days' /> 
    <title><?php if(!empty($title)) echo $title; else echo $setting->title; ?></title>
    <meta name="author" content="{!! $setting->website !!}" />
    <meta name="copyright" content="GCO" />
    <meta name="keywords" content="<?php if(!empty($keyword)) echo $keyword; else echo $setting->keyword; ?>" />
    <meta name="description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta http-equiv="content-language" content="vi" />
    <meta property="og:title" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content="{!! $setting->website !!}" />
    <meta property="og:site_name" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="<?php if(!empty($img_share)) echo $img_share; else echo asset('upload/hinhanh/'.$setting->photo) ?>" />
    <meta property="og:description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />

    <meta name="googlebot" content="all, index, follow" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="10.764338, 106.69208" />
    <meta name="geo.placename" content="Hà Nội" />
    <meta name="Area" content="HoChiMinh, Saigon, Hanoi, Danang, Vietnam" />
    <link rel="shortcut icon" href="{!! asset('upload/hinhanh/'.$setting->favico) !!}" type="image/png" />

     <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">    <!--<link href="plugin/fonts/transfonter/stylesheet.css" rel="stylesheet" />-->
    <link href="{{asset('public/plugin/fonts/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet" />
    <link href="{{asset('public/plugin/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />
    <link href="{{asset('public/plugin/mmenu/jquery.mmenu.all.css')}}" rel="stylesheet" />
    <link href="{{asset('public/plugin/animsition/css/animsition.min.css')}}" rel="stylesheet" />
    <link href="{{asset('public/plugin/slick/slick.css')}}" rel="stylesheet" />
    <link href="{{asset('public/plugin/flag-icon/css/flag-icon.min.css')}}" rel="stylesheet" />
    <link href="{{asset('public/css/style.css')}}" rel="stylesheet" />

    <script src="{{asset('public/plugin/modernizr.js')}}"></script>
    <script src="{{asset('public/plugin/jquery/jquery-3.2.1.min.js')}}"></script>
    <script type="text/javascript">
        function baseUrl(){
            return '<?php echo url('/'); ?>';
        }
        window.token = '{{ csrf_token() }}';
        
   </script>
</head>
<body>
    
   <div id="animsition main-wrapper" class="">
        @include('templates.layout.header')
        @yield('content')
        
        @include('templates.modal')

        @include('templates.layout.footer')
        
        
   </div>
    
    {!! $setting->codechat !!}
    
    {{ $setting->analytics }}
    @yield('script')
    <!-- BEGIN: SCRIPT -->
    
    <script src="{{asset('public/plugin/jquery/jquery-migrate-3.0.0.min.js')}}"></script>
    <script src="{{asset('public/plugin/popper/popper.min.js')}}"></script>
    <script src="{{asset('public/plugin/bootstrap/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('public/plugin/mmenu/jquery.mmenu.all.js')}}"></script>
    <script src="{{asset('public/plugin/animsition/js/animsition.min.js')}}"></script>
    <script src="{{asset('public/plugin/slick/slick.min.js')}}"></script>
    <script src="{{asset('public/plugin/scrollup/jquery.scrollUp.min.js')}}"></script>
    <script src="{{asset('public/plugin/stickOnScroll/jquery.stickOnScroll.min.js')}}"></script>

    <script src="{{asset('public/plugin/main.js')}}"></script>
    <script src="{{asset('public/plugin/custom.js')}}"></script>

<!-- END: SCRIPT -->
</body>
</html>