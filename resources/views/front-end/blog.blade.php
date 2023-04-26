@extends('front-end.layout.default')
@section('head')
    
        <meta name="robots" content="noodp,index,follow" />
        <meta name="google" content="notranslate" />
        <meta name="keywords" content="{{$blog->seo_keyword}}" />
        <meta name="description" content="{{$blog->seo_description}}" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="{{$blog->title}}" />
        <meta property="og:description" content="{{$blog->seo_description}}" />
        <meta property="og:url" content="{{$system->website}}/{{$blog->url}}" />
        <meta property="og:image" content="{{asset('uploads/images/blogs/'.$blog->avata)}}" />
        <title>{{$blog->title}}</title>
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
            
            .blog_sp_post_meta{
                background: #f9f9f9;
                padding: 10px;
            }
        </style>
    
@endsection

@section('content')
    <!-- Inner Page Breadcrumb -->
    <section class="inner_page_breadcrumb pt0 pb0" style="background: #3e4c66;">
        <!-- <div id="particles-js"></div> -->
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb_content">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/">{{__('trang chủ')}}</a></li>
                            @foreach($blog->categories as $cate)
                                @if($cate->parent_id == null)
                                    <li class="breadcrumb-item active" aria-current="page"><a href="{{$cate->url}}">{{__($cate->name)}}</a></li>
                                @endif

                            @endforeach
                            @foreach($blog->categories as $cate)
                                @if($cate->parent_id != null)
                                    <li class="breadcrumb-item active" aria-current="page"><a href="{{$cate->url}}">{{__($cate->name)}}</a></li>
                                @endif

                            @endforeach
                        </ol>
                        
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
                            <div class="row">
                                <div class="col-md-12 single_property_title">
                                    <h1 class="" style="text-transform: capitalize;">{{$blog->name}}</h1>
                                </div>
                            </div>
                            <!-- <div class="blog_sp_tag"><a href="#">Construction</a></div> -->
                            <!-- <h3 class="blog_sp_title">Redfin Ranks the Most Competitive Neighborhoods of 2020</h3> -->
                            <!-- Your share button code -->
                            
                            <ul class="blog_sp_post_meta mb10">
                                @php
                                    $locale = config('app.locale');
                                    Carbon\Carbon::setLocale($locale);
                                    $now = \Carbon\Carbon::now();
                                    $date = $blog->created_at->isoFormat('ll');
                                @endphp
                                <li class="list-inline-item"><span class="flaticon-user" style="color: #000;"></span></li>
                                <li class="list-inline-item"><a href="#" style="color: #000;">{{$blog->user->name}}</a></li>
                                <li class="list-inline-item"><span class="flaticon-calendar" style="color: #000;"></span></li>
                                <li class="list-inline-item"><a href="#" style="color: #000;">{{\Carbon\Carbon::createFromTimestamp(strtotime($blog->created_at))->diffForHumans($now)}}</a></li>
                                <div class="fb-like" data-href="{{$blog->url}}" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>
                            </ul>
                            
                            <div class="details media-body">
                                {!!$blog->content!!}
                            </div>
                            <ul class="blog_post_share">
                                <li><p>{{__('chia sẻ')}}</p></li>
                                <!-- Your share button code -->
                                <div class="fb-share-button" 
                                data-href="{{$blog->url}}" 
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
                    <!-- <div class="row">
                        <div class="col-lg-12 mb20 mt20">
                            <h3>{{__('bài viết khác')}}</h3>
                        </div>
                        @foreach($blogs as $item)
                        <div class="col-lg-4">
                            <div class="for_blog feat_property">
                                <div class="thumb">
                                    <img class="img-whp" src="{{asset('uploads/images/blogs/'.$item->avata)}}" alt="1.jpg">
                                    
                                </div>
                                <div class="details">
                                    <div class="tc_content">
                                        <h4><a href="{{$item->url}}">{{$item->name}}</a></h4>
                                    </div>
                                    <div class="fp_footer">
                                        @php
                                            Carbon\Carbon::setLocale('vi');
                                            $now = \Carbon\Carbon::now();
                                            $date = $item->created_at->isoFormat('ll');
                                        @endphp
                                        <ul class="bpg_meta" style="float: left; margin: 0px;">
                                            <li class="list-inline-item"><a href="#"><i class="flaticon-calendar"></i></a></li>
                                            <li class="list-inline-item"><a href="#">{{\Carbon\Carbon::createFromTimestamp(strtotime($item->created_at))->diffForHumans($now)}}</a></li>
                                        </ul>
                                        <a class="fp_pdate float-right text-thm" href="{{$item->url}}">{{__('xem thêm')}}<span class="flaticon-next"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div> -->
                </div>
                <div class="col-md-4">
                    @include('front-end.layout.contact-sidebar')
                    @include('front-end.layout.ads-sidebar')
                    @include('front-end.layout.blog-sidebar')
                    
                </div>
                
            </div>
        </div>
    </section>

@endsection
@section('js')
    
@endsection