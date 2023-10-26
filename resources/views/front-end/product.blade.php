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
        </section>
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

                                            <span class='special-price'><span class='price product-price'>Giá bán: {!!number_format($product->price)!!}<span class='dvtt'>@if($product->tiente == 0) đ @else $ @endif</span></span></span>
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
                                                           <p>
            Hỗ trợ trả g&oacute;p với l&atilde;i suất 0%</p>
        <p>
            Tặng g&oacute;i Spa miễn ph&iacute; 1 năm trị gi&aacute; 1.500.000 đồng</p>
        <p>
            Tặng Voucher l&ecirc;n tới 2.000.000 đồng cho c&aacute;c đơn h&agrave;ng tiếp theo</p>
        <p>
            Giảm ngay 1.000.000 đồng cho kh&aacute;ch h&agrave;ng đặt h&agrave;ng tr&ecirc;n Website</p>

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
                                        
                                                <div style="text-align: justify;">
            Bạn đ&atilde; t&igrave;m hiểu về rất nhiều d&ograve;ng sản phẩm sang trọng v&agrave; quyết định dừng lại ở đ&acirc;y. C&oacute; lẽ mẫu sản phẩm tr&ecirc;n đang khiến bạn rất th&iacute;ch th&uacute; v&agrave; h&agrave;o hứng để sở hữu. N&oacute; quả l&agrave; một mẫu sản phẩm ấn tượng v&agrave; ph&ugrave; hợp với phong c&aacute;ch của bạn. Bạn tin chắc rằng n&oacute; sẽ gi&uacute;p bạn trở n&ecirc;n nổi bật, tự tin v&agrave; cuốn h&uacute;t hơn.</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            Nhưng giờ bạn đang tự hỏi: Tại sao bạn n&ecirc;n chọn mua mẫu sản phẩm n&agrave;y tại Cuong Luxury? Hay Cuong Luxury c&oacute; ưu điểm g&igrave; khiến bạn thực sự thỏa m&atilde;n với quyết định mua h&agrave;ng của m&igrave;nh? Đừng lo, ch&uacute;ng t&ocirc;i sẽ giải đ&aacute;p ngay những thắc mắc n&agrave;y của bạn với 7 l&yacute; do sau đ&acirc;y:</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <h4 style="text-align: justify;">
            <strong>1. Cuong Luxury l&agrave; thương hiệu c&oacute; uy t&iacute;n l&acirc;u đời</strong></h4>
        <div style="text-align: justify;">
            Được th&agrave;nh lập từ th&aacute;ng 10 năm 2008, Cuong Luxury l&agrave; một trong những thương hiệu ti&ecirc;n phong trong ng&agrave;nh h&agrave;ng xa xỉ, với c&aacute;c d&ograve;ng sản phẩm kinh doanh chủ đạo bao gồm điện thoại Vertu, đồng hồ v&agrave; trang sức cao cấp. Cho đến thời điểm hiện tại, Cuong Luxury đ&atilde; c&oacute; hơn 14 năm kinh doanh v&agrave; ph&aacute;t triển trong ng&agrave;nh nghề đặc th&ugrave; n&agrave;y.</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            <img alt="" src="https://cuongluxury.vn/uploads/images/images/a/Cuong-Luxury-0.jpg" style="width: 1222px; height: 812px;" /></div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            Lẽ dĩ nhi&ecirc;n, kh&ocirc;ng phải t&igrave;nh cờ m&agrave; một thương hiệu c&oacute; thể ph&aacute;t triển mạnh mẽ trong suốt 14 năm li&ecirc;n tiếp. N&oacute; thực sự l&agrave; t&acirc;m huyết của cả một đội ngũ nh&acirc;n vi&ecirc;n với chất lượng của từng mẫu sản phẩm c&ugrave;ng dịch vụ kh&aacute;ch h&agrave;ng. V&agrave; với bề d&agrave;y kinh nghiệm của m&igrave;nh, Cuong Luxury lu&ocirc;n tự tin l&agrave; thương hiệu c&oacute; uy t&iacute;n l&acirc;u đời với cam kết sẽ đem đến cho kh&aacute;ch h&agrave;ng những sản phẩm c&oacute; chất lượng v&agrave; gi&aacute; trị ho&agrave;n hảo nhất.</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <h4 style="text-align: justify;">
            <strong>2. Đa dạng sản phẩm v&agrave; mẫu m&atilde;</strong></h4>
        <div style="text-align: justify;">
            Tại Showroom của Cuong Luxury lu&ocirc;n sẵn c&oacute; h&agrave;ng trăm sản phẩm thuộc nhiều thương hiệu nổi tiếng thế giới như Vertu, Hublot, Rolex, Patek Philippe hay Richard Mille,... với thiết kế, chất liệu v&agrave; gi&aacute; th&agrave;nh đa dạng để bạn c&oacute; thể thỏa th&iacute;ch trải nghiệm sản phẩm v&agrave; lựa chọn được những mẫu m&atilde; thiết kế ph&ugrave; hợp nhất với bản th&acirc;n m&igrave;nh.</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            <img alt="" src="https://cuongluxury.vn/uploads/images/images/a/Cuong_Luxury-01.jpg" style="width: 1222px; height: 812px;" /></div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <h4 style="text-align: justify;">
            <strong>3. Lu&ocirc;n tận t&acirc;m từ những điều nhỏ nhất</strong></h4>
        <div style="text-align: justify;">
            Cuong Luxury lu&ocirc;n quan niệm chất lượng sản phẩm v&agrave; dịch vụ l&agrave; những yếu tố cốt l&otilde;i m&agrave; thương hiệu cần phải hướng đến, do đ&oacute;, c&aacute;c sản phẩm tại Cuong Luxury đều l&agrave; sản phẩm thật, với gi&aacute; trị thật v&agrave; được nhập khẩu ch&iacute;nh h&atilde;ng hoặc th&ocirc;ng qua c&aacute;c đại l&yacute; ủy quyền với th&ocirc;ng tin đầy đủ v&agrave; ch&iacute;nh x&aacute;c.&nbsp;</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            <img alt="" src="https://cuongluxury.vn/uploads/images/images/a/Cuong-Luxury-1.jpg" style="width: 1222px; height: 812px;" /></div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            Ngo&agrave;i ra, trước khi tới tay kh&aacute;ch h&agrave;ng, c&aacute;c sản phẩm cũng phải được kiểm tra, đ&aacute;nh gi&aacute; một c&aacute;ch hết sức kỹ c&agrave;ng bởi những chuy&ecirc;n vi&ecirc;n c&oacute; nhiều năm kinh nghiệm tại Cuong Luxury, nhằm đảm bảo sản phẩm lu&ocirc;n c&oacute; được chất lượng cao nhất, gi&uacute;p Qu&yacute; kh&aacute;ch c&oacute; thể an t&acirc;m v&agrave; thoải m&aacute;i sử dụng ch&uacute;ng thường xuy&ecirc;n.</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <h4 style="text-align: justify;">
            <strong>4. Gi&aacute; cả hợp l&yacute;, cạnh tranh</strong></h4>
        <div style="text-align: justify;">
            Tại Cuong Luxury, c&aacute;c sản phẩm lu&ocirc;n c&oacute; nguồn gốc uy t&iacute;n, r&otilde; r&agrave;ng v&agrave; được đặt h&agrave;ng trực tiếp từ c&aacute;c h&atilde;ng lớn hoặc c&aacute;c đại l&yacute; ủy quyền với mức chiết khấu cao, đảm bảo chất lượng sản phẩm tốt, mức gi&aacute; th&agrave;nh cực kỳ hợp l&yacute; v&agrave; cạnh tranh so với thị trường chung.</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <h4 style="text-align: justify;">
            <strong>5. Dịch vụ chăm s&oacute;c tận t&igrave;nh, chu đ&aacute;o</strong></h4>
        <div style="text-align: justify;">
            Một sản phẩm tốt lu&ocirc;n phải đi k&egrave;m với những dịch vụ c&oacute; chất lượng xứng tầm. Vậy n&ecirc;n, ngo&agrave;i việc được đ&agrave;o tạo kỹ lưỡng về kỹ năng chuy&ecirc;n m&ocirc;n, am hiểu t&acirc;m l&yacute; kh&aacute;ch h&agrave;ng, th&igrave; đội ngũ nh&acirc;n vi&ecirc;n v&agrave; kỹ thuật vi&ecirc;n tại Cuong Luxury lu&ocirc;n phải l&agrave; những con người y&ecirc;u nghề, y&ecirc;u sản phẩm v&agrave; thực sự tận t&acirc;m với c&ocirc;ng việc, với kh&aacute;ch h&agrave;ng.&nbsp;</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            <img alt="" src="https://cuongluxury.vn/uploads/images/images/a/Cuong-Luxury-5.jpg" style="width: 1222px; height: 812px;" /></div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            Tất cả điều n&agrave;y đều hướng đến chỉ một điều duy nhất l&agrave; gi&uacute;p bạn c&oacute; được những trải nghiệm ho&agrave;n hảo nhất trong suốt qu&aacute; tr&igrave;nh từ khi mua h&agrave;ng cho tới l&uacute;c sử dụng sản phẩm. V&agrave; dịch vụ chăm s&oacute;c tận t&igrave;nh, chu đ&aacute;o cũng ch&iacute;nh l&agrave; cam kết h&agrave;ng đầu m&agrave; Cuong Luxury muốn d&agrave;nh cho bạn.</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <h4 style="text-align: justify;">
            <strong>6. Ch&iacute;nh s&aacute;ch đổi trả r&otilde; r&agrave;ng</strong></h4>
        <div style="text-align: justify;">
            Cuong Luxury lu&ocirc;n đảm bảo c&ocirc;ng khai minh bạch v&agrave; r&otilde; r&agrave;ng mọi th&ocirc;ng tin về ch&iacute;nh s&aacute;ch bảo h&agrave;nh v&agrave; ch&iacute;nh s&aacute;ch đổi trả cho từng mẫu sản phẩm. Vậy n&ecirc;n, bạn ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m sở hữu v&agrave; sử dụng sản phẩm với sự chăm s&oacute;c tận t&igrave;nh đến từ Cuong Luxury. Ngo&agrave;i ra, khi c&oacute; nhu cầu quay đầu sản phẩm, bạn cũng sẽ được hỗ trợ tốt nhất với mức chi ph&iacute; bỏ ra hết sức hợp l&yacute;.</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            <img alt="" src="https://cuongluxury.vn/uploads/images/images/a/Cuong-Luxury-02.jpg" style="width: 1222px; height: 812px;" /></div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <h4 style="text-align: justify;">
            <strong>7. Sự tin tưởng, lựa chọn của nhiều kh&aacute;ch h&agrave;ng</strong></h4>
        <div style="text-align: justify;">
            Với lợi thế ti&ecirc;n phong trong ng&agrave;nh h&agrave;ng xa xỉ, c&ugrave;ng niềm đam m&ecirc; v&agrave; sự tận t&acirc;m với nghề, trong suốt 14 năm qua, Cuong Luxury đ&atilde; phục vụ hơn 35.000 kh&aacute;ch h&agrave;ng tr&ecirc;n khắp mọi miền Tổ quốc với h&agrave;ng chục ngh&igrave;n sản phẩm ho&agrave;n hảo, chất lượng. Rất nhiều kh&aacute;ch h&agrave;ng trong số đ&oacute; đ&atilde; quay trở lại mua h&agrave;ng lần tiếp theo v&agrave; xem đ&acirc;y l&agrave; điểm đến đầu ti&ecirc;n khi muốn sở hữu một m&oacute;n đồ cao cấp.</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            <img alt="" src="https://cuongluxury.vn/uploads/images/images/a/Cuong-Luxury-4.jpg" style="width: 1222px; height: 812px;" /></div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            Cuối c&ugrave;ng, bằng niềm đam m&ecirc; bất tận v&agrave; những nỗ lực kh&ocirc;ng ngừng nghỉ của m&igrave;nh, Cuong Luxury đ&atilde;, đang, v&agrave; sẽ ng&agrave;y c&agrave;ng ph&aacute;t triển tốt hơn để đem đến cho bạn những mẫu sản phẩm chất lượng c&ugrave;ng dịch vụ kh&aacute;ch h&agrave;ng ho&agrave;n hảo nhất. Do đ&oacute;, Cuong Luxury lu&ocirc;n tự tin v&agrave; khẳng định rằng việc sở hữu những sản phẩm tại Cuong Luxury sẽ lu&ocirc;n l&agrave; sự lựa chọn đ&uacute;ng đắn nhất d&agrave;nh cho bạn.</div>
        <div style="text-align: justify;">
            &nbsp;</div>
        <div style="text-align: justify;">
            Vậy n&ecirc;n, đừng chần chừ nữa, bạn h&atilde;y chọn đặt h&agrave;ng ngay b&acirc;y giờ để c&oacute; thể sớm nhận về cho m&igrave;nh mẫu sản phẩm m&agrave; bản th&acirc;n y&ecirc;u th&iacute;ch nhất nh&eacute;!</div>
        <div>
            &nbsp;</div>

                                            
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