@extends('front-end.layout.default')
@section('head')
    
        <meta name="robots" content="noodp,index,follow" />
        <meta name="google" content="notranslate" />
        <meta name="keywords" content="{{$page->seo_keyword}}" />
        <meta name="description" content="{{$page->seo_description}}" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="{{$page->title}}" />
        <meta property="og:description" content="{{$page->seo_description}}" />
        <meta property="og:url" content="{{$system->website}}/{{$page->url}}" />
        <meta property="og:image" content="{{asset('uploads/images/pages/'.$page->avata)}}" />
        <title>{{$page->title}}</title>
        <style type="text/css">
            .control-label {
                color: #23376d;
                font-weight: bold;
            }
            .required:after {
                content: " *";
                color: red;
            }
            .main-title:before{
              top: 0;
              left: 0;
              bottom: 0;
              width: 15px;
              content: '';
              border-radius: 3px;
              position: absolute;
              background-color: #ffc107;
            }
            .main-title{
                padding-left: 35px;
            }
            .blog_sp_post_meta {
                background: #f9f9f9;
                padding: 10px;
            }
        </style>
    
@endsection

@section('content')
    <!-- Inner Page Breadcrumb -->
    <section class="inner_page_breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb_content">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">{{__('trang chủ')}}</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><a href="{{$page->url}}">{{$page->name}}</a></li>
                        </ol>
                        <h1 class="breadcrumb_title">{{$page->name}}</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Single Post -->
    <section class="blog_post_container bgc-f7 pb30">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-8">
                    <div class="main_blog_post_content">
                        <div class="mbp_thumb_post">
                            <!-- <div class="blog_sp_tag"><a href="#">Construction</a></div> -->
                            <!-- <h3 class="blog_sp_title">Redfin Ranks the Most Competitive Neighborhoods of 2020</h3> -->
                            <!-- Your share button code -->
                            
                            <ul class="blog_sp_post_meta mb10">
                                @php
                                    $locale = config('app.locale');
                                    Carbon\Carbon::setLocale($locale);
                                    $now = \Carbon\Carbon::now();
                                    $date = $page->created_at->isoFormat('ll');
                                @endphp
                                <li class="list-inline-item"><span class="flaticon-user" style="color: #000;"></span></li>
                                <li class="list-inline-item"><a href="#" style="color: #000;">Admin</a></li>
                                <li class="list-inline-item"><span class="flaticon-calendar" style="color: #000;"></span></li>
                                <li class="list-inline-item"><a href="#" style="color: #000;">{{\Carbon\Carbon::createFromTimestamp(strtotime($page->created_at))->diffForHumans($now)}}</a></li>
                                <div class="fb-like" data-href="{{$page->url}}" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>
                            </ul>
                            
                            <div class="details media-body">
                                {!!$page->content!!}
                            </div>
                            <ul class="blog_post_share">
                                <li><p>{{__('chia sẻ')}}</p></li>
                                <!-- Your share button code -->
                                <div class="fb-share-button" 
                                data-href="{{$page->url}}" 
                                data-layout="button_count">
                                </div>
                                <!-- <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-google"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li> -->
                            </ul>
                        </div>
                        
                    </div>
                    <div class="row pt30 pb10">
                        <div class="col-lg-12">
                            <div class="banner-ads">
                                <div class="banner-style-one" >
                                    @foreach($adss as $ads)
                                        <div class="item">
                                            <a href="{{$ads->href}}" target="{{$ads->target}}">
                                                <img class="pb20" src="{{asset('uploads/images/adss/'.$ads->url)}}" alt="">
                                            </a>
                                        </div>
                                        @if(count($adss) == 1)
                                        <div class="item">
                                            <a href="{{$ads->href}}" target="{{$ads->target}}">
                                                <img class="pb20" src="{{asset('uploads/images/adss/'.$ads->url)}}" alt="">
                                            </a>
                                        </div>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
                <div class="col-md-4">
                    @include('front-end.layout.contact-sidebar')
                    @include('front-end.layout.product-sidebar')
                    
                </div>
                
            </div>
        </div>
    </section>

@endsection
@section('js')
    <script type="text/javascript">
        $(document).ready(function(){
            var token = $(".contact_form").children("input[name='_token']").val();
            console.log(token);
            $("#dinhdanh").children("input[name='_token']").val(token);
        });
    </script>
@endsection