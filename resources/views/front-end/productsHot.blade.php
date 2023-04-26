@extends('front-end.layout.default')
@section('head')
	
	    <meta name="robots" content="noodp,index,follow" />
	    <meta name="google" content="notranslate" />
	    <meta name="keywords" content="sản phẩm nổi bật" />
	    <meta name="description" content="{{$system->seo_description}}" />
	    <meta property="og:type" content="website" />
	    <meta property="og:title" content="{{__('Sản Phẩm Nổi Bật')}}" />
	    <meta property="og:description" content="{{$system->seo_description}}" />
	    <meta property="og:site_name" content="{{__('Sản Phẩm Nổi Bật')}}" />
	    <meta property="og:url" content="{{$system->website}}/san-pham-noi-bat" />
	    <meta property="og:image" content="" />
	    <meta property="og:locale" content="vi_VN" />
	    <link rel="canonical" href="" /> 
	    <title>{{__('Sản Phẩm Nổi Bật')}}</title>
        <style type="text/css">
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
        </style>

	    
	
@endsection

@section('content')
    <!-- Inner Page Breadcrumb -->
    <section class="inner_page_breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="breadcrumb_content">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/">{{__('trang chủ')}}</a></li>
                            <li class="breadcrumb-item active" aria-current="page">{{__('Sản Phẩm Nổi Bật')}}</li>
                        </ol>
                        <h1 class="breadcrumb_title">{{__('Sản Phẩm Nổi Bật')}}</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<!-- Listing Grid View -->
    <section class="our-listing bgc-f7 pb0">
        <div class="container">
            <div class="row mt30">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="grid_list_search_result style2">
                            <div class="col-sm-12 col-md-4 col-lg-3 col-xl-3">
                                <div class="left_area">
                                    <p>{{count($products_hl)}} {{__('kết quả tìm thấy')}}</p>
                                </div>
                            </div>
                            <!-- <div class="col-sm-12 col-md-8 col-lg-9 col-xl-9">
                                <div class="right_area style2 text-right">
                                    <ul>
                                        <li class="list-inline-item"><span class="shrtby">{{__('sắp xếp')}}:</span>
                                            <select name="orderBy" class="selectpicker show-tick">
                                                <option value="?orderById=DESC">mới nhất</option>
                                                <option value="?orderByPrice=ASC">giá thấp -> cao</option>
                                                <option value="?orderByPrice=DESC">giá cao -> thấp</option>
                                                <option value="?orderByView=DESC">xem nhiều nhất</option>
                                            </select>
                                        </li>
                                    </ul>
                                </div>
                            </div> -->
                        </div>
                    </div>
                    <div class="row">
                        @php
                            if($request->orderById != null){
                                $products_hl = $products_hl->orderBy('id',$request->orderById);
                            }
                            else if($request->orderByPrice != null){
                                $products_hl = $products_hl->orderBy('price',$request->orderByPrice);
                            }
                            else if($request->orderByView != null){
                                $products_hl = $products_hl->orderBy('view',$request->orderByView);
                            }
                            else{
                                $products_hl = $products_hl;
                            }
                            
                        @endphp
                        @foreach($products_hl as $item)
                            <div class="col-md-6 col-lg-4">
                                <div class="properti_city home6 item" href="{{$item->url}}">
                                    
                                    <div class="thumb">
                                        <img class="img-fluid w100" style="height: 100%" src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt="fp10.jpg">
                                        <div class="thmb_cntnt">
                                            <ul class="tag mb0">
                                                @if($item->lbds == 1)
                                                    <li class="list-inline-item" style="background: #3e4c66"><a href="#">{{__('Cho thuê')}}</a></li>
                                                @else
                                                    <li class="list-inline-item"><a href="#">{{__('Đang bán')}}</a></li>
                                                @endif
                                            </ul>
                                        </div>
                                    </div>
                                    
                                    <div class="overlay">
                                        
                                        <div class="details">
                                            
                                            
                                            <a href="{{$item->url}}"><h4 title="{{$item->name}}">{{__($item->da)}}</h4></a>
                                            <a class="fp_price number-format" href="{{$item->url}}">
                                                @if($item->tiente == 0 && $item->price > 1000000000)
                                                    {{round($item->price/1000000000, 3)}} tỷ

                                                @else
                                                    @if($item->tiente == 0)
                                                        {!!number_format($item->price)!!} vnđ
                                                    @else
                                                        {!!number_format($item->price)!!} $
                                                    @endif
                                                @endif
                                            </a>
                                            <!-- <p>
                                                <span class="bx bx-category"></span>
                                                @foreach($item->categories as $cate)
                                                    {{$cate->name}},
                                                @endforeach
                                            </p> -->
                                            <ul class="prop_details mb0">
                                                <li class="list-inline-item" style="margin-right: 1.5rem;"><a href="#"><span class="fa fa-bed color-red" style="margin-right: 5px;"></span>{{__($item->bed)}}</a></li>
                                                <li class="list-inline-item" style="margin-right: 1.5rem;"><a href="#"><span class="fa fa-bath color-red" style="margin-right: 5px;"></span>{{$item->bath}}</a></li>
                                                <li class="list-inline-item" style="margin-right: 1.5rem;"><a href="#"><span class="fa fa-object-group color-red" style="margin-right: 5px;"></span>{{$item->area}} m2</a></li>
                                                <li class="list-inline-item" style="margin-right: 1.5rem;"><a href="#"><span class="flaticon-view color-red" style="margin-right: 5px;"></span>{{$item->view}}</a></li>
                                            </ul>

                                            <a href="{{$item->url}}" class="read-more mt10">{{__('xem chi tiết')}}</a>
                                            
                                        </div>
                                    
                                    </div>
                                </div>
                            </div>
                        @endforeach
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Feature Properties -->
    <section id="feature-property" class="feature-property pb0 m0a">
        <div class="container ovh">
            <div class="row">
                <div class="col-lg-12">
                    <h2 style="font-family: 'EB Garamond', sans-serif;">{{__('Có thể bạn quan tâm')}}</2>
                    <div class="main-title mb30">
                        <a href="san-pham-thue-pc3">
                            <h4 class="mt30 mb30">{{__('Sản Phẩm Cho Thuê')}}</h4>
                        </a>
                        
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="slide-blog-4">
                        @php
                            if($hct == null){
                                $hct = [];
                            }
                            else{
                                $hct = $hct->products()->where('display',1)->take(5)->get();
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
    <section id="feature-property" class="feature-property pt0 pb0 m0a">
        <div class="container ovh">
            <div class="row">
                <div class="col-lg-12">
                    <div class="main-title mb30">
                        <a href="hang-chuyen-nhuong-pc1">
                            <h4>{{__('Sản Phẩm Chuyển Nhượng')}}</h4>
                        </a>
                        <p></p>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="slide-blog-4">
                        @php
                            if($hcn == null){
                                $hcn = [];
                            }
                            else{
                                
                                $hcn = $hcn->products()->where('display',1)->take(5)->get();
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
    <section id="feature-property" class="feature-property pt0 pb0 m0a">
        <div class="container ovh">
            <div class="row">
                <div class="col-lg-12">
                    <div class="main-title mb30">
                        <a href="chu-dau-tu-bc5">
                            <h4>{{__('Sản Phẩm Chủ Đầu Tư')}}</h4>
                        </a>
                        <p></p>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="slide-blog-4">
                        @php
                            if($cdt == null){
                                $cdt = [];
                            }
                            else{
                                $cdt = $cdt->blogs()->where('display',1)->take(5)->get();
                                
                            }
                            
                        @endphp
                        @foreach($cdt as $item)
                            <div class="for_blog feat_property">
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

@endsection
@section('js')

@endsection