<?php
	$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();

?>
@if(isset($slider))

	<div class="vk-home__banner">
        <div class="vk-banner vk-slider" data-slider="banner">
            @foreach($slider as $item)
            <div class="vk-img vk-img--no-scale">
                <img src="{{asset('upload/banner/'.$item->photo)}}" alt="">
            </div>
            @endforeach
        </div>
    </div> <!--./banner-->
 
@endif