@extends('front-end.layout.default')
@section('head')
	
	    <meta name="robots" content="noodp,index,follow" />
	    <meta name="google" content="notranslate" />
	    <meta name="keywords" content="Tìm kiếm" />
	    <meta name="description" content="" />
	    <meta property="og:type" content="website" />
	    <meta property="og:title" content="Tìm kiếm" />
	    <meta property="og:title" content="Tìm kiếm" />
	    <meta property="og:description" content="" />
	    <meta property="og:site_name" content="Tìm kiếm" />
	    <meta property="og:url" content="" />
	    <meta property="og:image" content="" />
	    <meta property="og:locale" content="vi_VN" />
	    <link rel="canonical" href="" /> 
	    <title>Tìm Kiếm</title>

	    
	
@endsection

@section('content')

	<!-- Listing Grid View -->
    <section class="inner_page_breadcrumb">
        <div class="container">
            
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb_content">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/">{{__('trang chủ')}}</a></li>
                            <li class="breadcrumb-item active " aria-current="page">
                                <a href="#">
                                    @if(isset($request->keyword)){{__('tìm kiếm từ khóa')}} "{{$request->keyword}}"
                                    @endif
                                    @if(isset($request->bed)) {{__('phòng ngủ')}} "{{$request->bed}}"
                                    @endif
                                    @if(isset($request->bath)) {{__('phòng tắm')}} "{{$request->bath}}"
                                    @endif
                                </a>
                            </li>
                        </ol>
                        <h1 class="breadcrumb_title">{{__('Tìm Kiếm Sản Phẩm')}}</h1>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <section>
        <div class="container">    

            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="grid_list_search_result style2">
                            <div class="col-sm-12 col-md-4 col-lg-3 col-xl-3">
                                <div class="left_area">
                                    @if(count($products) > 1)
                                        <p>{{count($products)}} {{__('nhiều kết quả tìm thấy')}}</p>
                                    @else
                                        <p>{{count($products)}} {{__('kết quả tìm thấy')}}</p>
                                    @endif
                                    
                                </div>
                            </div>
                            <!-- <div class="col-sm-12 col-md-8 col-lg-9 col-xl-9">
                                <div class="right_area style2 text-right">
                                    <ul>
                                        <li class="list-inline-item"><span class="shrtby">Sắp xếp:</span>
                                            <select class="selectpicker show-tick">
                                                <option>Mới nhất</option>
                                                <option>Giá thấp -> cao</option>
                                                <option>Giá cao -> thấp</option>
                                                <option>Xem nhiều nhất</option>
                                            </select>
                                        </li>
                                    </ul>
                                </div>
                            </div> -->
                        </div>
                    </div>
                    <div class="row">
                        @foreach($products as $item)
                            <div class="col-md-6 col-lg-4">
                                @include('front-end.layout.product-item2')
                            </div>
                        @endforeach
                        <div class="col-lg-12 mt20">
                            <div class="mbp_pagination">
                                @php
                                    $items = $products;
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