@extends('front-end.layout.default')

@section('head')
    <title>Tìm kiếm</title>
    <meta name="description" content="tìm kiếm" />
    <meta name="keywords" content="tìm kiếm" />
    <meta name="DC.title" content="CuongLuxury" />
    <meta property="og:type" name="ogtype" content="Website" />
    <meta property="og:title" name="ogtitle" content="tìm kiếm" />
    <meta property="og:description" name="ogdescription" content="tìm kiếm" />
    <meta property="og:url" name="ogurl" content="https://cuongluxury.vn/tim-kiem" />
    <meta property="og:image:alt" name="og:image:alt" content="Cuong Luxury" />
    <meta property="og:sitename" content="https://cuongluxury.vn/" />
    <style type="text/css">
        .d_page b{
            margin-right: 0px !important;

        }
    </style>
@endsection


@section('content')
    <section id="content">


        <section class="bread-crumb margin-bottom-10 hidden">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <ul class="breadcrumb" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
                            <li class="home">
                                <a itemprop="url" href="/" title="Trang chủ"><span itemprop="title">Trang chủ</span></a>
                            </li>

                            <li ><span><i class='fa fa-angle-right'></i> </span><strong itemprop='title'><a itemprop='url' href='https://cuongluxury.vn/trang-suc' title='Trang sức'>Trang sức</a></strong></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <div class="cates-images-ppp">
            <img src="{{asset('uploads/images/products/categories/'.$img)}}" alt='Tìm kiếm' />
        </div>
        <div class=' hidden-xs'>
            <!-- Cam kết -->
            @include('front-end.layout.section_pledge')
            <!-- End cam kết -->
        </div>
        <div class="section_product" style="background: url(/uploads/products/bg1/);background-size: cover;">
            <div class="container" itemscope="" itemtype="http://schema.org/Product">
                <div class="row">
                    <section class="main_container collection col-md-12 col-xs-12 ">
                        <h1 class="headding-prd-ss">
                            <span>
                                Tìm kiếm
                            </span>
                        </h1>
                       
                        <div class="row title-head-products" style="clear: both">
                            <div class="col-xs-12 col-md-10">
                                <div class="filter-block ">
                                    <div class="row">

                                        <div class="filter-box">
                                            <div class="col-lg-2 col-md-2 col-sm-3 hidden">
                                                <div class="search-form-other">
                                                    <input type="search" id="input-search-other" placeholder="Nhập từ khóa cần tìm " />
                                                </div>
                                            </div>
                                            <p style="color: #fff;font-size: 14px;">Có <span style="color: #f79227; font-size: 14px"> "{{count($products)}}"</span> kết quả tìm thấy với từ khóa <span style="color: #f79227; font-size: 14px"> "{{$request->key}}"</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-12 col-md-2">
                                <div class="">
                                    <select name="ctl19$ctl00$ctl00$ctl00$ddlsort" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl19$ctl00$ctl00$ctl00$ddlsort\&#39;,\&#39;\&#39;)&#39;, 0)" id="ddlsort" class="dsort-styles">
            <option selected="selected" value="-1">Sắp xếp: H&#224;ng mới</option>
            <option value="2">Gi&#225; tăng dần</option>
            <option value="3">Gi&#225; giảm dần</option>
            <option value="4">Sắp hết h&#224;ng</option>
            <option value="5">H&#224;ng giảm gi&#225;</option>

        </select>
                                </div>
                            </div>
                        </div>
                        <div class="category-products products category-products-grids">
                            <section class="products-view products-view-grid">
                                <div class="row">
                                            @foreach($products as $item)
                                            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3 margin-bottom-15">
                                                <div class='prdboxsli-item'>
                                                      <div class='prdboxsli-thumb'><a href='/{{$item->url}}' title='{{$item->name}}'><img loading='lazy' src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt='{{$item->name}}' /></a></div>
                                                      <div class='prdboxsli-ccname'>Hublot</div>
                                                      <div class='prdboxsli-key'>MSP: {{$item->ma}}</div>
                                                      <div class='prdboxsli-title'><a href='/{{$item->url}}' title='{{$item->name}}'>{{$item->name}}</a></div>
                                                      <div class='prdboxsli-price'>
                                                         <div class='item-price'><span class='special-price'><span class='price-container'><span class='price-wrapper'><span class='price'>{!!number_format($item->price)!!}<span class='dvtt'>@if($item->tiente == 0) đ @else $ @endif </span></span></span></span></span></div>
                                                      </div>
                                                </div>
                                            </div>
                                            @endforeach
                                             
                                        
                                </div>
                            </section>
                            @php
                                $items = $products;
                            @endphp
                            <div class="d_page">
                                @if($items->currentPage() != 1)
                                    
                                    <a href="{{$items->url($items->currentPage()-1)}}"><</a>
                                @else
                                    <b href="{{$items->url($items->currentPage()-1)}}"><</b>
                                @endif
                                @for($i =1; $i<=$items->lastPage();$i++)
                                    @if($request->page == $i)
                                        
                                        <b>{{$i}}</b>
                                    @else
                                        <a href="{{$items->url($i)}}">{{$i}}</a>
                                    @endif
                                @endfor
                                
                                @if( $items->currentPage() != $items->lastPage())
                                    <a href="{{$items->url($items->currentPage()+1)}}">></a>
                                @else
                                    <b href="{{$items->url($items->currentPage()+1)}}">></b>
                                @endif

                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <style>.footer-container .footer-top .footer-static {
            margin-top: 10px;
        }</style>

            </section>

@endsection

@section('js')
    

@endsection