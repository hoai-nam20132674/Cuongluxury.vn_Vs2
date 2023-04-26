@extends('front-end.layout.default')
@section('head')
	
	    <meta name="robots" content="noodp,index,follow" />
	    <meta name="google" content="notranslate" />
	    <meta name="keywords" content="{{$categorie->seo_keyword}}" />
	    <meta name="description" content="{{$categorie->seo_description}}" />
	    <meta property="og:type" content="website" />
	    <meta property="og:title" content="{{$categorie->title}}" />
	    <meta property="og:title" content="{{$categorie->title}}" />
	    <meta property="og:description" content="{{$categorie->seo_description}}" />
	    <meta property="og:site_name" content="{{$categorie->title}}" />
	    <meta property="og:url" content="{{$system->website}}/{{$categorie->url}}" />
	    <meta property="og:image" content="" />
	    <meta property="og:locale" content="vi_VN" />
	    <link rel="canonical" href="" /> 
	    <title>{{$categorie->name}}</title>

	    
	
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
                            @if($categorie->parent_id != null)
                                @php
                                    $cate_p = App\ProductCate::where('id',$categorie->parent_id)->get()->first();
                                @endphp
                                <li class="breadcrumb-item" ><a href="{{$cate_p->url}}">{{$cate_p->name}}</a></li>
                            @endif
                            <li class="breadcrumb-item active" aria-current="page">{{$categorie->name}}</li>

                        </ol>
                        <h1 class="breadcrumb_title">{{$categorie->name}}</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<!-- Listing Grid View -->
    <section class="our-listing bgc-f7 pb30-991">
        <div class="container">
            
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="grid_list_search_result style2">
                            <div class="col-sm-12 col-md-4 col-lg-3 col-xl-3">
                                <div class="left_area">
                                    <p>{{count($categorie->products()->where('display',1)->get())}} {{__('kết quả tìm thấy')}}</p>
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
                            
                            $products = $categorie->products()->where('display',1)->orderBy('id','DESC')->paginate(30);
                            
                            
                        @endphp
                        @foreach($products as $item)
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
                        <div class="col-lg-12 mt20">
                            <div class="mbp_pagination">
                                @php
                                    $items = $categorie->products()->paginate(30);
                                @endphp
                                <ul class="page_navigation">
                                    @if($items->currentPage() != 1)
                                        <li class="page-item">
                                            <a class="page-link" href="{{$items->url($items->currentPage()-1)}}" tabindex="-1" aria-disabled="true"> <span class="flaticon-left-arrow"></span> Prev</a>
                                        </li>
                                    @else
                                        <li class="page-item disabled">
                                            <a class="page-link" href="{{$items->url($items->currentPage()-1)}}" tabindex="-1" aria-disabled="true"> <span class="flaticon-left-arrow"></span> Prev</a>
                                        </li>
                                    @endif
                                    @for($i =1; $i<=$items->lastPage();$i++)
                                        @if($request->page == $i)
                                            <li class="page-item active" aria-current="page">
                                                <a class="page-link" href="{{$items->url($i)}}">{{$i}}<span class="sr-only">(current)</span></a>
                                            </li>
                                        @else
                                            <li class="page-item"><a class="page-link" href="{{$items->url($i)}}">{{$i}}</a></li>
                                        @endif
                                    @endfor
                                    @if( $items->currentPage() != $items->lastPage())
                                        <li class="page-item">
                                            <a class="page-link" href="#"><span class="flaticon-right-arrow"></span></a>
                                        </li>
                                    @else
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#"><span class="flaticon-right-arrow"></span></a>
                                        </li>
                                    @endif
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection
@section('js')

@endsection