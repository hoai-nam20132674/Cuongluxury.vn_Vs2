@extends('front-end.layout.default')

@section('head')
    <title>{{$product->title}}</title>
    <meta name="description" content="{{$product->seo_description}}" />
    <meta name="keywords" content="{{$product->seo_keyword}}" />
    <meta name="DC.title" content="CuongLuxury" />
    <meta property="og:type" name="ogtype" content="Website" />
    <meta property="og:title" name="ogtitle" content="{{$product->title}}" />
    <meta property="og:description" name="ogdescription" content="{{$product->seo_description}}" />
    <meta property="og:url" name="ogurl" content="https://cuongluxury.vn/{{$product->url}}" />
    <meta property="og:image" name="ogimage" content="{{asset('uploads/images/products/'.$product->avata)}}" />
    <meta property="og:image:alt" name="og:image:alt" content="Cuong Luxury" />
    <meta property="og:sitename" content="https://cuongluxury.vn/" />
    <link rel="canonical" href="https://cuongluxury.vn/{{$product->url}}" />
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

                            <li  ><span><i class='fa fa-angle-right'></i> </span><span itemprop='title'><a itemprop='url' href='https://cuongluxury.vn/dong-ho' title='Đồng hồ'>Đồng hồ</a></span></li><li  ><span><i class='fa fa-angle-right'></i> </span><span itemprop='title'><a itemprop='url' href='https://cuongluxury.vn/hublot' title='Hublot'>Hublot</a></span></li> <li> <span><i class='fa fa-angle-right'></i> </span><strong itemprop='title'> {{$product->title}}</strong></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

        <div class="cates-images-ppp">
            @php
                $c = $product->categories()->get()->first();
            @endphp
            <img src="{{asset('uploads/images/products/categories/'.$c->banner)}}" alt='Hublot' />
        </div>
        <div class=' hidden-xs'>
            
            <!-- Cam kết -->
            @include('front-end.layout.section_pledge')
            <!-- End cam kết -->
        </div>
        <section class="product products-details" product-id='{{$product->id}}' itemscope itemtype="http://schema.org/Product">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 details-product">
                        <div class=" product-bottom no-margin-mobile">
                            <div class="clearfix padding-bottom-10">
                                <div class="col-xs-12 col-sm-6 col-lg-4 col-md-4">
                                    <div class="relative product-image-block ">
                                        <div class="large-image">
                                            <a href="{{asset('uploads/images/products/details/'.$product->avata)}}" data-rel='prettyPhoto[product-gallery]' class='large_image_url'><img id='zoom_01' class='' src="{{asset('uploads/images/products/details/'.$product->avata)}}" alt='Hublot Classic Fusion Titanium Racing Grey'/></a>

                                            <div class="hidden">
                                                
                                            </div>
                                        </div>

                                        <div id="gallery_01" class="owl-carousel owl-theme thumbnail-product margin-top-15" data-lg-items="4" data-md-items="4" data-sm-items="4" data-xs-items="4" data-xss-items="3" data-margin="10" data-nav="true">

                                            <div class='item'><a class='thumb-link' href='javascript:void(0);' data-image="{{asset('uploads/images/products/details/'.$product->avata)}}" data-zoom-image="{{asset('uploads/images/products/details/'.$product->avata)}}"><img src="{{asset('uploads/images/products/details/'.$product->avata)}}" alt='' data-image="{{asset('uploads/images/products/details/'.$product->avata)}}"></a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-lg-5 col-md-5 details-pro">
                                    <div class="product-top clearfix">
                                        <h1 class="title-head">
                                            {{$product->name}}
                                        </h1>
                                    </div>
                                    <div class="products_key">
                                        Mã sản phẩm:
                                        {{$product->ma}}
                                    </div>
                                    <div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">

                                        <div class="price-box clearfix">
                                            @if($product->sale == null)
                                                <span class='special-price'><span class='price product-price'>Giá bán: {!!number_format($product->price)!!}<span class='dvtt'>@if($product->tiente == 0) đ @else $ @endif</span></span></span>
                                            @else
                                                <span class='special-price'><span class='price product-price'>Giá bán: {!!number_format($product->sale)!!}<span class='dvtt'>@if($product->tiente == 0) đ @else $ @endif</span></span></span>
                                                <span class="old-price">Giá Niêm Yết:<del class="price product-price-old">{!!number_format($product->price)!!}<span class="dvtt">@if($product->tiente == 0) đ @else $ @endif</span></del></span>
                                            @endif
                                            
                                        </div>
                                    </div>
                                    <div class="product-summary product_description margin-bottom-15 margin-top-15">
                                        <div class="rte description">
                                            @if(count($product->products_variation))
                                                @foreach($properties as $propertie)
                                                    <div propertie-id='{{$propertie->id}}' id="propertie-item">
                                                        <span class="inventory">{{$propertie->name}}</span>
                                                        <ul class="ttp">
                                                            @foreach($properties_value as $propertie_val)
                                                                @if($propertie_val->properties_id == $propertie->id)
                                                                    <li propertie-id='{{$propertie->id}}' class="propertie-value-item tttxt" data-vl="{{$propertie_val->id}}">
                                                                        <span class="tttt">
                                                                            {{$propertie_val->value}}
                                                                        </span>
                                                                    </li>
                                                                @endif
                                                            @endforeach
                                                        </ul>
                                                    </div>
                                                @endforeach
                                            
                                            @endif

                                        </div>
                                        <p style='color:#d0d0d0'><i>Giá trên Website mang tính chất tham khảo có thể thay đổi tùy thời điểm, vui lòng liên hệ Hotline 0987 56 56 56 để được báo giá tốt nhất</i></p>
                                        <p class="inventory">
                                            <span>Tình trạng:</span>
                                            <span class="inventory-quantity">
                                                <span itemprop="availability">
                                                    Còn hàng
                                                </span>
                                            </span>
                                        </p>

                                        <div class="products-other-inPro">
                                            
                                                    <div class="products-other-uudai-headding">
                                                       Khuyến mãi
                                                    </div>
                                                    <div class="sidebar-block service-block">
                                                        <div class="sidebar-content">
                                                            @php
                                                                $khuyenmai = App\Nddl::where('keyword','khuyenmai')->get()->first();
                                                            @endphp
                                                            {!!$khuyenmai->content!!}

                                                        </div>
                                                    </div>
                                                
                                        </div>

                                        <div class="product-summary product_description margin-bottom-15 margin-top-15">
                                            <div class="rte description">
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-product">
                                        <div class="form-inline">
                                            <div class="form-group ">
                                                
                                                <div class="btn-mua">

        <!-- <input type="submit" name="ctl19$ctl00$ctl00$ctl00$btnbuy" value="Mua ngay" id="btnbuy" class="btn-add-cart btn " /> -->

                                                    <a class="btn btn-primary muangay" href="{{URL::route('addToCart',[$product->id,1])}}" data-target="#popup-cart">
                                                        <span class="txt-main">Mua ngay</span>
                                                    </a>

                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="sendemail-box">
                                        <div class="sendemail-headding">
                                            <span>Tư vấn miễn phí</span>
                                        </div>
                                        <div id="widget-subscribe-form-result" class="">
                                        </div>
                                        <input id="signup_email" placeholder="Để lại số điện thoại..." />
                                        <a onclick="addContact()" class="send-em">Gửi</a>
                                        
                                    </div>
                                    <div class="social-icons">
                                        <ul>
                                            <li class="facebook"><a class="" href="https://www.facebook.com/profile.php?id=100086472821714"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li class="googleplus"><a class="" href=" https://plus.google.com" rel="publisher"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                            <li class="pinterest"><a class="" href=""><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                            <li class="youtube"><a class="" href="https://twitter.com/"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                

        <div class="col-xs-12 col-sm-12 col-lg-3 col-md-3 hidden-sm hidden-xs">
            
                    <div class="so1top">
                        <a href="" title="Số 1 việt nam">
                            <img src="https://cuongluxury.vn/uploads/independent/Untitled-1.png" alt="Số 1 việt nam" />
                        </a>
                    </div>
                

            <div class="sidebar-block service-block">
                <div class="sidebar-content">
                        @foreach($policys as $item)
                            <div class="service-item service-item-two">
                                <div class="item-top">
                                    <span class="img">
                                        <img src="{{asset('uploads/images/adss/'.$item->url)}}" alt="{{$item->title}}">
                                    </span>
                                    <span class="title">
                                        {{$item->title}}
                                    </span>
                                </div>
                            </div>
                        @endforeach
                            
                    @foreach($contacts as $item)
                        <div class="service-item service-item-two" style="border-bottom:0px">
                            <div class="item-top">
                                <span class="img">
                                    <img src="{{asset('uploads/images/adss/'.$item->url)}}" alt="{{$item->title}}">
                                </span>
                                <span class="title">
                                    {{$item->title}}
                                </span>
                            </div>
                        </div>
                    @endforeach
                    
                </div>
            </div>
        </div>
                            </div>
                        </div>
                        <div class=" margin-top-30 no-margin-mobile">
                            <div class="col-lg-9 col-md-9 col-sm-8 col-xs-12">
                                <div class="product-tab e-tabs padding-bottom-10">
                                    <div class="border-ghghg margin-bottom-20">
                                        <ul class="tabs tabs-title clearfix">
                                            <li class="tab-link" data-tab="tab-1">
                                                <h3><span>Chi tiết thông tin</span></h3>
                                            </li>

                                            <li class="tab-link " data-tab="tab-2">
                                                <h3><span>Tại sao chọn chúng tôi</span></h3>
                                            </li>
                                            <li class="tab-link " data-tab="tab-3">
                                                <h3><span>Video</span></h3>
                                            </li>
                                        </ul>
                                    </div>

                                    <div id="tab-1" class="tab-content">
                                        <div id="contents-prs" class="rte details-cs">
                                            
                                            {!!$product->content!!}
                                        </div>
                                    </div>

                                    <div id="tab-2" class="tab-content">
                                        @php
                                            $tscct = App\Nddl::where('keyword','tscct')->get()->first();
                                        @endphp
                                        {!!$tscct->content!!}
                                    </div>
                                    <div id="tab-3" class="tab-content">
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12">
                                
        <div class="right_module">

            <div class="similar-product">
                <div class="right-bestsell">
                    <h2>
                        <a title="Sản phẩm bán chạy">
                           Sản phẩm bán chạy
                        </a>
                    </h2>
                    <div class="section-tour-owl23 owl-carousel not-dqowl products-view-grid margin-top-10" data-md-items="1" data-sm-items="1" data-xs-items="1" data-margin="10">
                        
                    </div>
                </div>
            </div>
        </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="p2">
            
                    <div class=" margin-top-20 margin-bottom-10 no-margin-mobile">
                        <div class="">
                            <div class="related-product">
                                <div class="home-title">
                                    <h2><a>Sản phẩm cùng loại</a></h2>
                                </div>
                                <div class="section-tour-owl owl-carousel not-dqowl products-view-grid margin-top-10" data-md-items="4" data-sm-items="4" data-xs-items="2" data-margin="10">
                                            @foreach($products as $item)
                                                <div class='item'>
                                                    <div class='prdboxsli-item'>
                                                       <div class='prdboxsli-thumb'><a href='/{{$item->url}}' title='{{$item->name}}'><img loading='lazy' src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt='{{$item->name}}' /></a></div>
                                                       <div class='prdboxsli-ccname'>{{$c->title}}</div>
                                                       <div class='prdboxsli-key'>MSP: {{$item->ma}}</div>
                                                       <div class='prdboxsli-title'><a href='/{{$item->url}}' title='Patek Philippe Complications 5905R-001 Like New 2020'>{{$item->name}}</a></div>
                                                       <div class='prdboxsli-price'>
                                                          <div class='item-price'><span class='special-price'><span class='price-container'><span class='price-wrapper'><span class='price'>{!!number_format($item->price)!!}<span class='dvtt'>@if($item->tiente == 0) đ @else $ @endif </span></span></span></span></span></div>
                                                       </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                            
                                        
                                </div>
                            </div>
                        </div>
                    </div>
                
        </div>
            </div>
        </section>
        <script>
            $(document).ready(function () {
                if ($(window).width() > 1200) {
                    $('#zoom_01').elevateZoom({
                        gallery: 'gallery_01',
                        zoomWindowWidth: 490,
                        zoomWindowHeight: 500,
                        zoomWindowOffetx: 10,
                        easing: true,
                        scrollZoom: true,
                        cursor: 'pointer',
                        galleryActiveClass: 'active',
                        imageCrossfade: true
                    });
                }

            });
            $('#gallery_01 img').click(function (e) {
                e.preventDefault();
                $('.large-image img').attr('src', $(this).parent().attr('data-zoom-image'));
            })
            $('#gallery_01 img, .swatch-element label').click(function (e) {
                $('.checkurl').attr('href', $(this).attr('data-image'));
                if ($(window).width() > 1200) {
                    setTimeout(function () {
                        $('.zoomContainer').remove();
                        $('#zoom_01').elevateZoom({
                            zoomWindowWidth: 490,
                            zoomWindowHeight: 500,
                            zoomWindowOffetx: 10,
                            easing: true,
                            scrollZoom: true,
                            cursor: 'pointer',
                            galleryActiveClass: 'active',
                            imageCrossfade: true
                        });
                    }, 300);
                }

            })
            function scrollToxx() {
                $('html, body').animate({ scrollTop: $('.product-tab.e-tabs').offset().top }, 'slow');
                $('.tab-content, .product-tab .tab-link').removeClass('current');
                $('#tab-3, .product-tab .tab-link:nth-child(3)').addClass('current');
                return false;
            }
            function scrollToxxs() {
                $('html, body').animate({ scrollTop: $('.product-tab.e-tabs').offset().top }, 'slow');
                return false;
            }
            $('.btn--view-more .less-text').click(function () {
                scrollToxxs();
            })
        </script>
        <script src="{{asset('js/jas.js')}}"></script>
        <link href="{{asset('css/lightbox.css')}}" rel="stylesheet" />
        <script src="{{asset('js/jquery.elevatezoom.min.js')}}"></script>
        <script src="{{asset('js/jquery.prettyPhoto.min.js')}}"></script>
        <script src="{{asset('js/jquery.prettyPhoto.init.min.js')}}"></script>
        <script>
            var quantity = parseInt($('.product-quantity input.qty').val());
            $('.minus').click(function () {
                if (quantity > 0) {
                    if (quantity == 1) {
                        $('#addtocart').attr('disabled', 'disabled');
                    }
                    quantity -= 1;
                }
                else {
                    quantity = 0;
                }
                $('.product-quantity input.qty').val(quantity);
            });
            $('.plus').click(function () {
                $('.add-to-cart').removeAttr('disabled');
                if (quantity < 100) {
                    quantity += 1;
                }
                else {
                    quantity = 100;
                }
                $('.product-quantity input.qty').val(quantity)
            });
        </script>
        <script type="text/javascript">
            function addCommas(nStr)
            {
                nStr += '';
                x = nStr.split('.');
                x1 = x[0];
                x2 = x.length > 1 ? '.' + x[1] : '';
                var rgx = /(\d+)(\d{3})/;
                while (rgx.test(x1)) {
                    x1 = x1.replace(rgx, '$1' + ',' + '$2');
                }
                return x1 + x2;
            }
            $(document).on("click", ".propertie-value-item", function (event) {
                var propertie_id = $(this).attr('propertie-id')
                $('.propertie-value-item[propertie-id='+propertie_id+']').each(function(){
                    $(this).removeClass('selected');
                });
                $(this).addClass("selected");
                var str_ids = '';
                var product_id = $('.products-details').attr('product-id');
                $('.propertie-value-item').each(function(){
                    if($(this).hasClass('selected')){
                        str_ids = $(this).attr('data-vl')+','+str_ids;
                    }
                });
                var url = 'findProductVariation/'+product_id+'?properties_value_id='+str_ids;
                $.ajax({
                    type: 'GET',
                    url: url,
                    dataType: 'json',
                    success: function(data) {
                        if(!data){
                            $('.products_key').text('Không có sản phẩm phù hợp.Vui lòng chọn thêm hoặc thay đổi thuộc tính sản phẩm');
                        }
                        else{
                            $('.products_key').text('Mã sản phẩm: '+data.sku);
                            $('.product-price').text('Giá bán: '+addCommas(data.price)+' đ');
                            var url = $('.muangay').attr('href');
                            url = url+'?variation_id='+data.id;
                            $('.muangay').attr('href',url);
                        }
                        

                    }
                });
                
            });
            function addContact(){
                var phone = $('input#signup_email').val();
                var url = 'addContact2?phone='+phone;
                $.ajax({
                    type: 'GET',
                    url: url,
                    dataType: 'json',
                    success: function(data) {
                        if(data){
                            toastr.success('Gửi yêu cầu thành công');
                        }
                        else{
                            toastr.warning('Gửi không thành công');
                        }
                        

                    }
                });
                console.log(phone);
            }
        </script>

@endsection

@section('js')
    

@endsection