<?php
    $setting = Cache::get('setting');
    $menu_top = Cache::get('menu_top');
    $cateProducts = Cache::get('cateProducts');
    $about = Cache::get('about');
    $gioithieu = DB::table('gioithieu')->orderBy('id','desc')->get();
    $lang = Cache::get('lang');
    $biendich = Cache::get('biendich');
?>

<header class="vk-header">
    <div class="vk-header__top" data-layout="sticky">
        <div class="container">
            <div class="vk-header__top-content">
                <a href="#menu" title="" class="vk-btn vk-header__menu-btn">
                    <i class="fa fa-bars"></i>
                </a>
                <ul class="vk-list vk-list--inline vk-header__top-list">
                    <li class="vk-list__item"><a href="callto:{{$setting->phone}}" title=""><i class="fa fa-mobile-phone"></i>&nbsp; {{$setting->phone}}</a></li>
                    <li class="vk-list__item"><a href="mailto:{{$setting->email}}" title=""><i class="fa fa-envelope-o"></i>&nbsp; {{$setting->email}}</a></li>
                    <li class="vk-list__item">
                        <div class="vk-lang">
                            <a href="{{url('langs/vi')}}" title=""><span class="flag-icon flag-icon-vn"></span></a>
                            <a href="{{url('langs/en')}}" title=""><span class="flag-icon flag-icon-gb"></span></a>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
    </div>
    <div class="vk-header__mid">
        <div class="container">
            <div class="vk-header__mid-content">
                <div class="vk-header__logo">
                    <div class="vk-logo__img">
                        <a href="{{url('')}}" title="">
                            <img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="" class="img-fluid">
                        </a>
                    </div>
                    <div class="vk-logo__text">
                        <p class="vk-logo__heading">THUANDUCJSC</p>
                        <p class="vk-logo__title">@if($lang == 'vi') {{$biendich[33]->name_vi}} @elseif($lang == 'en') {{$biendich[33]->name_en}}  @endif</p>
                    </div>
                </div>
                <div class="vk-header__search">
                    <form method="get" action="{{ route('search') }}">
                        {{ csrf_field() }}
                        <div class="vk-form vk-form__search">
                            <input type="text" placeholder="@if($lang == 'vi') {{ $biendich[18]->name_vi }} @elseif($lang == 'en') {{$biendich[18]->name_en}} @endif" name="txtSearch" class="form-control">
                            <button class="vk-btn vk-form__btn" type="button"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- /.container -->
    </div>
    <div class="vk-header__bot">
        <div class="container">
            <nav class="vk-menu__wrapper">
                <ul class="vk-menu__main vk-list vk-list--inline">
                    <?php $menus = DB::table('menu')->where('status',1)->where('parent_id', 0)->orderBy('stt','asc')->get(); ?>
                    @foreach($menus as $menu)
                    <li class="vk-list__item @if($menu->id == 12) has-meta-menu @endif ">
                        <a href="{{$menu->alias}}" title="">@if($lang == 'vi') {{$menu->name}} @elseif($lang =='en') {{$menu->name_en}} @endif</a>
                        <ul class="vk-list vk-menu__child">
                        <?php $childs = DB::table('menu')->where('status',1)->where('parent_id', $menu->id)->get(); ?>
                        @if(count($childs) > 0)
                            @foreach($childs as $a)
                                <li class="vk-list__item"><a href="{{$a->alias}}" title="">@if($lang == 'vi') {{$a->name}} @elseif($lang =='en') {{$a->name_en}} @endif</a></li>
                            @endforeach 
                        @endif
                        </ul>
                    </li>
                    @endforeach
                  
                </ul>

                <div class="vk-menu__meta" id="metaMenu">
                    <div class="row">
                        @foreach($cateProducts as $cate)
                        <div class="col-lg-3">
                            <div class="vk-menu-meta__item">
                                <div class="vk-img vk-img--cover">
                                    <a href="{{url('san-pham/'.$cate->alias)}}" title="">
                                        <img src="{{asset('upload/product/'.$cate->photo)}}" alt="" class="vk-img__img">
                                    </a>
                                </div>

                                <h3 class="vk-menu-meta__title"><a href="{{url('san-pham/'.$cate->alias)}}" title="">@if($lang =='vi') {{$cate->name}} @elseif($lang =='en') {{$cate->name_en}} @endif</a></h3>

                                <ul class="vk-list vk-menu-meta__list">
                                    <?php $cateChilds = DB::table('product_categories')->where('parent_id', $cate->id)->get(); ?>
                                    @foreach($cateChilds as $cateChild)
                                    <li class="vk-list__item"><a href="{{url('san-pham/'.$cateChild->alias)}}" title="">@if($lang =='vi') {{$cateChild->name}} @elseif($lang =='en') {{$cateChild->name_en}} @endif</a></li>
                                    @endforeach
                                </ul>
                            </div>
                        </div> <!--./col-->
                        @endforeach
                    </div>
                </div>
            </nav>
        </div>
        <!-- /.container -->
        <nav id="menu" class="vk-menu__mobile">
            <ul class="" >
               <?php $menus = DB::table('menu')->where('status',1)->where('parent_id', 0)->orderBy('stt','asc')->get(); ?>
                @foreach($menus as $menu)
                <li class="">
                    <a href="{{$menu->alias}}" title="">@if($lang == 'vi') {{$menu->name}} @elseif($lang =='en') {{$menu->name_en}} @endif</a>
                    <?php $childs = DB::table('menu')->where('status',1)->where('parent_id', $menu->id)->get(); ?>
                        @if(count($childs) > 0)
                    <ul>
                        @foreach($childs as $a)
                            <li class="vk-list__item"><a href="{{$a->alias}}" title="">@if($lang == 'vi') {{$a->name}} @elseif($lang =='en') {{$a->name_en}} @endif</a></li>
                        @endforeach
                    </ul>
                    @endif
                </li>
                @endforeach
                
            </ul>
        </nav>

    </div>

</header> <!--./vk-header-->
