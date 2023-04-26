<div class="contact_localtion">
    <h4 >{{__('THÔNG TIN LIÊN HỆ')}}</h4>
    <div class="content_list ">

        <p class="contact-title"><i class='bx bx-home mr10' style='color:#3e4c66; font-size: 20px'></i>{{__($system->name)}}</p>
        <p class="mb10 ml30" style="font-size: 12px">{{__('mã số thuế')}}: {{$system->mst}}</p>
        <p class="mb10 ml30" style="font-size: 12px">{{__('ngày cấp')}}: 16/10/2019</p>
        <p class="mb10 ml30" style="font-size: 12px">{{__('nơi cấp')}}: {{__('Sở KH&ĐT Tp. HN')}}</p>
    </div>
    <div class="content_list">
        <span style="float: left;" class="contact-title"><i class='bx bx-map mr10' style='color:#3e4c66; font-size: 20px' ></i></span>
        <p>{{__($system->address)}}</p>
        <!-- <p>{{__($system->address)}}</p> -->
    </div>
    <div class="content_list">
        <p class="contact-title"><i class='bx bx-phone-call mr10' style='color:#3e4c66; font-size: 20px'  ></i>{{__($system->phone)}}</p>
        <!-- <p>{{__($system->phone)}}</p> -->
    </div>
    <div class="content_list">
        <p class="contact-title"><i class='fa fa-envelope-o mr10' style='color:#3e4c66; font-size: 18px' ></i>{{$system->email}}</p>
        <!-- <p>{{$system->email}}</p> -->
    </div>
    
    <h5 class="contact-title">{{__('kênh liên kết')}}</h5>
    <ul class="contact_form_social_area">
        <li class="list-inline-item" ><a target="_blank" href="{{$system->facebook}}">
            <img src="{{asset('images/icon-fb.png')}}" alt="">
        </a></li>
        <li class="list-inline-item"><a target="_blank" href="{{$system->instagram}}">
            <img src="{{asset('images/icon-insta.png')}}" alt="">
        </a></li>
        <li class="list-inline-item"><a target="_blank" href="{{$system->blog_naver}}">
            <img src="{{asset('images/icon-blog-naver.png')}}" alt="">
        </a></li>
        <li class="list-inline-item"><a target="_blank" href="https://zalo.me/{{$system->zalo}}">
            <img src="{{asset('images/icon-zalo.png')}}" alt="">
        </a></li>
        <li class="list-inline-item"><a target="_blank" href="{{$system->youtube}}">
            <img src="{{asset('images/icon-youtube.png')}}" alt="">
        </a></li>
    </ul>
</div>