@extends('front-end.layout.default')

@section('head')
	    <meta name="robots" content="noodp,index,follow" />
	    <meta name="google" content="notranslate" />
	    <meta name="keywords" content="{{$system->seo_keyword}}" />
	    <meta name="description" content="{{$system->seo_description}}" />
	    <meta property="og:type" content="website" />
        <meta property="og:title" content="{{$system->title}}" />
	    <meta property="og:description" content="{{$system->seo_description}}" />
        <meta property="og:url" content="{{$system->website}}" />
        <meta property="og:image" content="{{asset('uploads/images/ogimage/'.$system->ogimage)}}" />
        <meta property="og:locale" content="vi_VN" />
	    <title>{{$system->title}}</title>
        <style type="text/css">
            .effect {
              text-align: center;
              display: inline-block;
              position: relative;
              text-decoration: none;
              color: #fff;
              text-transform: capitalize;
              /* background-color: - add your own background-color */
              /*font-family: "Roboto", sans-serif;*/
              /* put your font-family */
              font-size: 18px;
              padding: 20px 0px;
              width: 150px;
              border-radius: 6px;
              overflow: hidden;
            }

            /* effect-1 styles */
            .effect.effect-1 {
              transition: all 0.2s linear 0s;
            }
            .effect.effect-1:before {
              content: "";
              font-family: FontAwesome;
              font-size: 15px;
              position: absolute;
              display: flex;
              align-items: center;
              justify-content: center;
              right: 0;
              top: 0;
              opacity: 0;
              height: 100%;
              width: 40px;
              transition: all 0.2s linear 0s;
            }
            .effect.effect-1:hover {
              text-indent: -20px;
            }
            .effect.effect-1:hover:before {
              opacity: 1;
              text-indent: 0px;
            }
            .show-more{
                padding: 5px 10px;
                background: #b80000;
                border-radius: 30px;
            }
            .show-more:hover {
                color: #fff;
                background: #cb0006;
                box-shadow: 0px 0px 10px 0px #ff4800;
                transition: 0.3s;
            }
            .our-contact {
                /*background: url('images/bg-pattern-dot.png') 0 0 repeat !important;*/
                background: url('images/bg-contact.png');
                background-size: cover;
                background-attachment: fixed;
            }
            .our-team {
                /*background: url('images/bg-pattern-dot.png') 0 0 repeat !important;*/
                
            }
            .contact-title:before {
                top: 0;
                left: 0;
                bottom: 0;
                width: 5px;
                content: '';
                border-radius: 3px;
                position: absolute;
                background-color: #ffc107;
            }
            /*out team*/
            .team-upper-part {
                position: relative;
                overflow: hidden;
                text-align: center;
            }
            .team-upper-part .social-list {
                position: absolute;
                bottom: -37px;
                width: 100%;
                transition: 600ms;
                transform: scaleY(0);
                z-index: 1;
            }
            .team-upper-part .social-list li {
                float: none;
                margin-right: 2px;
                display: inline;
            }
            .team-upper-part .social-list li a {
                border-radius: 5px;
                background: #f3f1f200;
                color: #03324d;
            }
            .social-list li a {
                background: #303743;
                height: 35px;
                width: 35px;
                display: inline-block;
                color: #fff;
                text-align: center;
                border-radius: 50%;
                line-height: 42px;
                font-size: 16px;
            }
            .team-block:hover .team-upper-part .social-list {
                transform: scaleY(1);
                bottom: 30px;
            }
            .team-block .team-bottom-part {
                text-align: center;
                padding: 30px 20px;
                position: relative;
                /*background: #f8f8f8;*/
            }
            .team-block .team-bottom-part:before {
                content: "";
                position: absolute;
                background: #b80000;
                bottom: 0;
                height: 3px;
                width: 0;
                left: 0;
                transition: 600ms;
                right: 0;
                margin: 0 auto;
            }
            .team-block .team-bottom-part:after {
                content: "";
                height: 3px;
                width: 40%;
                left: 0;
                right: 0;
                margin: 0 auto;
                position: absolute;
                bottom: 0;
                background: #b80000;
                transition: 400ms;
            }
            .team-block:hover .team-bottom-part:before {
                width: 100%;
            }
            .team-upper-part:after {
                content: "";
                position: absolute;
                background: #03324d;
                height: 100%;
                width: 100%;
                left: 0;
                top: 0;
                opacity: 0.7;
                z-index: 0;
                transition: 500ms;
                transform: scaleX(0);
            }
            .team-block:hover .team-upper-part:after {
                transform: scaleY(1);
            }
            .team-upper-part .social-list li a:hover {
                background: #f3f1f200;
                color: #fff;
            }
            .why_chose_us .details h3{
                height: 50px;
                font-size: 16px;
            }
            .why_chose_us .details p{
                height: 150px;

            }
            /* === HEADING STYLE #1 === */
            h2 {
              position: relative;
              padding: 0;
              margin: 0;
              /*font-family: "Raleway", sans-serif;*/
              font-weight: 300;
              font-size: 40px;
              color: #080808;
              -webkit-transition: all 0.4s ease 0s;
              -o-transition: all 0.4s ease 0s;
              transition: all 0.4s ease 0s;
            }
            .main-title h2 {
              text-align: center;
              text-transform: uppercase;
              padding-bottom: 5px;
            }
            .main-title h2:before {
              width: 28px;
              height: 5px;
              display: block;
              content: "";
              position: absolute;
              bottom: 3px;
              left: 50%;
              margin-left: -14px;
              background-color: #b80000;
            }
            .main-title h2:after {
              width: 100px;
              height: 1px;
              display: block;
              content: "";
              position: relative;
              margin-top: 10px;
              left: 50%;
              margin-left: -50px;
              background-color: #b80000;
            }
            .slider-item{
                overflow: hidden;
            }
            /*css popup*/
            .background-popup {
                width: 100%; 
                height: 10000px; 
                background-color: #000; 
                opacity: 0.7; 
                position: fixed; 
                top: 0px; 
                z-index: 10000;
            }
            .popup {
                width: 700px; 
                /*height: 500px; */
                position: fixed; 
                top: 25%; 
                left: 25%; 
                z-index: 20000; 
                top: 50%; 
                left: 50%; 
                margin-left: -350px; 
                margin-top: -300px;
                /*background-color: #086748;*/
            }
            .close-popup {
                position: absolute; 
                right: -50px; 
                top: -50px;
            }
            .close-popup a {
                color: red; 
                font-size: 40px; 
                font-weight: 800;

            }
            @media (max-width: 768px) {
                .popup {
                    width: 340px; 
                    /*height: 340px; */
                    position: fixed; 
                    top: 25%; 
                    left: 25%; 
                    z-index: 20000; 
                    top: 50%; 
                    left: 50%; 
                    margin-left: -170px; 
                    margin-top: -170px;
                }
                .close-popup {
                    position: absolute; 
                    right: 0px; 
                    top: -50px;
                }
                .hoa-dao-left {
                    display: none;
                }
                .hoa-dao-right {
                    display: none;
                }
            }
            /*end css popup*/
        </style>
