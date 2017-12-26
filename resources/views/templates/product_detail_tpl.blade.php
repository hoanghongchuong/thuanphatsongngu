@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<section class="vk-content">
    <div class="vk-breadcrumb">
        <div class="vk-breadcrumb__banner">
            <div class="vk-img vk-img--cover">
                <?php @$q = DB::table('banner_content')->where('position', 5)->first(); ?>
                <img src="{{asset('upload/banner/'.@$q->image)}}" alt="" class="">
            </div>
        </div>
        <div class="vk-breadcrumb__content">
            <nav class="container">
                <ul class="vk-list vk-list--inline vk-list--breadcrumb">
                    <li class="vk-list__item"><a href="{{url('')}}">Trang chủ</a></li>
                    <li class="vk-list__item"><a href="{{url('san-pham/'.$cateProduct->alias)}}">{{$cateProduct->alias}}</a></li>

                    <li class="vk-list__item active">{{$product_detail->name}}</li>
                </ul>
            </nav>
        </div>

    </div>
     
    <div class="vk-page vk-page--shop">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">

                    <div class="vk-shop-detail__top">
                        <div class="vk-shop-detail__thumbnail">
                            <div class="slider-for">
                                @if(count($album_hinh)>0)
                                    @foreach($album_hinh as $img)
                                    <div class=" _item">
                                        <div class="vk-shop-detail-item">
                                            <div class="vk-img vk-img--mw100 vk-img--scale-14">
                                                <img src="{{asset('upload/hasp/'.$img->photo)}}" alt="{{$product_detail->name}}" class="vk-img__img">
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                @else 
                                    <div class=" _item">
                                        <div class="vk-shop-detail-item">
                                            <div class="vk-img vk-img--mw100 vk-img--scale-14">
                                                <img src="{{asset('upload/product/'.$product_detail->photo)}}" alt="{{$product_detail->name}}" class="vk-img__img">
                                            </div>
                                        </div>
                                    </div>
                                @endif
                                
                            </div>
                            <div class="slider-nav vk-slider vk-slider--arrow-style-1">
                                @if(count($album_hinh)>0)
                                    @foreach($album_hinh as $img)
                                    <div class=" _item">
                                        <div class="vk-shop-detail-item">
                                            <div class="vk-img vk-img--mw100 vk-img--scale-14">
                                                <img src="{{asset('upload/hasp/'.$img->photo)}}" alt="{{$product_detail->name}}" class="vk-img__img">
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                @else 
                                    <div class=" _item">
                                        <div class="vk-shop-detail-item">
                                            <div class="vk-img vk-img--mw100 vk-img--scale-14">
                                                <img src="{{asset('upload/product/'.$product_detail->photo)}}" alt="{{$product_detail->name}}" class="vk-img__img">
                                            </div>
                                        </div>
                                    </div>
                                @endif

                            </div>
                        </div> 

                        <div class="vk-shop-detail__brief">
                            <h1 class="vk-shop-detail__title vk-page__heading text-uppercase">{{$product_detail->name}}</h1>
                            <div class="vk-rate vk-text--yellow-1">
                                @for($i=0; $i< ($product_detail->ratepoint); $i++)
                                <span class="vk-rate__item"><i class="fa fa-star"></i></span>
                                @endfor
                            </div>
                            <p>
                                {!! $product_detail->mota !!}
                            </p>
                            <div class="vk-divider"></div>

                            <p style="font-size: 16px;"><strong>Thông số kỹ thuật</strong></p>
                            <ol class="vk-shop-detail__list">
                                 <?php $properties = explode('###', $product_detail->properties);
                                  ?>
                                 @if(!empty($properties))
                                    @for($i=0; $i< count($properties); $i++)
                                    <li>{{$properties[$i]}}</li>
                                    @endfor
                                 @endif   
                            </ol>
                        </div>
                    </div> 

                    <div class="vk-shop-detail__bot">
                        <h2 class="vk-shop-detail__heading">Thông tin sản phẩm</h2>
                        <div class="">{!! $product_detail->content !!}</div>

                        <div class="vk-comment">
                             <div class="fb-comments" data-href="{{url('tin-tuc/'.$product_detail->alias.'.html')}}" data-width="100%" data-numposts="5"></div>
                        </div>

                    </div> 

                </div> 

                <div class="col-lg-3">
                    <aside class="vk-sidebar">

                        <div class="vk-sidebar__box">
                            <h3 class="vk-heading vk-heading--style-1">DANH MỤC SẢN PHẨM</h3>
                            <ul class="vk-list vk-list--style-2 text-uppercase">
                                @foreach($cate_pro as $cate)
                                <li class="vk-list__item @if($cate->alias == $cateProduct->alias)active @endif"><a href="{{url('san-pham/'.$cate->alias)}}" title="">{{$cate->name}}</a></li>
                                @endforeach
                            </ul>
                        </div>

                        <div class="vk-sidebar__box d-none d-lg-block">
                            <div class="vk-ads vk-img">
                                <?php $qc = DB::table('lienket')->where('com','chuyen-muc')->get(); ?>
                                @foreach($qc as $q)
                                <a href="" title="">
                                    <img src="{{asset('upload/hinhanh/'.$q->photo)}}" alt="" >
                                </a>
                                @endforeach
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
            <div class="vk-shop-related">
                <h3 class="vk-shop-related__heading">Các sản phẩm liên quan khác</h3>
                <div class="vk-shop-related__list vk-slider row" data-slider="shop-related">
                    @foreach($productSameCate as $item)
                    <div class="col-lg-4 _item">
                        <div class="vk-shop-item animation fadeIn">
                            <div class="vk-img vk-img--mw100">
                                <a href="{{url('san-pham/'.$item->alias.'.html')}}" title="{{$item->name}}" class="vk-img__link">
                                    <img src="{{asset('upload/product/'.$item->photo)}}" alt="{{$item->name}}" class="vk-img__img">
                                </a>
                            </div>
                            <div class="vk-shop-item__brief">
                                <h3 class="vk-shop-item__title"><a href="{{url('san-pham/'.$item->alias.'.html')}}" title="{{$item->name}}">{{$item->name}}</a></h3>
                                <div class="vk-rate vk-text--yellow-1">
                                    @for($i=0; $i< ($item->ratepoint); $i++)
                                    <span class="vk-rate__item"><i class="fa fa-star"></i></span>
                                    @endfor
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div> 
        </div>
    </div>
    <div class="vk-partner animation fadeIn">

        <div class="container">
            <div class="vk-partner__list row vk-slider" data-slider="partner">
                <?php $partners = DB::table('partner')->where('status',1)->orderBy('id','desc')->get(); ?>
                @foreach($partners as $partner)
                <div class="col-lg-2 _item">
                    <div class="vk-partner__item">
                        <div class="vk-img--mw100">
                            <img src="{{asset('upload/banner/'.$partner->photo)}}" alt="">
                        </div>
                    </div>
                </div>
                @endforeach  
            </div>
        </div><!-- /.container -->
    </div> <!--./partner-->
    <div class="vk-map">
       {!! $setting->iframemap !!}
    </div>

</section>

@endsection
