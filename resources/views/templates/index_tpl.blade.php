@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$lang = Cache::get('lang');
$cateProducts = Cache::get('cateProducts');
$banner = DB::table('banner_content')->where('position',1)->get();
$lang = Cache::get('lang');
$biendich = Cache::get('biendich');
// dd($tintuc_moinhat);
?>

<section class="vk-content">
    <div class="vk-home">
        <div class="container">

            <div class="vk-home__banner">
                <div class="vk-banner vk-slider" data-slider="banner">
                    <div class="vk-img vk-img--no-scale">
                        <img src="{{asset('public/images/banner/banner-2.jpg')}}" alt="">
                    </div>
                    <div class="vk-img vk-img--no-scale">
                        <img src="{{asset('public/images/banner/banner-2.jpg')}}" alt="">
                    </div>
                </div>
            </div> <!--./banner-->

            <div class="vk-home__cate">
                <h1 class="vk-cate__heading">@if($lang =='vi') {!!$setting->slogan!!} @elseif($lang == 'en') {!!$setting->slogan_en!!} @endif</h1>
                <div class="vk-cate__list row">
                    @foreach($cate_pro as $cate)
                    <div class="col-lg-6 _item">
                        <div class="vk-cate-item">
                            <div class="vk-img vk-img--cover">
                                <a href="shop.html" title="Hạt nhựa tái sinh pp">
                                    <img src="{{asset('upload/product/'.$cate->photo)}}" alt="Hạt nhựa tái sinh pp" class="vk-img__img">
                                </a>
                            </div>
                            <div class="vk-cate-item__brief">
                                <h3 class="vk-cate-item__title"><a href="shop.html" title="Hạt nhựa tái sinh pp">@if($lang == 'vi') {{$cate->name}} @elseif($lang == 'en') {{$cate->name_en}}  @endif</a></h3>
                                <p class="vk-cate-item__text">
                                    @if($lang == 'vi') {!!$cate->mota!!} @elseif($lang == 'en') {!!$cate->mota_en!!}  @endif
                                </p>
                            </div>
                        </div>
                        
                    </div>
                    @endforeach
                    
                </div>
            </div> <!--./cate-->

            <div class="vk-home__news">
                <div class="row">
                    <div class="col-lg-6">
                        <h2 class="vk-home__title">@if($lang == 'vi') {{$biendich[5]->name_vi}} @elseif($lang == 'en') {{$biendich[5]->name_en}}  @endif</h2>
                        <div class="vk-about-item">
                            <div class="vk-img vk-img--cover">
                                <a href="{{url('gioi-thieu/'.$gioithieu->alias)}}" title="">
                                    <img src="{{asset('upload/banner/'.$gioithieu->image)}}" alt="">
                                </a>
                            </div>
                            <div class="vk-about-item__brief">
                                <p>
                                     @if($lang == 'vi') {!!$gioithieu->mota!!} @elseif($lang == 'en') {!!$gioithieu->mota_en!!}  @endif
                                </p>
                                <a href="{{url('gioi-thieu/'.$gioithieu->alias)}}" title="" class="vk-about-item__link">@if($lang == 'vi') {{$biendich[26]->name_vi}} @elseif($lang == 'en') {{$biendich[26]->name_en}}  @endif ></a>
                            </div>
                        </div>
                    </div>  <!--./col-->

                    <div class="col-lg-6">
                        <h2 class="vk-home__title">@if($lang == 'vi') {{$biendich[3]->name_vi}} @elseif($lang == 'en') {{$biendich[3]->name_en}}  @endif</h2>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="vk-news-item vk-news-item--home">
                                    <div class="vk-img vk-img--cover">
                                        <a href="{{url('tin-tuc/'.$tintuc_moinhat[0]->alias.'.html')}}" title="@if($lang == 'vi') {{$tintuc_moinhat[0]->name}}
                                                @elseif ($lang =='en') {{$tintuc_moinhat[0]->name_en}}
                                                @endif" class="vk-img__link">
                                            <img src="{{asset('upload/news/'.$tintuc_moinhat[0]->photo)}}" alt="@if($lang == 'vi') {{$tintuc_moinhat[0]->name}}
                                                @elseif ($lang =='en') {{$tintuc_moinhat[0]->name_en}}
                                                @endif" class="vk-img__img">
                                        </a>
                                    </div>

                                    <div class="vk-news-item__brief">
                                        <h2 class="vk-news-item__title">
                                            <a href=" {{url('tin-tuc/'.$tintuc_moinhat[0]->alias.'.html')}}" title="@if($lang == 'vi') {{$tintuc_moinhat[0]->name}}
                                                @elseif ($lang =='en') {{$tintuc_moinhat[0]->name_en}}
                                                @endif">
                                                @if($lang == 'vi') {{$tintuc_moinhat[0]->name}}
                                                @elseif ($lang =='en') {{$tintuc_moinhat[0]->name_en}}
                                                @endif
                                            </a>
                                        </h2>
                                       <!--  <p class="vk-news-item__meta"><span><i class="fa fa-user"></i> Post by: JSC Thuận Đức</span>
                                            <span><i class="fa fa-comments-o"></i> 0 comment</span></p> -->
                                        <p class="vk-news-item__text">
                                            <span class="d-none d-lg-block"> @if($lang == 'vi') {{$tintuc_moinhat[0]->mota}}
                                                @elseif ($lang =='en') {{$tintuc_moinhat[0]->mota_en}}
                                                @endif
                                            </span>
                                            
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 pl-0">
                                <div class="vk-news__list vk-news__list--home row">
                                    @for($i = 1; $i < count($tintuc_moinhat); $i++)
                                    <div class="col-lg-12 _item">
                                        <div class="vk-news-item vk-news-item--mod1">
                                            <div class="vk-img vk-img--mw100">
                                                <a href="{{url('tin-tuc/'.$tintuc_moinhat[$i]->alias.'.html')}}" title="@if($lang == 'vi') {{$tintuc_moinhat[$i]->name}}
                                                @elseif ($lang =='en') {{$tintuc_moinhat[$i]->name_en}}
                                                @endif" class="vk-img__link">
                                                    <img src="{{ asset('upload/news/'.$tintuc_moinhat[$i]->photo) }}" alt="@if($lang == 'vi') {{$tintuc_moinhat[$i]->name}}
                                                @elseif ($lang =='en') {{$tintuc_moinhat[$i]->name_en}}
                                                @endif" class="vk-img__img">
                                                </a>
                                            </div>

                                            <div class="vk-news-item__brief">
                                                <h2 class="vk-news-item__title"><a href="{{url('tin-tuc/'.$tintuc_moinhat[$i]->alias.'.html')}}" title="@if($lang == 'vi') {{$tintuc_moinhat[$i]->name}}
                                                @elseif ($lang =='en') {{$tintuc_moinhat[$i]->name_en}}
                                                @endif">@if($lang == 'vi') {{$tintuc_moinhat[$i]->name}}
                                                @elseif ($lang =='en') {{$tintuc_moinhat[$i]->name_en}}
                                                @endif</a></h2>

                                            </div>
                                        </div> <!--./vk-news-item-->
                                    </div>
                                    @endfor            
                                    
                                </div>
                            </div>
                        </div>

                    </div> <!--./col-->
                </div>
            </div> <!--./news-->

            <div class="vk-home__quality">
                <div class="vk-quality__list row">
                @foreach($slogans as $slogan)
                    <div class="col-lg-4 _item">
                        <div class="vk-quality-item">
                            <div class="vk-img vk-img--cover">
                                <img src="{{asset('upload/hinhanh/'.$slogan->photo)}}" alt="Giao hàng kịp thời">

                            </div>
                            <div class="vk-quality-item__brief">
                                <h3 class="vk-quality-item__title">@if($lang == 'vi') {{$slogan->name_en}}
                                                @elseif ($lang =='en') {{$slogan->name_en}}
                                                @endif</h3>
                                <p class="vk-quality-item__text">
                                    @if($lang == 'vi') {!!$slogan->content!!}
                                                @elseif ($lang =='en') {!!$slogan->content_en!!}
                                                @endif
                                </p>
                            </div>
                        </div>
                    </div>
                @endforeach
                    
                </div>
            </div> <!--./quality-->

        </div>
        <!-- /.container -->
    </div><!--./page-->

</section>
@endsection
