@extends('front-end.layout.default')
@section('head')
	
	    <meta name="robots" content="noodp,index,follow" />
	    <meta name="google" content="notranslate" />
	    <meta name="keywords" content="{{$product->seo_keyword}}" />
	    <meta name="description" content="{{$product->seo_description}}" />
	    <meta property="og:type" content="website" />
	    <meta property="og:title" content="{{$product->title}}" />
	    <meta property="og:description" content="{{$product->seo_description}}" />
	    <meta property="og:url" content="{{$system->website}}/{{$product->url}}" />
	    <meta property="og:image" content="{{asset('uploads/images/products/details/'.$product->avata)}}" />
	    <title>{{$product->title}}</title>
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
              width: 10px;
              content: '';
              border-radius: 3px;
              position: absolute;
              background-color: #b80000;
            }
            .main-title{
                padding-left: 15px;
                /*margin-bottom: 10px !important;*/
            }
            .breadcrumb{
               padding: 0.75rem 0rem !important;
            }
            .list_cate_children{
                padding-left: 15px;
            }
        </style>
        <style>
          .swiper {
            width: 100%;
            height: 100%;
          }

          .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;

            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
          }

          /*.swiper-slide img {
            display: block;
            width: 100%;
            height: 100%;
            object-fit: cover;
          }*/

          .swiper {
            width: 100%;
            height: 300px;
            margin-left: auto;
            margin-right: auto;
            z-index: 0 !important;
          }

          .swiper-slide {
            background-size: cover;
            background-position: center;
          }

          .mySwiper2 {
            height: 500px;
            width: 100%;
          }

          .mySwiper {
            height: 100px;
            box-sizing: border-box;
            padding: 10px 0;
          }

          .mySwiper .swiper-slide {
            width: 25%;
            height: 100%;
            opacity: 0.4;
          }

          .mySwiper .swiper-slide-thumb-active {
            opacity: 1;
          }
          .img-slide {
                display: block;
                max-width: 100%;
                max-height: 100%;
                width: auto;
                height: auto;
                margin: 0 auto;
                z-index: 9;
            }
            .blur-bg {
                filter: blur(25px)!important;
                -webkit-filter: blur(30px);
            }

        </style>
        <link href="{{asset('css/thumbnail-slider.css')}}" rel="stylesheet" type="text/css" />
        <link href="{{asset('css/ninja-slider.css')}}" rel="stylesheet" type="text/css" />
        <!-- Link Swiper's CSS -->
        <link rel="stylesheet" href="{{asset('css/swiper-bundle.min.css')}}"/>
        
	
@endsection

