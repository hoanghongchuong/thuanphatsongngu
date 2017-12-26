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
                    <li class="vk-list__item"><a href="index.html"><i class="vk-icon fa fa-home"></i> @if($lang == 'vi') {{$biendich[0]->name_vi}} @elseif($lang == 'en') {{$biendich[0]->name_en}}  @endif</a></li>

                    <li class="vk-list__item active">@if($lang == 'vi') {{$biendich[3]->name_vi}} @elseif($lang == 'en') {{$biendich[3]->name_en}}  @endif</li>
                </ul>
            </div>

        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="vk-page vk-page--news">

        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <div class="vk-news__left">
                        <h1 class="vk-page__heading">@if($lang == 'vi') {{$biendich[3]->name_vi}} @elseif($lang == 'en') {{$biendich[3]->name_en}}  @endif</h1>
                        <div class="vk-news__list row vk-news__list--fix-top">
                            @foreach($tintuc as $item)
                            <div class="col-sm-6 col-md-4 _item">
                                <div class="vk-news-item">
                                    <div class="vk-img vk-img--cover">
                                        <a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title="@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif" class="vk-img__link">
                                            <img src="{{asset('upload/news/'.$item->photo)}}" alt="@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif" class="vk-img__img">
                                        </a>
                                    </div>

                                    <div class="vk-news-item__brief">
                                        <h2 class="vk-news-item__title"><a href="{{ url('tin-tuc/'.$item->alias.'.html') }}" title="@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif">@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}} @endif</a></h2>
                                        <p class="vk-news-item__meta"><span><i class="fa fa-user"></i> Post by: JSC Thuận Đức</span>
                                        </p>
                                        <p class="vk-news-item__text">@if($lang == 'vi') {{$item->mota}} @elseif($lang == 'en') {{$item->mota_en}} @endif</p>
                                    </div>
                                </div> <!--./vk-news-item-->
                            </div>
                            @endforeach
                        </div>

                        {!! $tintuc->links() !!}
                        <!--./vk-breadcrumb-->
                    </div>
                </div>
                @include('templates.layout.right')
            </div>

        </div>

    </div><!--./page-->

</section>
@endsection