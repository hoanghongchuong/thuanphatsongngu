@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <div class="vk-breadcrumb__wrapper">
                <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                    <li class="vk-list__item"><a href="{{url('')}}"><i class="vk-icon fa fa-home"></i> @if($lang == 'vi') {{$biendich[0]->name_vi}} @elseif($lang == 'en') {{$biendich[0]->name_en}}  @endif</a></li>
                    <li class="vk-list__item active">@if($lang == 'vi') {{$biendich[4]->name_vi}} @elseif($lang == 'en') {{$biendich[4]->name_en}}  @endif</li>
                </ul>
            </div>

        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="vk-page vk-page--contact">

        <div class="container">

            <div class="vk-contact__top">
                <div class=" vk-img--mw100">
                    <img src="images/contact/contact-1.jpg" alt="">
                </div>
            </div> <!--./top-->

            <div class="vk-contact__bot">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="vk-map">
                            {!! $setting->iframemap !!}
                        </div>
                    </div>
                    
                        <div class="col-lg-6">
                            <div class="vk-form vk-contact__form">
                                <h1 class="vk-contact__title">@if($lang == 'vi') {{"Gửi liên hệ"}} @elseif($lang == 'en') {{"Send contact"  }}  @endif</h1>
                                <form action="{{ route('postContact') }}" method="post"> 
                                    {{ csrf_field() }}  
                                    <div class="form-group">
                                        <input type="text" name="name" placeholder="@if($lang == 'vi') {{$biendich[11]->name_vi}} @elseif($lang == 'en') {{$biendich[11]->name_en}}  @endif" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="email" placeholder="Email" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control" name="content" placeholder="@if($lang == 'vi') {{$biendich[15]->name_vi}} @elseif($lang == 'en') {{$biendich[15]->name_en}}  @endif"></textarea>
                                    </div>
                                    <div class="vk-button">
                                        <button class="vk-btn vk-form__btn" type="submit">@if($lang == 'vi') {{"Gửi"}} @elseif($lang == 'en') {{"Send"}}  @endif</button>
                                    </div>
                                </form> 
                            </div>
                        </div>
                    
                </div>
            </div> <!--./bot-->
        </div>

    </div><!--./page-->

</section>
<!--./content-->
@endsection
