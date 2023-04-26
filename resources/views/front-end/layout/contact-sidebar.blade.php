<form class="contact_form" id="contact_form" name="contact_form" action="{{URL::route('addContact')}}" method="post" novalidate="novalidate">
    {{ csrf_field() }}
    <div class="sidebar_listing_list">
        <div class="sidebar_advanced_search_widget">
            <div class="sl_creator">
                <h4 class="title pb10 mb20">{{__('Liên hệ phòng kinh doanh')}}</h4>
                <div class="media mb10">
                    <img class="mr-3" width="50" style="border-radius: 50%" src="{{asset('images/cskh.jpg')}}" alt="lc1.png">
                    <div class="media-body">
                        <h5 class="mt-0 mb0">{{__('nhân viên kinh doanh')}}</h5>
                        <!-- <p class="mt5">{{__('nhân viên kinh doanh')}}</p> -->
                        <!-- <p class="mb0">{{$system->email}}</p> -->
                        <!-- <a class="text-thm" href="#">View My Listing</a> -->
                    </div>
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
            <ul class="sasw_list mb0">
                <li class="search_area">
                    <div class="form-group">
                        <input type="text" class="form-control" id="exampleInputName1" name="name" placeholder="{{__('họ tên')}}">
                    </div>
                </li>
                <li class="search_area">
                    <div class="form-group">
                        <input type="number" class="form-control" id="exampleInputName2" name="phone" placeholder="{{__('điện thoại')}}">
                    </div>
                </li>
                <li class="search_area">
                    <div class="form-group">
                        <input type="email" class="form-control" id="exampleInputEmail" name="email" placeholder="{{__('email')}}">
                    </div>
                </li>
                <li class="search_area">
                    <div class="form-group">
                        <textarea id="form_message" name="form_message" class="form-control required" name="message" rows="3" required="required" placeholder="{{__('ghi chú')}}"></textarea>
                    </div>
                </li>
                <li>
                    <div class="search_option_button">
                        <button type="submit" class="btn btn-block btn-thm">{{__('gửi yêu cầu')}}</button>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</form>
