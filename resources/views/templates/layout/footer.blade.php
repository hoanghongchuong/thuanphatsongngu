<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $cateProducts = Cache::get('cateProducts');
?>
<footer class="vk-footer">
    <div class="vk-footer__top">
        <div class="container">
            <div class="vk-footer__top-content">
                <div class="vk-footer__item">
                    <h3 class="vk-footer__heading">{{$setting->company}}</h3>
                    <ul class="vk-list vk-list--icon">
                        <li class="vk-list__item"><i class="_icon fa fa-paper-plane"></i> Head office: @if($lang =='vi') {{$setting->address}} @elseif($lang =='en') {{$setting->address_en}} @endif<br>
                            
                        </li>
                        <li class="vk-list__item"><i class="_icon fa fa-phone"></i> @if($lang == 'vi') {{$biendich[12]->name_vi}} @elseif($lang == 'en') {{$biendich[12]->name_en}} @endif: <a href="callto:{{$setting->phone}}" title="">{{$setting->phone}}</a></li>
                        <li class="vk-list__item"><i class="_icon fa fa-phone"></i> Hotline :
                            <a href="callto:{{$setting->phone}}" title="">{{$setting->hotline}}</a>
                        </li>

                    </ul>
                </div>  <!--./item-->
                <div class="vk-footer__item">
                    <h3 class="vk-footer__heading">@if($lang == 'vi') {{$biendich[27]->name_vi}} @elseif($lang == 'en') {{$biendich[27]->name_en}}  @endif</h3>
                    <ul class="vk-list vk-list--partner">
                        <?php $doitac = DB::table('partner')->take(3)->orderBy('id','desc')->get(); ?>
                        @foreach($doitac as $dt)
                        <li class="vk-list__item">
                            <a href="{{$dt->url}}" title=""><img src="{{asset('upload/banner/'.$dt->photo)}}" width="76px" height="35px" alt=""></a></li>
                        @endforeach
                    </ul>

                </div>  <!--./item-->
                <div class="vk-footer__item">
                    <h3 class="vk-footer__heading">VIDEO</h3>
                    <div class="vk-embeb embed-responsive embed-responsive-16by9">
                       <?php $video = DB::table('video')->first(); ?>
                       {!! $video->link !!}
                    </div>

                </div>  <!--./item-->
                <div class="vk-footer__item">
                    <h3 class="vk-footer__heading">@if($lang == 'vi') {{$biendich[28]->name_vi}} @elseif($lang == 'en') {{$biendich[28]->name_en}}  @endif</h3>
                    <ul class="vk-list vk-list--social-footer">
                        <li class="vk-list__item facebook"><a href="{{$setting->facebook}}" title=""><i class="fa fa-facebook"></i></a></li>
                        <li class="vk-list__item twitter"><a href="{{$setting->twitter}}" title=""><i class="fa fa-twitter"></i></a></li>
                        <li class="vk-list__item google-plus"><a href="{{$setting->google}}" title=""><i class="fa fa-google-plus"></i></a></li>
                    </ul>

                </div>  <!--./item-->

            </div>
        </div>
    </div>

    <div class="vk-footer__bot">
        <div class="container">
            <div class="vk-footer__bot-content">
                © 2017 - Bản quyền thuộc về GCO Group.
            </div>
        </div>
    </div> <!--./vk-footer__bot-->
</footer><!--./vk-footer-->

<div class="vk-anchor">
    <div class="container">
        <div class="vk-anchor__content">
            <div class="vk-hotline">
                <div class="vk-hotline__icon"><i class="fa fa-volume-control-phone"></i></div>
                <div class="vk-hotline__text">HOTLINE <a href="callto:{{$setting->hotline}}" title="">{{$setting->hotline}}</a></div>
            </div>
            <!-- <div class="vk-support">
                <a href="#" title="">
                    <img src="{{asset('public/images/other/support.png')}}" alt="" class="img-fluid">
                </a>
            </div>
        </div> -->

    </div>
</div>

<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=124844007858325";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>