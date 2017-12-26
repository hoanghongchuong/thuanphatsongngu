@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <nav class="container">
            <div class="vk-breadcrumb__wrapper">
                <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                    <li class="vk-list__item"><a href="index.html"><i class="vk-icon fa fa-home"></i> @if($lang == 'vi') {{$biendich[0]->name_vi}} @elseif($lang == 'en') {{$biendich[0]->name_en}}  @endif</a></li>
                    <li class="vk-list__item active">@if($lang =='vi') {{"Tuyển dụng"}} @elseif($lang =='en') {{"Recruiment"}} @endif</li>
                </ul>
            </div>

        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="vk-page vk-page--news">

        <div class="container">
            <h1 class="vk-page__heading">@if($lang =='vi') {{"Tuyển dụng"}} @elseif($lang =='en') {{"Recruiment"}} @endif</h1>
            <div class="vk-recruitment__list row">
                @foreach($tintuc as $item)
                <div class="col-sm-6 col-lg-3 _item">
                    <div class="vk-recruitment-item">
                        <h2 class="vk-recruitment-item__title"><a href="news-detail.html" title="Môi trường làm việc">@if($lang == 'vi') {{$item->name}} @else($lang =='en') {{$item->name_en}} @endif</a></h2>
                        <div class="vk-img vk-img--cover">
                            <a href="{{url('tuyen-dung/'.$item->alias.'.html')}}" title="@if($lang == 'vi') {{$item->name}} @else($lang =='en') {{$item->name_en}} @endif" class="vk-img__link">
                                <img src="{{asset('upload/news/'.$item->photo)}}" alt="@if($lang == 'vi') {{$item->name}} @else($lang =='en') {{$item->name_en}} @endif" class="vk-img__img">
                            </a>
                        </div>

                        <div class="vk-recruitment-item__brief">
                            <p class="vk-recruitment-item__text">@if($lang == 'vi') {{$item->name}} @else($lang =='en') {{$item->name_en}} @endif</p>
                            <div class="vk-button">
                                <a href="{{url('tuyen-dung/'.$item->alias.'.html')}}" title="" class="vk-btn vk-recruitment-item__btn">Xem chi tiết >></a>
                            </div>
                        </div>
                    </div> <!--./vk-recruitment-item-->
                </div>
                @endforeach
                
            </div>

        </div>

    </div><!--./page-->
    <!-- Button trigger modal -->

</section>
@endsection
