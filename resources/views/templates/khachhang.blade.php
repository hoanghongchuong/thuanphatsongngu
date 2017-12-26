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
    <div class="vk-breadcrumb">
        <nav class="container">
            <div class="vk-breadcrumb__wrapper">
                <ul class="vk-list vk-list--inline vk-breadcrumb__list">
                    <li class="vk-list__item"><a href="{{url('')}}"><i class="vk-icon fa fa-home"></i> @if($lang == 'vi') {{$biendich[0]->name_vi}} @elseif($lang == 'en') {{$biendich[0]->name_en}}  @endif</a></li>

                    <li class="vk-list__item active">@if($lang == 'vi') {{"Khách hàng"}} @elseif($lang == 'en') {{"Customer"}}  @endif</li>
                </ul>
            </div>

        </nav>
    </div>
    <!--./vk-breadcrumb-->    
    <div class="vk-page vk-page--customer">

        <div class="container">
            <h1 class="vk-page__heading">@if($lang == 'vi') {{"Khách hàng"}} @elseif($lang == 'en') {{"Customer"}}  @endif</h1>

            <div class="vk-customer__list row">
				@foreach($data as $item)
                <div class="col-6 col-sm-3 col-lg-2 _item">
                    <div class="vk-customer-item">
                        <span class="flag-icon flag-icon-af"></span>
                        <div class="vk-customer-item__biref">
                            <h3 class="vk-customer-item__title">@if($lang == 'vi') {{$item->name}} @elseif($lang == 'en') {{$item->name_en}}  @endif</h3>
                        </div>
                    </div>
                </div>
				@endforeach
                
            </div>

        </div>

    </div><!--./page-->

</section>
@endsection