@endsection


@section('content')
    @if(isset($popup))
    <div class="main-popup">

        <div class="background-popup">
            
        </div>
        <div class="popup">
            <div class="close-popup">
                <a href="#" title="ĐÓNG">[X]</a>
                
            </div>
            <a href="{{$popup->href}}" target="{{$popup->target}}" class=" bdr_none" ng-click="signup()">
                <img src="{{asset('uploads/images/popups/'.$popup->url)}}" alt="Popup" width="100%">
            </a>
            
        </div>
    </div>
    @endif
    <section class="main-slider pt0 pb0 m0a">
        
            <div class="container-fluid p0">
                <!-- <div class="row">
                    <div class="col-md-12"> -->
                        <div class="main-banner-wrapper home10">
                            <div class="fp_single_item_slider ovh">
                                @foreach($slides as $item)
                                    <div class="item" href="{{$item->href}}">
                                        <a href="{{$item->href}}" target="{{$item->target}}">
                                            <img width="100%" src="{{asset('uploads/images/sliders/'.$item->url)}}" alt="">
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    <!-- </div>
                </div> -->
            </div>
        
    </section>  
    
    <!-- Nổi bật -->
    <section id="best-property" class="best-property pb30 pt30 maxw1600 m0a" style="z-index: 0;">
        <div class="container">
            <div class="row posr">
                <div class="col-lg-12">
                    <div class="home_content home6">
                        
                        <div class="home_adv_srch_opt home6">
                            <ul class="nav nav-pills" id="pills-tab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="pills-ban" data-toggle="pill" href="#ban" role="tab" aria-controls="pills-ban" aria-selected="true">{{__('Đang bán')}}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="pills-thue" data-toggle="pill" href="#thue" role="tab" aria-controls="pills-thue" aria-selected="false">{{__('Cho thuê')}}</a>
                                </li>
                            </ul>
                            <div class="tab-content home1_adsrchfrm" id="pills-tabContent">
                                <div class="tab-pane fade show active" id="ban" role="tabpanel" aria-labelledby="pills-ban">
                                    <div class="home1-advnc-search home6">
                                        <form action="search-b">
                                            <ul class="h1ads_1st_list mb0 row">
                                                <li class="list-inline-item col-md-3">
                                                    <div class="form-group">
                                                        <input type="text" name="keyword" class="form-control" id="exampleInputName1" placeholder="{{__('Nhập từ khóa')}}...">
                                                    </div>
                                                </li>
                                                <li class="list-inline-item col-md-2">
                                                    <div class="search_option_two">
                                                        <div class="candidate_revew_select">
                                                            <select class="selectpicker w100 show-tick" name="bed">
                                                                <option value="">{{__('phòng ngủ')}}</option>
                                                                <option value="1PN">{{__('1PN')}}</option>
                                                                <option value="1PN+1">{{__('1PN+1')}}</option>
                                                                <option value="2PN">{{__('2PN')}}</option>
                                                                <option value="2PN+1">{{__('2PN+1')}}</option>
                                                                <option value="3PN">{{__('3PN')}}</option>
                                                                <option value="3PN+1">{{__('3PN+1')}}</option>
                                                                <option value="4PN">{{__('4PN')}}</option>
                                                                <option value="5PN">{{__('5PN')}}</option>
                                                                <option value="Dual Key">{{__('Dual Key')}}</option>
                                                                <option value="Studio">{{__('Studio')}}</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item col-md-2">
                                                    <div class="search_option_two">
                                                        <div class="candidate_revew_select">
                                                            <select class="selectpicker w100 show-tick" name="price">
                                                                <option value="">{{__('Giá bán')}}</option>
                                                                @php
                                                                    $locale = Config::get('app.locale');
                                                                @endphp
                                                                @if($locale == 'vi')
                                                                <option value="0-2000000000">{{__('Dưới 2 tỷ')}}</option>
                                                                <option value="2000000000-3000000000">{{__('Từ 2 - 3 tỷ')}}</option>
                                                                <option value="3000000000-5000000000">{{__('Từ 3 - 5 tỷ')}}</option>
                                                                <option value="5000000000-7000000000">{{__('Từ 5 - 7 tỷ')}}</option>
                                                                <option value="7000000000-9000000000">{{__('Từ 7 - 9 tỷ')}}</option>
                                                                <option value="9000000000-12000000000">{{__('Từ 9 - 12 tỷ')}}</option>
                                                                <option value="12000000000-+">{{__('Trên 12 tỷ')}}</option>
                                                                @elseif($locale == 'ko')
                                                                <option value="0-100000">{{__('100.000$ 이하')}}</option>
                                                                <option value="100000-150000">{{__('100.000 - 150.000$')}}</option>
                                                                <option value="150000-220000">{{__('150.000 - 220.000$')}}</option>
                                                                <option value="220000-300000">{{__('220.000 - 300.000$')}}</option>
                                                                <option value="300000-400000">{{__('300.000 - 400.000$')}}</option>
                                                                <option value="400000-520000">{{__('400.000 - 520.000$')}}</option>
                                                                <option value="520000-+">{{__('520.000$ 이상')}}</option>
                                                                @elseif($locale == 'en')
                                                                <option value="0-100000">{{__('Under 100.000$')}}</option>
                                                                <option value="100000-150000">{{__('100.000 - 150.000$')}}</option>
                                                                <option value="150000-220000">{{__('150.000 - 220.000$')}}</option>
                                                                <option value="220000-300000">{{__('220.000 - 300.000$')}}</option>
                                                                <option value="300000-400000">{{__('300.000 - 400.000$')}}</option>
                                                                <option value="400000-520000">{{__('400.000 - 520.000$')}}</option>
                                                                <option value="520000-+">{{__('Over 520.000$')}}</option>
                                                                @endif
                                                            </select>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item col-md-3">
                                                    <div class="search_option_two">
                                                        <div class="candidate_revew_select">
                                                            <select class="selectpicker w100 show-tick" name="huong">
                                                                <option value="">{{__('hướng')}}</option>
                                                                <option value="Tây, Nam">{{__('Tây Nam')}}</option>
                                                                <option value="Tây, Bắc">{{__('Tây Bắc')}}</option>
                                                                <option value="Tây Nam - Tây Bắc">{{__('Tây Nam - Tây Bắc')}}</option>
                                                                <option value="Tây Bắc - Đông Bắc">{{__('Tây Bắc - Đông Bắc')}}</option>
                                                                <option value="Tây Bắc">{{__('Tây Bắc')}}</option>
                                                                <option value="Đông Nam- Đông Bắc">{{__('Đông Nam - Đông Bắc')}}</option>
                                                                <option value="Đông Nam">{{__('Đông Nam')}}</option>
                                                                <option value="Đông Nam- Tây Nam">{{__('Đông Nam - Tây Nam')}}</option>
                                                                <option value="Đông Bắc">{{__('Đông Bắc')}}</option>
                                                                <option value="Chính Tây">{{__('Chính Tây')}}</option>
                                                                <option value="Chính Nam">{{__('Chính Nam')}}</option>
                                                                <option value="Chính Đông">{{__('Chính Đông')}}</option>
                                                                <option value="Chính Bắc">{{__('Chính Bắc')}}</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </li>
                                                
                                                <li class="list-inline-item col-md-2">
                                                    <div class="search_option_button">
                                                        <button type="submit" class="btn btn-thm">{{__('tìm kiếm')}}</button>
                                                    </div>
                                                </li>
                                            </ul>
                                        </form>
                                    </div>
                                </div>
                                

                                <div class="tab-pane fade" id="thue" role="tabpanel" aria-labelledby="pills-thue">
                                    <div class="home1-advnc-search home6">
                                        <form action="search-t">
                                            <ul class="h1ads_1st_list mb0 row">
                                                <li class="list-inline-item col-md-3">
                                                    <div class="form-group">
                                                        <input type="text" name="keyword" class="form-control" id="exampleInputName1" placeholder="{{__('Nhập từ khóa')}}...">
                                                    </div>
                                                </li>
                                                <li class="list-inline-item col-md-2">
                                                    <div class="search_option_two">
                                                        <div class="candidate_revew_select">
                                                            <select class="selectpicker w100 show-tick" name="bed">
                                                                <option value="">{{__('phòng ngủ')}}</option>
                                                                <option value="1PN">{{__('1PN')}}</option>
                                                                <option value="1PN+1">{{__('1PN+1')}}</option>
                                                                <option value="2PN">{{__('2PN')}}</option>
                                                                <option value="2PN+1">{{__('2PN+1')}}</option>
                                                                <option value="3PN">{{__('3PN')}}</option>
                                                                <option value="3PN+1">{{__('3PN+1')}}</option>
                                                                <option value="4PN">{{__('4PN')}}</option>
                                                                <option value="5PN">{{__('5PN')}}</option>
                                                                <option value="Dual Key">{{__('Dual Key')}}</option>
                                                                <option value="Studio">{{__('Studio')}}</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item col-md-2">
                                                    <div class="search_option_two">
                                                        <div class="candidate_revew_select">
                                                            <select class="selectpicker w100 show-tick" name="price">
                                                                <option value="">{{__('Giá thuê')}}</option>
                                                                @php
                                                                    $locale = Config::get('app.locale');
                                                                @endphp
                                                                @if($locale == "vi")
                                                                    <option value="0-10000000">{{__('Dưới 10 triệu')}}</option>
                                                                    <option value="10000000-15000000">{{__('Từ 10 - 15 triệu')}}</option>
                                                                    <option value="15000000-20000000">{{__('Từ 15 - 20 triệu')}}</option>
                                                                    <option value="20000000-25000000">{{__('Từ 20 - 25 triệu')}}</option>
                                                                    <option value="25000000-40000000">{{__('Từ 25 - 40 triệu')}}</option>
                                                                    <option value="40000000-+">{{__('Trên 40 triệu')}}</option>
                                                                @else
                                                                    <option value="0-500">{{__('Dưới 500$')}}</option>
                                                                    <option value="500-850">{{__('Từ 500 - 850$')}}</option>
                                                                    <option value="850-1000">{{__('Từ 850 - 1000$')}}</option>
                                                                    <option value="1000-1500">{{__('Từ 1000 - 1500$')}}</option>
                                                                    <option value="1500-2000">{{__('Từ 1500 - 2000$')}}</option>
                                                                    <option value="2000-+">{{__('Trên 2000$')}}</option>
                                                                @endif
                                                            </select>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="list-inline-item col-md-3">
                                                    <div class="search_option_two">
                                                        <div class="candidate_revew_select">
                                                            <select class="selectpicker w100 show-tick" name="huong">
                                                                <option value="">{{__('hướng')}}</option>
                                                                <option value="Tây, Nam">{{__('Tây Nam')}}</option>
                                                                <option value="Tây, Bắc">{{__('Tây Bắc')}}</option>
                                                                <option value="Tây Nam - Tây Bắc">{{__('Tây Nam - Tây Bắc')}}</option>
                                                                <option value="Tây Bắc - Đông Bắc">{{__('Tây Bắc - Đông Bắc')}}</option>
                                                                <option value="Tây Bắc">{{__('Tây Bắc')}}</option>
                                                                <option value="Đông Nam- Đông Bắc">{{__('Đông Nam - Đông Bắc')}}</option>
                                                                <option value="Đông Nam">{{__('Đông Nam')}}</option>
                                                                <option value="Đông Nam- Tây Nam">{{__('Đông Nam - Tây Nam')}}</option>
                                                                <option value="Đông Bắc">{{__('Đông Bắc')}}</option>
                                                                <option value="Chính Tây">{{__('Chính Tây')}}</option>
                                                                <option value="Chính Nam">{{__('Chính Nam')}}</option>
                                                                <option value="Chính Đông">{{__('Chính Đông')}}</option>
                                                                <option value="Chính Bắc">{{__('Chính Bắc')}}</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </li>
                                                
                                                <li class="list-inline-item col-md-2">
                                                    <div class="search_option_button">
                                                        <button type="submit" class="btn btn-thm">{{__('tìm kiếm')}}</button>
                                                    </div>
                                                </li>
                                            </ul>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid ovh">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="main-title text-center animate__animated animate__fadeIn">
                        <a href="san-pham-noi-bat"><h2>{{__('Sản Phẩm Nổi Bật')}}</h2></a>
                        <!-- <p>Cập nhật những căn hộ được nhiều người quan tâm nhất</p> -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="slide-product-3 ovh">
                        @foreach($products_hl as $item)
                            @include('front-end.layout.product-item2')
                        @endforeach
                        
                    </div>
                </div>
                
            </div>
            <div class="row">
                <div class="col-md-12 text-center">
                    <a class="effect effect-1 show-more" href="{{URL::route('productsHot')}}" title="Learn More">{{__('Xem thêm')}}</a>
                </div>
            </div>
        </div>
    </section>

    <!-- Chủ đầu tư -->
    <section id="feature-property" class="feature-property pt0 pb0 maxw1600 m0a">
        <div class="container-fluid ovh">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="main-title mb30 text-center">
                        <a href="chu-dau-tu-bc5"><h2>{{__('Chủ Đầu Tư')}}</h2></a>
                        <!-- <p>Tổng hợp những căn hộ mới được nhiều người quan tâm nhất</p> -->
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="slide-blog-4">
                        @php
                            
                            if($cdt == null){
                                $cdt = [];
                            }
                            else{
                                $cdt = $cdt->blogs()->where('display',1)->orderBy('id','DESC')->take(8)->get();
                            }
                            
                        @endphp
                        @foreach($cdt as $item)
                            <div class="for_blog feat_property item" href="{{$item->url}}">
                                <div class="thumb">
                                    <img class="img-whp" src="{{asset('uploads/images/blogs/'.$item->avata)}}" alt="1.jpg">
                                    <!-- <div class="blog_tag">Construction</div> -->
                                </div>
                                <div class="details">
                                    <div class="tc_content">
                                        <div class="dtls_headr">
                                            <ul class="tag">
                                                
                                                @foreach($item->categories as $cate)
                                                    @if($cate->parent_id != null)
                                                    <li class="list-inline-item" style="background: #2d4571; padding: 0 5px"><a href="{{$cate->url}}">{{$cate->name}}</a></li>
                                                    @endif
                                                @endforeach
                                            </ul>
                                            
                                        </div>
                                        <h4><a href="{{$item->url}}" title="{{$item->name}}">{!! \Illuminate\Support\Str::words($item->name, 10,'...')  !!}</a></h4>
                                        
                                    </div>
                                    
                                </div>
                            </div>
                        @endforeach
                        
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Why choose -->
    <section id="why-choose" class="why-choose pb0 maxw1600 m0a">
        <div class="container-fluid ovh">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="main-title text-center  ">
                        <h2 class="animate__animated animate__bounce">{{__("Tại Sao Chọn Chúng Tôi")}}</h2>
                        <!-- <p>Cập nhật những căn hộ được nhiều người quan tâm nhất</p> -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="feature_property_home3_slider ovh">
                        <div class="why_chose_us style2">
                            <div class="icon">
                                <span class="bx bx-rocket"></span>
                            </div>
                            <div class="details">
                                <h3>{{__('Nghiệp Vụ Chuyên Môn Cao')}}</h3>
                                <p>{{__('Trình độ ngoại ngữ tốt, dày dặn kinh nghiệm bán hàng, am hiểu sâu sắc về pháp lý và quy trình giao dịch bất động sản là những gì khách hàng thấy được từ các chuyên viên kinh doanh của chúng tôi')}}.</p>
                            </div>
                        </div>
                        <div class="why_chose_us style2">
                            <div class="icon">
                                <span class="bx bx-network-chart"></span>
                            </div>
                            <div class="details">
                                <h3>{{__('Sản Phẩm Đa Dạng')}}</h3>
                                <p>{{__('Nguồn cung căn hộ đa dạng từ hơn 20 dự án thuộc nhiều phân khúc căn hộ bình dân, trung cấp đến căn hộ cao cấp trên địa bàn Hà Nội; đáp ứng mọi nhu cầu của quý khách hàng')}}.</p>
                            </div>
                        </div>
                        <div class="why_chose_us style2">
                            <div class="icon">
                                <span class="bx bx-donate-heart"></span>
                            </div>
                            <div class="details">
                                <h3>{{__('Tin Cậy Chuyên Nghiệp')}}</h3>
                                <p>{{__('Sự minh bạch thông tin trong tư vấn, chính xác trong thủ tục giao dịch và lợi ích tối đa của khách hàng luôn là ưu tiên hàng đầu của KKUMHOUSE')}}</p>
                            </div>
                        </div>
                        <div class="why_chose_us style2">
                            <div class="icon">
                                <span class="bx bx-analyse"></span>
                            </div>
                            <div class="details">
                                <h3>{{__('Lâu Dài Bền Vững')}}</h3>
                                <p>{{__('Trao niềm tin, nhận tín nhiệm” luôn là tôn chỉ làm việc của chúng tôi. Dịch vụ hậu mãi và các hỗ trợ sau giao dịch luôn làm quý khách hàng hài lòng khi lựa chọn KKUMHOUSE')}}.</p>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
            
        </div>
    </section>
	

    <!-- Feature Properties -->
    <section id="feature-property" class="feature-property pb0 maxw1600 m0a">
        <div class="container-fluid ovh">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="main-title mb30 text-center">
                        <a href="san-pham-thue-pc3"><h2>{{__('Sản Phẩm Cho Thuê')}}</h2></a>
                        <!-- <p>Tổng hợp những căn hộ mới được nhiều người quan tâm nhất</p> -->
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="slide-product-5">
                        @php
                            
                            if($hct == null){
                                $hct = [];
                            }
                            else{
                                $hct = $hct->products()->where('display',1)->orderBy('id','DESC')->take(8)->get();
                            }
                            
                        @endphp
                        @foreach($hct as $item)
                            @include('front-end.layout.product-item-5')
                        @endforeach
                        
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Feature Properties -->
    <section id="feature-property" class="feature-property pt0 pb0 maxw1600 m0a">
        <div class="container-fluid ovh">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="main-title mb30 text-center">
                        <a href="san-pham-chuyen-nhuong-pc1"><h2>{{__('Sản Phẩm Chuyển Nhượng')}}</h2></a>
                        <!-- <p>Tổng hợp những căn hộ mới được nhiều người quan tâm nhất</p> -->
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="slide-product-5">
                        @php
                            
                            if($hcn == null){
                                $hcn = [];
                            }
                            else{
                                $hcn = $hcn->products()->where('display',1)->orderBy('id','DESC')->take(8)->get();
                            }
                            
                        @endphp
                        @foreach($hcn as $item)
                            @include('front-end.layout.product-item-5')
                        @endforeach
                        
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Feature Properties -->
    <section id="feature-property" class="feature-property pt0 pb0 maxw1600 m0a">
        <div class="container-fluid ovh">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="main-title mb30 text-center">
                        <a href="san-pham-dac-biet-pc7"><h2>{{__('Sản Phẩm Đặc Biệt')}}</h2></a>
                        <!-- <p>Tổng hợp những căn hộ mới được nhiều người quan tâm nhất</p> -->
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="slide-product-5">
                        @php
                            
                            if($hdb == null){
                                $hdb = [];
                            }
                            else{
                                $hdb = $hdb->products()->where('display',1)->orderBy('id','DESC')->take(8)->get();
                            }
                            
                        @endphp
                        @foreach($hdb as $item)
                            @include('front-end.layout.product-item-5')
                        @endforeach
                        
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Feature Properties -->
    <section id="blogs" class="feature-property pt0 pb0 maxw1600 m0a">
        <div class="container-fluid ovh">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="main-title mb30 text-center">
                        <a href="tin-tuc-bc1"><h2>{{__('TIN TỨC & SỰ KIỆN')}}</h2></a>
                        <!-- <p>Tổng hợp những căn hộ mới được nhiều người quan tâm nhất</p> -->
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="slide-blog-4">
                        @foreach($blogs as $item)
                            <div class="for_blog feat_property item" href="{{$item->url}}">
                                <div class="thumb">
                                    <img class="img-whp" src="{{asset('uploads/images/blogs/'.$item->avata)}}" alt="1.jpg">
                                    <!-- <div class="blog_tag">Construction</div> -->
                                </div>
                                <div class="details">
                                    <div class="tc_content">
                                        <h4><a href="{{$item->url}}" title="{{$item->name}}">{!! \Illuminate\Support\Str::words($item->name, 10,'...')  !!}</a></h4>
                                        <!-- <p title="{{$item->short_description}}">{!! \Illuminate\Support\Str::words($item->short_description, 15,'...')  !!}</p> -->
                                    </div>
                                    
                                </div>
                            </div>
                        @endforeach
                        
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Our Contact -->
    <section class="our-contact pt30 pb30 bgc-f7">
        <div class="maxw1600 m0a">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="main-title mb30 text-center">
                            <h2>{{__('Liên Hệ Với Chúng Tôi')}}</h2>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-6">
                        <div class="form_grid">
                            <h4 class="mb5">{{__('Gửi Yêu Cầu Hỗ Trợ Tư Vấn')}}</h4>
                            
                            <form class="contact_form" id="contact_form" name="contact_form" action="{{URL::route('addContact')}}" method="post" novalidate="novalidate">
                                {{ csrf_field() }}
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input id="form_name" name="name" class="form-control" required="required" type="text" placeholder="{{__('họ tên')}}">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input id="form_phone" name="phone" class="form-control required phone" required="required" type="number" placeholder="{{__('điện thoại')}}">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <input id="form_email" name="email" class="form-control required email" type="email" placeholder="{{__('email')}}">
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-6" style="display: none;">
                                        <div class="form-group">
                                            <input id="form_da" name="da" class="form-control required" type="text" placeholder="{{__('dự án')}}">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <textarea id="form_message" name="message" class="form-control required" rows="3" required="required" placeholder="{{__('ghi chú')}}"></textarea>
                                        </div>
                                        <div class="form-group mb0">
                                            <button type="submit" class="btn btn-lg btn-thm">{{__('Gửi Yêu Cầu')}}</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xl-6">
                        @include('front-end.layout.info')
                    </div>
                </div>
            </div>
        </div>
        
    </section>

    <!-- Our Team -->
    <section class="our-team bgc-f7">
        <div class="maxw1600 m0a">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">
                        <div class="main-title mb30 text-center">
                            <h2>{{__('Chúng Tôi Là Ai')}}</h2>
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-3">
                        <div class="team_slider">
                            <!-- <div class="team-block mb30">
                                <div class="team-upper-part">
                                    <img class="img-full" width="100%" src="{{asset('images/gd.png')}}" alt="">
                                    <ul class="social-list">
                                        <li class="list-inline-item" ><a target="_blank" href="{{$system->facebook}}">
                                            <img src="{{asset('images/icon-fb.png')}}" alt="">
                                        </a></li>
                                        <li class="list-inline-item"><a target="_blank" href="{{$system->instagram}}">
                                            <img src="{{asset('images/icon-insta.png')}}" alt="">
                                        </a></li>
                                        <li class="list-inline-item"><a target="_blank" href="{{$system->blog_naver}}">
                                            <img src="{{asset('images/icon-blog-naver.png')}}" alt="">
                                        </a></li>
                                        <li class="list-inline-item"><a target="_blank" href="https://zalo.me/0888851098">
                                            <img src="{{asset('images/icon-zalo.png')}}" alt="">
                                        </a></li>
                                    </ul>
                                </div>
                                <div class="team-bottom-part">
                                    <h3 class="team-title mrb-5"><a href="#"><span style="font-size: 18px">{{__('bà')}}: </span>{{__('Đặng Thị Tình')}}</a></h3>
                                    <h4 class="designation f-weight-500 text-gray">{{__('Giám đốc KKUMHOUSE')}}</h4>
                                </div>
                            </div>

                            <div class="team-block mb30">
                                <div class="team-upper-part">
                                    <img class="img-full" width="100%" src="{{asset('images/gd2.png')}}" alt="">
                                    <ul class="social-list">
                                        <li class="list-inline-item" ><a target="_blank" href="{{$system->facebook}}">
                                            <img src="{{asset('images/icon-fb.png')}}" alt="">
                                        </a></li>
                                        <li class="list-inline-item"><a target="_blank" href="{{$system->instagram}}">
                                            <img src="{{asset('images/icon-insta.png')}}" alt="">
                                        </a></li>
                                        <li class="list-inline-item"><a target="_blank" href="{{$system->blog_naver}}">
                                            <img src="{{asset('images/icon-blog-naver.png')}}" alt="">
                                        </a></li>
                                        <li class="list-inline-item"><a target="_blank" href="https://zalo.me/0385268088">
                                            <img src="{{asset('images/icon-zalo.png')}}" alt="">
                                        </a></li>
                                    </ul>
                                </div>
                                <div class="team-bottom-part">
                                    <h3 class="team-title mrb-5"><a href="page-single-team.html"><span style="font-size: 18px">{{__('bà')}}: </span>{{__('Lê Thị Thùy')}}</a></h3>
                                    <h4 class="designation f-weight-500 text-gray">{{__('TPKD khối Khách hàng Hàn Quốc')}}</h4>
                                </div>
                            </div> -->
                            <div class="team-block mb30">
                                <div class="team-upper-part">
                                    <img class="img-full" width="100%" src="{{asset('images/gd3.png')}}" alt="">
                                    <ul class="social-list">
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
                                    </ul>
                                </div>
                                <div class="team-bottom-part">
                                    <h3 class="team-title mrb-5"><a href="page-single-team.html">{{__('Hotline 24/7')}}</a></h3>
                                    <h4 class="designation f-weight-500 text-gray">{{__($system->phone)}}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        
    </section>

@endsection

@section('js')
    <script type="text/javascript" src="{{asset('js/pricing-slider.js')}}"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/typed.js/1.1.1/typed.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/gsap/1.18.0/TweenMax.min.js'></script>
    <script type="text/javascript">
        $(function() {
            $(".text-typed").typed({
                strings: ["OCATE YOUR DREAM HOUSE", "OCATE YOUR DREAM HOUSE"],
                typeSpeed: 50,
                backSpeed: 20,
                backDelay: 2000,
                showCursor: true,
                loop: true
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            
            $(".close-popup").click(function(){
                $(".main-popup").css("display", "none");
            });
            $(".background-popup").click(function(){
                $(".main-popup").css("display", "none");
            });
        });
    </script>

@endsection