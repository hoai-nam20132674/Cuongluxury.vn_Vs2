@extends('front-end.layout.default')

@section('head')
    <title>{{$categorie->title}}</title>
    <meta name="description" content="{{$categorie->seo_description}}" />
    <meta name="keywords" content="{{$categorie->seo_keyword}}" />
    <meta name="DC.title" content="CuongLuxury" />
    <meta property="og:type" name="ogtype" content="Website" />
    <meta property="og:title" name="ogtitle" content="{{$categorie->title}}" />
    <meta property="og:description" name="ogdescription" content="{{$categorie->seo_description}}" />
    <meta property="og:url" name="ogurl" content="https://cuongluxury.vn/{{$categorie->url}}" />
    <meta property="og:image" name="ogimage" content="{{asset('uploads/images/blogs/categories/'.$categorie->avata)}}" />
    <meta property="og:image:alt" name="og:image:alt" content="Cuong Luxury" />
    <meta property="og:sitename" content="https://cuongluxury.vn/" />
    <link rel="canonical" href="https://cuongluxury.vn/{{$categorie->url}}" />
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
            <img src="{{asset('uploads/images/products/categories/'.$categorie->banner)}}" alt='{{$categorie->name}}' />
        </div>
        <div class=' hidden-xs'>

        <section class="services-st">
            <div class="container">
                <div class="row">
                    <div class="qcservices-box">
                        
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                    <div class="qcservices-item">
                                        <div class="qcservices-thumb">
                                            <a href="#" title="BẢO HÀNH TOÀN QUỐC">
                                                <img src="https://cuongluxury.vn/uploads/qc/icon-11.png" alt="BẢO HÀNH TOÀN QUỐC" />
                                            </a>
                                        </div>
                                        <div class="qcservices-content">
                                            <div class="qcservices-title">
                                                BẢO HÀNH TOÀN QUỐC
                                            </div>
                                            <div class="qcservices-desc">
                                                Sản phẩm được bảo trì và bảo hành trên Toàn Quốc
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                    <div class="qcservices-item">
                                        <div class="qcservices-thumb">
                                            <a href="#" title="MUA SẮM UY TÍN">
                                                <img src="https://cuongluxury.vn/uploads/qc/icon-22.png" alt="MUA SẮM UY TÍN" />
                                            </a>
                                        </div>
                                        <div class="qcservices-content">
                                            <div class="qcservices-title">
                                                MUA SẮM UY TÍN
                                            </div>
                                            <div class="qcservices-desc">
                                                Là địa chỉ uy tín tại Việt Nam được thành lập từ năm 2008
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                    <div class="qcservices-item">
                                        <div class="qcservices-thumb">
                                            <a href="#" title="QUÀ TẶNG HẤP DẪN">
                                                <img src="https://cuongluxury.vn/uploads/qc/icon-3.png" alt="QUÀ TẶNG HẤP DẪN" />
                                            </a>
                                        </div>
                                        <div class="qcservices-content">
                                            <div class="qcservices-title">
                                                QUÀ TẶNG HẤP DẪN
                                            </div>
                                            <div class="qcservices-desc">
                                                Luôn có những ưu đãi hấp dẫn cho Quý khách hàng
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                    <div class="qcservices-item">
                                        <div class="qcservices-thumb">
                                            <a href="#" title="CAM KẾT CHÍNH HÃNG">
                                                <img src="https://cuongluxury.vn/uploads/qc/icon-4.png" alt="CAM KẾT CHÍNH HÃNG" />
                                            </a>
                                        </div>
                                        <div class="qcservices-content">
                                            <div class="qcservices-title">
                                                CAM KẾT CHÍNH HÃNG
                                            </div>
                                            <div class="qcservices-desc">
                                                Sản phẩm được nhập khẩu chính hãng 100%
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            
                    </div>
                </div>
            </div>
        </section></div>
        <div class="section_product" style="background: url(/uploads/products/bg1/);background-size: cover;">
            <div class="container" itemscope="" itemtype="http://schema.org/Product">
                <div class="row">
                    <section class="main_container collection col-md-12 col-xs-12 ">
                        <h1 class="headding-prd-ss">
                            <span>
                                {{$categorie->name}}
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
                                            @foreach($categorie->properties as $item)
                                            <div class='col-lg-2 col-md-2 col-sm-3 col-xs-6 margin-bottom-10'>
                                                <aside class='aside-item filter-vendor '>
                                                    <div class='aside-title'>
                                                        <h2 class='title-head margin-top-0 thuong-hieu'><span>{{$item->name}}</span></h2>
                                                    </div>
                                                    <div class='aside-content filter-group'>
                                                        <ul>
                                                            @foreach($item->propertie_values as $item2)
                                                            <li class='filter-item filter-item--check-box filter-item--green '><span><label for='filter-{{$item2->id}}'><input  type='checkbox'  name='thuong-hieu'  class='attribute-products' id='filter-{{$item2->id}}' value='{{$item2->id}}'><i class='fa'></i>{{$item2->value}}</label></span></li>
                                                            @endforeach
                                                            
                                                        </ul>
                                                    </div>
                                                </aside>
                                            </div>
                                            @endforeach       
                                            
                                            
                                            <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12 margin-bottom-10">
                                                <div class="search-form-other-button">
                                                    <a onclick="handleKeyPress7();" title="Tìm kiếm">Tìm kiếm</a>
                                                </div>
                                                <script>
                                                    function handleKeyPress7() {
                                                        var selectedCountry = new Array();
                                                        var temp = new Array();
                                                        var n = jQuery(".attribute-products:checked").length;
                                                        if (n > 0) {
                                                            jQuery(".attribute-products:checked").each(function () {
                                                                selectedCountry += ($(this).val() + ";");
                                                            });
                                                        }
                                                        var temp = new Array();
                                                        var obj = {};
                                                        jQuery(".attribute-products:checked").each(function () {
                                                            var name = $(this).attr('name'); // Get name of this checkbox
                                                            if (obj[name]) {
                                                                obj[name].push($(this).val()); // Push value

                                                            } else {
                                                                obj[name] = [$(this).val()]; // Create array and push value
                                                            }
                                                        });
                                                        for (var key in obj) {
                                                            temp += key + ':' + obj[key] + "|";
                                                        }
                                                        var alias ="trang-suc";
                                                        var key = $("#input-search-other").val();
                                                        window.location.href = "/" + alias + "?key=" + key + "&fl=" + temp;

                                                        return false;
                                                    }
                                                </script>
                                            </div>
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
                                            @foreach($categorie->products()->where('display',1)->orderBy('id','DESC')->paginate(16) as $item)
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
                                $items = $categorie->products()->where('display',1)->orderBy('id','DESC')->paginate(16);
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
                        <div class="description-ss">
                            {!!$categorie->content!!}
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