@section('content')

    <!-- Listing Single Property -->
    <section class="inner_page_breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb_content">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/">{{__('trang chủ')}}</a></li>
                            @foreach($product->categories as $cate)
                                @if($cate->parent_id == null)
                                    <li class="breadcrumb-item active" aria-current="page"><a href="{{$cate->url}}">{{__($cate->name)}}</a></li>
                                @endif

                            @endforeach
                            @foreach($product->categories as $cate)
                                @if($cate->parent_id != null)
                                    <li class="breadcrumb-item active" aria-current="page"><a href="{{$cate->url}}">{{__($cate->name)}}</a></li>
                                @endif

                            @endforeach
                        </ol>
                        <h1 class="breadcrumb_title">{{$product->name}}</h1>
                    </div>
                </div>
            </div>
        </div>
       
    </section>


    <!-- Agent Single Grid View -->
    <section class="our-agent-single bgc-f7">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-8">
                    <div class="row pb10">
                        <div class="col-lg-12">
                            
                            <div class="listing_single_description2">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="single_property_title">
                                            <h1>{{$product->name}}</h1>
                                            @foreach($product->categories as $cate)
                                                @if($cate->parent_id != null)
                                                   
                                                    <p><i class="bx bx-map"></i>{{__($cate->name)}}</p>
                                                @endif

                                            @endforeach
                                            
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="single_property_social_share style2">
                                            <div class="price">
                                                <span>{{__('Mã căn')}}: <span class="badge badge-light" style="font-size: 16px;font-weight: 500;">{{$product->ma}}</span></span>
                                                <h2 class="number-format">
                                                    @if($product->tiente == 0 && $product->price > 1000000000)
                                                        {{round($product->price/1000000000, 3)}} tỷ

                                                    @else
                                                        @if($product->tiente == 0)
                                                            {!!number_format($product->price)!!} vnđ
                                                        @else
                                                            {!!number_format($product->price)!!} $
                                                        @endif
                                                    @endif
                                                </h2>
                                                
                                                
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb10">

                        <div class="col-lg-12">
                            
                            <!-- Swiper -->
                            <div style="" class="swiper mySwiper2 mb10">
                              <div class="swiper-wrapper">
                                <div class="swiper-slide popup-img" href="{{asset('uploads/images/products/details/'.$product->avata)}}">
                                    <div class="blur-bg" style="top: 0;background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url({{asset('uploads/images/products/details/'.$product->avata)}});position: absolute;width: 100%;height: 100%;"></div>
                                  <img src="{{asset('uploads/images/products/details/'.$product->avata)}}" class="img-slide" />
                                </div>
                                @foreach($images as $item)
                                    <div class="swiper-slide popup-img" href="{{asset('uploads/images/products/details/'.$item->url)}}">
                                        <div class="blur-bg" style="top: 0;background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url({{asset('uploads/images/products/details/'.$item->url)}});position: absolute;width: 100%;height: 100%;"></div>
                                      <img src="{{asset('uploads/images/products/details/'.$item->url)}}" class="img-slide" />
                                    </div>
                                @endforeach
                              </div>
                              <div class="swiper-button-next"></div>
                              <div class="swiper-button-prev"></div>
                            </div>
                            <div thumbsSlider="" class="swiper mySwiper pb20">
                              <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                  <img src="{{asset('uploads/images/products/details/'.$product->avata)}}" />
                                </div>
                                @foreach($images as $item)
                                    <div class="swiper-slide">
                                      <img src="{{asset('uploads/images/products/details/'.$item->url)}}" />
                                    </div>
                                @endforeach
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="row pb10">
                        <div class="col-lg-12">
                            <div class="shop_single_tab_content style2">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item">
                                        <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">{{__('thông tin dự án')}}</a>
                                    </li>
                                    
                                </ul>
                                <div class="tab-content" id="myTabContent2">
                                    <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                                        <div class="product_single_content">
                                            <div class="mbp_pagination_comments">
                                                <div class="mbp_first media">
                                                    <div class="media-body">
                                                        {!!$product->content!!}
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="additional_details">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <h4 class="mb15">{{__('Chi tiết')}}</h4>
                                    </div>
                                    <div class="col-md-6 col-lg-6 col-xl-4">
                                        <ul class="list-inline-item">
                                            <li><p>{{__('Mã SP')}} :</p></li>
                                            <li><p>{{__('Giá')}} :</p></li>
                                            <li><p>{{__('Cập nhật')}} :</p></li>
                                            
                                        </ul>
                                        <ul class="list-inline-item">
                                            <li><p><span>{{$product->ma}}</span></p></li>
                                            <li>
                                                <p>
                                                    <span class="number-format">
                                                        @if($product->tiente == 0 && $product->price > 1000000000)
                                                            {{round($product->price/1000000000, 3)}} tỷ

                                                        @else
                                                            @if($product->tiente == 0)
                                                                {!!number_format($product->price)!!} vnđ
                                                            @else
                                                                {!!number_format($product->price)!!} $
                                                            @endif
                                                        @endif
                                                    </span>
                                                </p>
                                            </li>
                                            @php
                                                $locale = config('app.locale');
                                                Carbon\Carbon::setLocale($locale);
                                                $now = \Carbon\Carbon::now();
                                            @endphp
                                            <li><p><span>{{\Carbon\Carbon::createFromTimestamp(strtotime($product->updated_at))->diffForHumans($now)}}</span></p></li>
                                            
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-6 col-xl-3">
                                        <ul class="list-inline-item">
                                            <li><p>{{__('phòng ngủ')}} :</p></li>
                                            <li><p>{{__('nhà vệ sinh')}} :</p></li>
                                            <li><p>{{__('diện tích')}} :</p></li>
                                            
                                        </ul>
                                        <ul class="list-inline-item">
                                            <li><p><span>{{__($product->bed)}}</span></p></li>
                                            <li><p><span>{{$product->bath}}</span></p></li>
                                            <li><p><span>{{$product->area}} m2</span></p></li>
                                            
                                        </ul>
                                    </div>
                                    <div class="col-md-6 col-lg-6 col-xl-5">
                                        <ul class="list-inline-item">
                                            <li><p>{{__('nội thất')}} :</p></li>
                                            <li><p>{{__('hướng')}} :</p></li>
                                            <li><p>{{__('Loại BĐS')}} :</p></li>
                                        </ul>
                                        <ul class="list-inline-item">
                                            <li><p><span>{{__($product->nt)}}</span></p></li>
                                            <li><p><span>{{__($product->huong)}}</span></p></li>
                                            <li><p><span>
                                                @if($product->lbds == 1)
                                                    {{__('Cho thuê')}}
                                                @else
                                                    {{__('Đang bán')}}
                                                @endif
                                            </span></p></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        

                    </div>
                    <div class="row pb10">
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
                <div class="col-lg-4 col-xl-4">
                    @include('front-end.layout.contact-sidebar')
                    <!-- @include('front-end.layout.cate-sidebar') -->
                    @include('front-end.layout.product-sidebar')
                    
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="main-title mb30">
                        <h3 class="mt30 mb30">{{__('Sản phẩm khác')}}</h3>
                        <p>{{__('Sản phẩm tương tự có thể bạn quan tâm')}}</p>
                    </div>
                    
                </div>
                <div class="col-lg-12">
                    <div class="slide-product-3">
                        @foreach($products as $item)
                            @include('front-end.layout.product-item2')
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
@section('js')
    <script type="text/javascript">
        $(document).on('click', '.cate-parent', function(event) {
            var cate_parent_id = $(this).attr('cate-id');
            $('.list_cate_children[cate-parent-id='+cate_parent_id+']').show();
            
        });
        // var t = $(".ninja-slider").parent().text();
        // console.log(t);
    </script>
    <script src="{{asset('js/thumbnail-slider.js')}}" type="text/javascript"></script>
    <script src="{{asset('js/ninja-slider.js')}}" type="text/javascript"></script>
    <!-- Swiper JS -->
    <script src="{{asset('js/swiper-bundle.min.js')}}"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        loop: true,
        spaceBetween: 10,
        slidesPerView: 5,
        freeMode: true,
        watchSlidesProgress: true,
      });
      var swiper2 = new Swiper(".mySwiper2", {
        loop: true,
        spaceBetween: 10,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        thumbs: {
          swiper: swiper,
        },
      });
    </script>
@endsection