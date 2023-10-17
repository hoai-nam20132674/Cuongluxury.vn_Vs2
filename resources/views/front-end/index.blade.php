@extends('front-end.layout.default')

@section('head')
	<title>Cuong Luxury</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="google-site-verification" content="4GneTy3UPEfpKBItZcT4ob0uAKRPvzGRcTm84Qd076M" />
    <meta http-equiv="Content-Language" content="vi" />
    <meta name="copyright" content="Copyright" />
    <meta name="description" content="Cuong Luxury là đơn vị uy tín với hơn 10 năm kinh nghiệm trong lĩnh vực mua bán, trao đổi, ký gửi các thương hiệu đồng hồ hiệu chính hãng hàng đầu tại Việt Nam như Hublot, Rolex, Patek Philippe, Franck Muller, ..." />
    <meta name="keywords" content="Cuong Luxury, đồng hồ cao cấp chính hãng, Hublot, Rolex, Patek Philippe, Franck Muller, Vertu, Richard Mille..." />
    <meta name="geo.placename" content="39 Quang Trung, Hoàn Kiếm" />
    <meta name="DC.title" content="CuongLuxury" />
    <meta property="og:type" name="ogtype" content="Website" />
    <meta property="og:title" name="ogtitle" content="Cuong Luxury" />
    <meta property="og:description" name="ogdescription" content="Cuong Luxury là đơn vị uy tín với hơn 10 năm kinh nghiệm trong lĩnh vực mua bán, trao đổi, ký gửi các thương hiệu đồng hồ hiệu chính hãng hàng đầu tại Việt Nam như Hublot, Rolex, Patek Philippe, Franck Muller, ..." />
    <meta property="og:url" name="ogurl" content="https://cuongluxury.vn/" />
    <meta property="og:image" name="ogimage" content="https://cuongluxury.vn/templates/home/images/banner-zalo-e.png" />
    <meta property="og:image:alt" name="og:image:alt" content="Cuong Luxury" />
    <meta property="og:sitename" content="https://cuongluxury.vn/" />
    <link rel="canonical" href="https://cuongluxury.vn/" />
@endsection


@section('content')
    <!-- Slide đầu trang -->
    @include('front-end.layout.section_slide')
    <!-- End slide đầu trang -->

    <!-- Cam kết -->
    @include('front-end.layout.section_pledge')
    <!-- End cam kết -->

    <!-- Banner quảng cáo đầu trang -->
    @include('front-end.layout.section_adsCates')
    <!-- End banner quảng cáo đầu trang -->

    <section>
       <section class='productscates-st' style='background:transparent' >
          <div class='productscates-headding'><span style='color:#ba8562'>Đồng hồ</span><img src='https://cuongluxury.vn/uploads/products/cates/59-line-11.png' alt='Đồng hồ' /></div>
          <div class='productscates-headding2'><span  style='color:#fff'>Patek Philippe</span></div>
          <div class='container pb-30'>
             <div class='productscates-boxslider owl-carousel'>
               @foreach($patek->products as $item )
                <div class='item'>
                   <div class='prdboxsli-item'>
                      <div class='prdboxsli-thumb'><a href='/{{$item->url}}' title='{{$item->name}}'><img loading='lazy' src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt='{{$item->name}}' /></a></div>
                      <div class='prdboxsli-ccname'>Patek Philippe</div>
                      <div class='prdboxsli-key'>MSP: {{$item->ma}}</div>
                      <div class='prdboxsli-title'><a href='/{{$item->url}}' title='Patek Philippe Complications 5905R-001 Like New 2020'>{{$item->name}}</a></div>
                      <div class='prdboxsli-price'>
                         <div class='item-price'><span class='special-price'><span class='price-container'><span class='price-wrapper'><span class='price'>{!!number_format($item->price)!!}<span class='dvtt'>@if($item->tiente == 0) đ @else $ @endif </span></span></span></span></span></div>
                      </div>
                   </div>
                </div>
               @endforeach
                
             </div>
             <div class='comment_button '><a href='/patek-philippe'>Xem thêm</a></div>
          </div>
       </section>
       <section class='productscates-st' style='background: url(images/bg/17-rolexx.jpg) #000' >
          <div class='productscates-headding2'><span  style='color:#fff'>Rolex</span></div>
          <div class='container pb-30'>
             <div class='productscates-boxslider owl-carousel'>
               @foreach($rolex->products as $item)
                  <div class='item'>
                   <div class='prdboxsli-item'>
                      <div class='prdboxsli-thumb'><a href='/{{$item->url}}' title='{{$item->name}}'><img loading='lazy' src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt='{{$item->name}}' /></a></div>
                      <div class='prdboxsli-ccname'>Rolex</div>
                      <div class='prdboxsli-key'>MSP: {{$item->ma}}</div>
                      <div class='prdboxsli-title'><a href='/{{$item->url}}' title='Patek Philippe Complications 5905R-001 Like New 2020'>{{$item->name}}</a></div>
                      <div class='prdboxsli-price'>
                         <div class='item-price'><span class='special-price'><span class='price-container'><span class='price-wrapper'><span class='price'>{!!number_format($item->price)!!}<span class='dvtt'>@if($item->tiente == 0) đ @else $ @endif </span></span></span></span></span></div>
                      </div>
                   </div>
                </div>
               @endforeach
                
             </div>
             <div class='comment_button '><a href='/rolex'>Xem thêm</a></div>
          </div>
       </section>
       <section class='productscates-st' style='background: url(/images/bg/hubot.jpg) #000' >
          <div class='productscates-headding2'><span  style='color:#fff'>Hublot</span></div>
          <div class='container pb-30'>
             <div class='productscates-boxslider owl-carousel'>
               @foreach($hublot->products as $item)
                  <div class='item'>
                   <div class='prdboxsli-item'>
                      <div class='prdboxsli-thumb'><a href='/{{$item->url}}' title='{{$item->name}}'><img loading='lazy' src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt='{{$item->name}}' /></a></div>
                      <div class='prdboxsli-ccname'>Hublot</div>
                      <div class='prdboxsli-key'>MSP: {{$item->ma}}</div>
                      <div class='prdboxsli-title'><a href='/{{$item->url}}' title='Patek Philippe Complications 5905R-001 Like New 2020'>{{$item->name}}</a></div>
                      <div class='prdboxsli-price'>
                         <div class='item-price'><span class='special-price'><span class='price-container'><span class='price-wrapper'><span class='price'>{!!number_format($item->price)!!}<span class='dvtt'>@if($item->tiente == 0) đ @else $ @endif </span></span></span></span></span></div>
                      </div>
                   </div>
                </div>
               @endforeach
                
             </div>
             <div class='comment_button '><a href='/hublot'>Xem thêm</a></div>
          </div>
       </section>
       <section class='productscates-st' style='background: url(/images/bg/franck.jpg) #000' >
          <div class='productscates-headding2'><span  style='color:#fff'>Franck Muller</span></div>
          <div class='container pb-30'>
             <div class='productscates-boxslider owl-carousel'>
               @foreach($fm->products as $item)
                  <div class='item'>
                   <div class='prdboxsli-item'>
                      <div class='prdboxsli-thumb'><a href='/{{$item->url}}' title='{{$item->name}}'><img loading='lazy' src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt='{{$item->name}}' /></a></div>
                      <div class='prdboxsli-ccname'>Franck Muller</div>
                      <div class='prdboxsli-key'>MSP: {{$item->ma}}</div>
                      <div class='prdboxsli-title'><a href='/{{$item->url}}' title='Patek Philippe Complications 5905R-001 Like New 2020'>{{$item->name}}</a></div>
                      <div class='prdboxsli-price'>
                         <div class='item-price'><span class='special-price'><span class='price-container'><span class='price-wrapper'><span class='price'>{!!number_format($item->price)!!}<span class='dvtt'>@if($item->tiente == 0) đ @else $ @endif </span></span></span></span></span></div>
                      </div>
                   </div>
                </div>
               @endforeach
                
             </div>
             <div class='comment_button '><a href='/franck-muller'>Xem thêm</a></div>
          </div>
       </section>
    </section>
    <section class='productscates-st' style='background: url(/images/bg/vertu.jpg) #000'>
       <div class='productscates-headding'><span style='color:#ba8562'>Vertu</span><img src='https://cuongluxury.vn/uploads/products/cates/line-11.png' alt='Vertu' /></div>
       <div class='container pb-30'>
          <div class='productscates-boxslider owl-carousel'>
            @foreach($vertu->products as $item)
               <div class='item'>
                <div class='prdboxsli-item'>
                   <div class='prdboxsli-thumb'><a href='/{{$item->url}}' title='{{$item->name}}'><img loading='lazy' src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt='{{$item->name}}' /></a></div>
                   <div class='prdboxsli-ccname'>Vertu</div>
                   <div class='prdboxsli-key'>MSP: {{$item->ma}}</div>
                   <div class='prdboxsli-title'><a href='/{{$item->url}}' title='Patek Philippe Complications 5905R-001 Like New 2020'>{{$item->name}}</a></div>
                   <div class='prdboxsli-price'>
                      <div class='item-price'><span class='special-price'><span class='price-container'><span class='price-wrapper'><span class='price'>{!!number_format($item->price)!!}<span class='dvtt'>@if($item->tiente == 0) đ @else $ @endif </span></span></span></span></span></div>
                   </div>
                </div>
             </div>
            @endforeach
             
          </div>
          <div class='comment_button '><a href='/vertu'>Xem thêm</a></div>
       </div>
    </section>
    <section class='banner-st'>
       <div class='container'>
          <div class='row'>
             <div class='banner-boxsh'>
                <div class='col-lg-6 col-md-6 col-sm-6 col-xs-12'>
                   <div class='banner-boxh'><a href='' title='Banner 1'><img src='https://cuongluxury.vn/uploads/qc/baner-12233333333333.jpg?width=600&mode=crop' alt='Banner 1' /></a></div>
                </div>
                <div class='col-lg-6 col-md-6 col-sm-6 col-xs-12'>
                   <div class='banner-boxh'><a href='https://cuongluxury.vn/cuong-luxury-diem-den-ly-tuong-de-trai-nghiem-va-mua-sam-dong-ho-cao-cap' title='Banner 2'><img src='https://cuongluxury.vn/uploads/qc/baner-23-nen.jpg?width=600&mode=crop' alt='Banner 2' /></a></div>
                </div>
             </div>
          </div>
       </div>
    </section>
    <section class='productscates-st' style='background: url(/images/bg/trang-sucs-2.jpg) #000'>
       <div class='productscates-headding'><span style='color:#ba8562'>Trang sức</span><img src='https://cuongluxury.vn/uploads/products/cates/26-line-11.png' alt='Trang sức' /></div>
       <div class='container pb-30'>
          <div class='productscates-boxslider owl-carousel'>
            @foreach($trangsuc->products as $item)
               <div class='item'>
                <div class='prdboxsli-item'>
                   <div class='prdboxsli-thumb'><a href='/{{$item->url}}' title='{{$item->name}}'><img loading='lazy' src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt='{{$item->name}}' /></a></div>
                   <div class='prdboxsli-ccname'>Trang sức</div>
                   <div class='prdboxsli-key'>MSP: {{$item->ma}}</div>
                   <div class='prdboxsli-title'><a href='/{{$item->url}}' title='Patek Philippe Complications 5905R-001 Like New 2020'>{{$item->name}}</a></div>
                   <div class='prdboxsli-price'>
                      <div class='item-price'><span class='special-price'><span class='price-container'><span class='price-wrapper'><span class='price'>{!!number_format($item->price)!!}<span class='dvtt'>@if($item->tiente == 0) đ @else $ @endif </span></span></span></span></span></div>
                   </div>
                </div>
             </div>
            @endforeach
             
          </div>
          <div class='comment_button '><a href='/trang-suc'>Xem thêm</a></div>
       </div>
    </section>



    <section class="awe-section-5">
        <div class="section_tour-holiday">
            <div class="container">
                <div class="row">
                    <div class="section_tour-new_title">
                        <h2>Cảm nhận khách hàng</h2>
                    </div>
                </div>
                <div class="ykkh owl-carousel ">
                    <div class='item'><div class='ykkh-item'><div class='ykkh-img'><a href='/btv-hai-van-tu-tin-khoe-dang-cung-sieu-pham-patek-philippe-complications-4947r-001-tai-cuong-luxury' title='BTV HẢI VÂN TỰ TIN KHOE DÁNG CÙNG SIÊU PHẨM PATEK PHILIPPE COMPLICATIONS 4947R-001 TẠI CUONG LUXURY'><img alt='BTV HẢI VÂN TỰ TIN KHOE DÁNG CÙNG SIÊU PHẨM PATEK PHILIPPE COMPLICATIONS 4947R-001 TẠI CUONG LUXURY' src='https://cuongluxury.vn/uploads/news/btv-hai-van-tu-tin-khoe-dang.jpg?width=150&height=110&mode=crop'></a></div><div class='ykkh-content'><div class='ykkh-title'><a href='/btv-hai-van-tu-tin-khoe-dang-cung-sieu-pham-patek-philippe-complications-4947r-001-tai-cuong-luxury' title='BTV HẢI VÂN TỰ TIN KHOE DÁNG CÙNG SIÊU PHẨM PATEK PHILIPPE COMPLICATIONS 4947R-001 TẠI CUONG LUXURY'> BTV HẢI VÂN TỰ TIN KHOE DÁNG CÙNG SIÊU PHẨM PATEK PHILIPPE COMPLICATIONS...</a></div><div class='ykkh-desc'> Trong lần mua sắm này, BTV Hải Vân quyết định bổ sung vào bộ sưu tập của mình chiếc đồng hồ...</div><div class='ykkh-readmore hidden'><a href='/chuyen-muc-tin-tuc' title='Xem thêm'>Xem thêm</a></div></div></div><div class='ykkh-item'><div class='ykkh-img'><a href='/ca-si-dinh-kien-phong-ruoc-franck-muller-yachting-rose-gold-diamonds-ve-dinh' title='CA SĨ ĐINH KIẾN PHONG “RƯỚC” FRANCK MULLER YACHTING ROSE GOLD DIAMONDS “VỀ DINH”'><img alt='CA SĨ ĐINH KIẾN PHONG “RƯỚC” FRANCK MULLER YACHTING ROSE GOLD DIAMONDS “VỀ DINH”' src='https://cuongluxury.vn/uploads/news/ca-sy-dinh-kien-phong-ruoc-franck-muller-yachting-rose-gold-diamonds-ve-dinh-02.png?width=150&height=110&mode=crop'></a></div><div class='ykkh-content'><div class='ykkh-title'><a href='/ca-si-dinh-kien-phong-ruoc-franck-muller-yachting-rose-gold-diamonds-ve-dinh' title='CA SĨ ĐINH KIẾN PHONG “RƯỚC” FRANCK MULLER YACHTING ROSE GOLD DIAMONDS “VỀ DINH”'>CA SĨ ĐINH KIẾN PHONG “RƯỚC” FRANCK MULLER YACHTING ROSE GOLD DIAMONDS “VỀ DINH”</a></div><div class='ykkh-desc'> Vừa qua, tại Showroom Cuong Luxury, nam ca sĩ Đinh Kiến Phong đã chính thức sở hữu Franck...</div><div class='ykkh-readmore hidden'><a href='/cam-nhan-khach-hang' title='Xem thêm'>Xem thêm</a></div></div></div></div><div class='item'><div class='ykkh-item'><div class='ykkh-img'><a href='/cuong-luxury-don-khach-quy-tu-sai-gon-de-so-huu-duoc-sieu-pham-dang-cap-toi-khong-quan-duong-xa' title='CUONG LUXURY ĐÓN KHÁCH QUÝ TỪ SÀI GÒN - “ĐỂ SỞ HỮU ĐƯỢC SIÊU PHẨM ĐẲNG CẤP, TÔI KHÔNG QUẢN ĐƯỜNG XA”'><img alt='CUONG LUXURY ĐÓN KHÁCH QUÝ TỪ SÀI GÒN - “ĐỂ SỞ HỮU ĐƯỢC SIÊU PHẨM ĐẲNG CẤP, TÔI KHÔNG QUẢN ĐƯỜNG XA”' src='https://cuongluxury.vn/uploads/news/cuong-luxury-don-khach-quy-tu-sai-gon-3.jpg?width=150&height=110&mode=crop'></a></div><div class='ykkh-content'><div class='ykkh-title'><a href='/cuong-luxury-don-khach-quy-tu-sai-gon-de-so-huu-duoc-sieu-pham-dang-cap-toi-khong-quan-duong-xa' title='CUONG LUXURY ĐÓN KHÁCH QUÝ TỪ SÀI GÒN - “ĐỂ SỞ HỮU ĐƯỢC SIÊU PHẨM ĐẲNG CẤP, TÔI KHÔNG QUẢN ĐƯỜNG XA”'> CUONG LUXURY ĐÓN KHÁCH QUÝ TỪ SÀI GÒN - “ĐỂ SỞ HỮU ĐƯỢC SIÊU PHẨM ĐẲNG CẤP, TÔI...</a></div><div class='ykkh-desc'> “Tôi tình cờ biết đến Cuong Luxury qua một người bạn là “fan cứng” của Cuong Luxury bao năm...</div><div class='ykkh-readmore hidden'><a href='/cam-nhan-khach-hang' title='Xem thêm'>Xem thêm</a></div></div></div><div class='ykkh-item'><div class='ykkh-img'><a href='/chia-se-hanh-trinh-12-nam-dong-hanh-cung-cuong-luxury-cua-ms-hang' title='CHIA SẺ HÀNH TRÌNH 12 NĂM ĐỒNG HÀNH CÙNG CUONG LUXURY CỦA MS HẰNG'><img alt='CHIA SẺ HÀNH TRÌNH 12 NĂM ĐỒNG HÀNH CÙNG CUONG LUXURY CỦA MS HẰNG' src='https://cuongluxury.vn/uploads/news/chia-se-hanh-trinh-12-nam-dong-hanh-cung-cuong-luxury-cua-ms-hang-1.jpg?width=150&height=110&mode=crop'></a></div><div class='ykkh-content'><div class='ykkh-title'><a href='/chia-se-hanh-trinh-12-nam-dong-hanh-cung-cuong-luxury-cua-ms-hang' title='CHIA SẺ HÀNH TRÌNH 12 NĂM ĐỒNG HÀNH CÙNG CUONG LUXURY CỦA MS HẰNG'>CHIA SẺ HÀNH TRÌNH 12 NĂM ĐỒNG HÀNH CÙNG CUONG LUXURY CỦA MS HẰNG</a></div><div class='ykkh-desc'> 2020 khép lại trong không khí vô cùng ấm áp của mùa xuân đương tới. Cuong Luxury có dịp nhìn...</div><div class='ykkh-readmore hidden'><a href='/cam-nhan-khach-hang' title='Xem thêm'>Xem thêm</a></div></div></div></div><div class='item'><div class='ykkh-item'><div class='ykkh-img'><a href='/cuong-luxury-tu-hao-la-dia-chi-vang-giup-nguoi-phu-nu-hien-dai-khang-dinh-ca-tinh' title='CUONG LUXURY TỰ HÀO LÀ "ĐỊA CHỈ VÀNG" GIÚP NGƯỜI PHỤ NỮ HIỆN ĐẠI KHẢNG ĐỊNH CÁ TÍNH'><img alt='CUONG LUXURY TỰ HÀO LÀ "ĐỊA CHỈ VÀNG" GIÚP NGƯỜI PHỤ NỮ HIỆN ĐẠI KHẢNG ĐỊNH CÁ TÍNH' src='https://cuongluxury.vn/uploads/news/cuong-luxury-tu-hao-la-dia-chi-vang-giup-phu-nu-hien-dai-khang-dinh-ca-tinh-02.png?width=150&height=110&mode=crop'></a></div><div class='ykkh-content'><div class='ykkh-title'><a href='/cuong-luxury-tu-hao-la-dia-chi-vang-giup-nguoi-phu-nu-hien-dai-khang-dinh-ca-tinh' title='CUONG LUXURY TỰ HÀO LÀ "ĐỊA CHỈ VÀNG" GIÚP NGƯỜI PHỤ NỮ HIỆN ĐẠI KHẢNG ĐỊNH CÁ TÍNH'>CUONG LUXURY TỰ HÀO LÀ "ĐỊA CHỈ VÀNG" GIÚP NGƯỜI PHỤ NỮ HIỆN ĐẠI KHẢNG ĐỊNH CÁ TÍNH</a></div><div class='ykkh-desc'> Là một cô gái xinh đẹp, luôn rạng ngời bởi nụ cười vô cùng duyên dáng, Ms Hường là một trong...</div><div class='ykkh-readmore hidden'><a href='/cam-nhan-khach-hang' title='Xem thêm'>Xem thêm</a></div></div></div></div>
                </div>
                <div class="comment_button "><a href="/cam-nhan-khach-hang">Comments</a></div>
            </div>
        </div>
    </section>


    <section class="new-home-section ">
        <div class="new-title">
            <div class="title-home">
                <span>Tin tức</span>
                <img src="https://cuongluxury.vn/templates/home/images/line-3.png" alt="Tin tức" />
            </div>
        </div>
        <div class="new-block container">
            <div class="row">
                <div class='col-lg-6 col-xs-12'>
                    <div class='new-one'><div class='new-one-img'><a href='/nhung-dieu-co-ban-ban-can-biet-ve-muc-do-sai-so-cua-dong-ho-co' title='Những điều cơ bản bạn cần biết về mức độ sai số của đồng hồ cơ'><img class='img-project' src='https://cuongluxury.vn/uploads/news/nhung-dieu-co-ban-ban-can-biet-ve-muc-do-sai-so-cua-dong-ho-co-1.jpg?width=100&height=100&mode=crop' alt='Những điều cơ bản bạn cần biết về mức độ sai số của đồng hồ cơ'></a></div><div class='new-one-contents'><div class='new-one-title'><a href='/nhung-dieu-co-ban-ban-can-biet-ve-muc-do-sai-so-cua-dong-ho-co' title='Những điều cơ bản bạn cần biết về mức độ sai số của đồng hồ cơ'>Những điều cơ bản bạn cần biết về mức độ sai số của đồng hồ cơ</a></div><div class='new-one-desc'> Nói đến những bộ máy chuyển động của đồng hồ cơ, chúng ta có thể nhanh chóng mường tượng ra một hệ thống cấu trúc phức tạp bao gồm nhiều chi tiết bánh răng...</div></div></div><div class='new-one'><div class='new-one-img'><a href='/hop-xoay-dong-ho-la-gi-tai-sao-ban-nen-su-dung-no-va-su-dung-hop-xoay-dong-ho-sao-moi-dung' title='Hộp xoay đồng hồ là gì, tại sao bạn nên sử dụng nó? Và sử dụng Hộp xoay đồng hồ sao mới đúng?'><img class='img-project' src='https://cuongluxury.vn/uploads/news/hop-xoay-dong-ho-la-gi-va-tai-sao-ban-nen-su-dung-no-3.jpg?width=100&height=100&mode=crop' alt='Hộp xoay đồng hồ là gì, tại sao bạn nên sử dụng nó? Và sử dụng Hộp xoay đồng hồ sao mới đúng?'></a></div><div class='new-one-contents'><div class='new-one-title'><a href='/hop-xoay-dong-ho-la-gi-tai-sao-ban-nen-su-dung-no-va-su-dung-hop-xoay-dong-ho-sao-moi-dung' title='Hộp xoay đồng hồ là gì, tại sao bạn nên sử dụng nó? Và sử dụng Hộp xoay đồng hồ sao mới đúng?'> Hộp xoay đồng hồ là gì, tại sao bạn nên sử dụng nó? Và sử dụng Hộp xoay đồng hồ sao...</a></div><div class='new-one-desc'> Đối với những người yêu thích và sử dụng đồng hồ cơ cao cấp, việc sở hữu một chiếc Hộp xoay dành cho đồng hồ là việc vô cùng hữu ích. Tuy nhiên, không phải...</div></div></div>
                </div>
                <div class='col-lg-6 col-xs-12'>
                    <div class='new-one'><div class='new-one-img'><a href='/huong-dan-su-dung-va-bao-quan-dong-ho-co-cao-cap' title='Hướng dẫn sử dụng và bảo quản đồng hồ cơ cao cấp'><img class='img-project' src='https://cuongluxury.vn/uploads/news/5-huong-dan-bao-quan-va-su-dung-dong-ho-co-cao-cap-5.jpg?width=100&height=100&mode=crop' alt='Hướng dẫn sử dụng và bảo quản đồng hồ cơ cao cấp'></a></div><div class='new-one-contents'><div class='new-one-title'><a href='/huong-dan-su-dung-va-bao-quan-dong-ho-co-cao-cap' title='Hướng dẫn sử dụng và bảo quản đồng hồ cơ cao cấp'>Hướng dẫn sử dụng và bảo quản đồng hồ cơ cao cấp</a></div><div class='new-one-desc'> Để sở hữu được một chiếc đồng hồ cơ cao cấp không phải là điều dễ dàng bởi chúng thường có mức giá rất cao trên thị trường. Tuy nhiên, khi đã có chúng trong...</div></div></div><div class='new-one'><div class='new-one-img'><a href='/kham-pha-y-nghia-cua-cac-ky-hieu-viet-tat-tren-ma-tham-chieu-cua-dong-ho-rolex' title='Khám phá ý nghĩa của các ký hiệu viết tắt trên mã tham chiếu của đồng hồ Rolex'><img class='img-project' src='https://cuongluxury.vn/uploads/news/cach-doc-ma-tham-chieu-tren-dong-ho-rolex-3.jpg?width=100&height=100&mode=crop' alt='Khám phá ý nghĩa của các ký hiệu viết tắt trên mã tham chiếu của đồng hồ Rolex'></a></div><div class='new-one-contents'><div class='new-one-title'><a href='/kham-pha-y-nghia-cua-cac-ky-hieu-viet-tat-tren-ma-tham-chieu-cua-dong-ho-rolex' title='Khám phá ý nghĩa của các ký hiệu viết tắt trên mã tham chiếu của đồng hồ Rolex'>Khám phá ý nghĩa của các ký hiệu viết tắt trên mã tham chiếu của đồng hồ Rolex</a></div><div class='new-one-desc'> Nếu bạn là một người yêu thích đồng hồ, đặc biệt là những dòng sản phẩm mang thương hiệu Rolex, hẳn bạn sẽ hoang mang rất nhiều khi bắt đầu tìm hiểu về...</div></div></div>
                </div>
           <div class='col-xs-12'><div class="comment_button "><a href="/tin-tuc">Comments</a></div>
              </div></div>
        </div>
    </section>


    <section class="video-st ">
        <div class="video-title">
            <span>Video Review</span>
            <img src="https://cuongluxury.vn/templates/home/images/line-4.png" alt="Video Review" />
        </div>
        <div class="video-block container">
            <div class="video-home-box owl-carousel">
                
                        <div class="item">
                            <div class="video-items">
                                <div class="video-thumb">
                                    <a href="https://www.youtube.com/watch?v=SCghdXh2A2Y" data-fancybox="" data-width="640" data-height="360" title="Siêu phẩm Patek Philippe Complications mang nét đẹp cổ điển vượt thời gian">
                                        <img src="https://cuongluxury.vn/uploads/videos/714ecdf90f45fb1ba254.jpg?width=600&height=400&mode=crop" alt="Siêu phẩm Patek Philippe Complications mang nét đẹp cổ điển vượt thời gian" />
                                    </a>
                                    <a href="https://www.youtube.com/watch?v=SCghdXh2A2Y" data-fancybox="" data-width="640" data-height="360" title="" class="i-play"></a>
                                </div>
                                <div class="video-desc">
                                     Patek Philippe Complications 5396R-001 là một mẫu đồng hồ ấn tượng không chỉ bởi thiết kế có phần tối giản, tinh tế, chứa trọn phong cách của một siêu phẩm Dresswatch cổ điển,...
                                </div>
                            </div>
                        </div>
                    
                        <div class="item">
                            <div class="video-items">
                                <div class="video-thumb">
                                    <a href="https://youtu.be/fl4Pvec2cOc" data-fancybox="" data-width="640" data-height="360" title="Review Patek Philippe Complications 5930G-010 | Tuyệt tác hiếm có của ngành chế tác đồng hồ">
                                        <img src="https://cuongluxury.vn/uploads/videos/patexxt-recovered.jpg?width=600&height=400&mode=crop" alt="Review Patek Philippe Complications 5930G-010 | Tuyệt tác hiếm có của ngành chế tác đồng hồ" />
                                    </a>
                                    <a href="https://youtu.be/fl4Pvec2cOc" data-fancybox="" data-width="640" data-height="360" title="" class="i-play"></a>
                                </div>
                                <div class="video-desc">
                                     💼 𝐏𝐚𝐭𝐞𝐤 𝐏𝐡𝐢𝐥𝐢𝐩𝐩𝐞 𝐂𝐨𝐦𝐩𝐥𝐢𝐜𝐚𝐭𝐢𝐨𝐧𝐬 𝐖𝐨𝐫𝐥𝐝 𝐓𝐢𝐦𝐞 𝐅𝐥𝐲𝐛𝐚𝐜𝐤 𝐂𝐡𝐫𝐨𝐧𝐨𝐠𝐫𝐚𝐩𝐡 𝟓𝟗𝟑𝟎𝐆-𝟎𝟏𝟎 - Tuyệt tác hiếm có của ngành chế tác đồng...
                                </div>
                            </div>
                        </div>
                    
                        <div class="item">
                            <div class="video-items">
                                <div class="video-thumb">
                                    <a href="https://youtu.be/S4mWSSAmPug" data-fancybox="" data-width="640" data-height="360" title="Review Patek Philippe Aquanaut 5968G | Tuyệt tác đồng hồ thể thao thanh lịch thế hệ mới">
                                        <img src="https://cuongluxury.vn/uploads/videos/untitled-2.jpg?width=600&height=400&mode=crop" alt="Review Patek Philippe Aquanaut 5968G | Tuyệt tác đồng hồ thể thao thanh lịch thế hệ mới" />
                                    </a>
                                    <a href="https://youtu.be/S4mWSSAmPug" data-fancybox="" data-width="640" data-height="360" title="" class="i-play"></a>
                                </div>
                                <div class="video-desc">
                                     💼 𝐏𝐚𝐭𝐞𝐤 𝐏𝐡𝐢𝐥𝐢𝐩𝐩𝐞 𝐀𝐪𝐮𝐚𝐧𝐚𝐮𝐭 𝟓𝟗𝟔𝟖𝐆 𝐅𝐥𝐲𝐁𝐚𝐜𝐤 𝐂𝐡𝐫𝐨𝐧𝐨𝐠𝐫𝐚𝐩𝐡 💼

    Là một trong những mẫu đồng hồ sáng giá nhất thuộc bộ sưu tập Aquanaut -...
                                </div>
                            </div>
                        </div>
                    
                        <div class="item">
                            <div class="video-items">
                                <div class="video-thumb">
                                    <a href="https://youtu.be/Ur5ck82Z4Mg" data-fancybox="" data-width="640" data-height="360" title="Khám phá "Nữ hoàng của đêm tiệc" - Franck Muller Double Mystery Blue">
                                        <img src="https://cuongluxury.vn/uploads/videos/untitled-1.jpg?width=600&height=400&mode=crop" alt="Khám phá "Nữ hoàng của đêm tiệc" - Franck Muller Double Mystery Blue" />
                                    </a>
                                    <a href="https://youtu.be/Ur5ck82Z4Mg" data-fancybox="" data-width="640" data-height="360" title="" class="i-play"></a>
                                </div>
                                <div class="video-desc">
                                     Sở hữu bộ vỏ có kích thước rất lớn - lên đến 42mm - Franck Muller Double Mystery Blue dễ dàng khiến mọi người choáng ngợp nhờ hơn 500 viên kim cương thiên nhiên với đủ kích...
                                </div>
                            </div>
                        </div>
                    
                        <div class="item">
                            <div class="video-items">
                                <div class="video-thumb">
                                    <a href="https://youtu.be/7KNiXfSHl_I" data-fancybox="" data-width="640" data-height="360" title="Review Mặt số thiên thạch siêu hiếm trên Rolex Day-Date Everose Gold Meteorite Diamond Dial">
                                        <img src="https://cuongluxury.vn/uploads/videos/z3598918261563aab0d55e1d991e7c121335e4d9729ed4.jpg?width=600&height=400&mode=crop" alt="Review Mặt số thiên thạch siêu hiếm trên Rolex Day-Date Everose Gold Meteorite Diamond Dial" />
                                    </a>
                                    <a href="https://youtu.be/7KNiXfSHl_I" data-fancybox="" data-width="640" data-height="360" title="" class="i-play"></a>
                                </div>
                                <div class="video-desc">
                                     Rolex Day-Date Everose Gold Meteorite Diamond Dial

    Nổi bật với vẻ ngoài được hoàn thiện từ Vàng hồng Everose Gold sang trọng và rực rỡ, Day-Date Everose Gold Meteorite...
                                </div>
                            </div>
                        </div>
                    
                        <div class="item">
                            <div class="video-items">
                                <div class="video-thumb">
                                    <a href="https://youtu.be/GKOtmfUhmhM" data-fancybox="" data-width="640" data-height="360" title="Patek Philippe Complications 5205R-011 Annual Calendar Moonphase">
                                        <img src="https://cuongluxury.vn/uploads/videos/thumbnail-pateck.jpg?width=600&height=400&mode=crop" alt="Patek Philippe Complications 5205R-011 Annual Calendar Moonphase" />
                                    </a>
                                    <a href="https://youtu.be/GKOtmfUhmhM" data-fancybox="" data-width="640" data-height="360" title="" class="i-play"></a>
                                </div>
                                <div class="video-desc">
                                     Bắt nhịp xu hướng thời trang màu xanh lá đang rất hot trên thị trường đồng hồ xa xỉ, ngay trong những tháng đầu năm 2022, Patek Philippe đã làm mới bộ sưu tập Annual Calendar...
                                </div>
                            </div>
                        </div>
                    
                        <div class="item">
                            <div class="video-items">
                                <div class="video-thumb">
                                    <a href="https://www.youtube.com/watch?v=73WKjRJ0r5c" data-fancybox="" data-width="640" data-height="360" title="Hublot Big Bang One Click King Gold Diamond - Sang trọng, Thể thao và Cá tính">
                                        <img src="https://cuongluxury.vn/uploads/videos/18-f39fb12a739687c8de87.jpg?width=600&height=400&mode=crop" alt="Hublot Big Bang One Click King Gold Diamond - Sang trọng, Thể thao và Cá tính" />
                                    </a>
                                    <a href="https://www.youtube.com/watch?v=73WKjRJ0r5c" data-fancybox="" data-width="640" data-height="360" title="" class="i-play"></a>
                                </div>
                                <div class="video-desc">
                                     Là dòng sản phẩm đặc trưng của Hublot, sở hữu tính năng One Click tiện dụng, Hublot Big Bang One Click King Gold Diamond nổi bật với bộ vỏ sandwich 5 tầng, được làm hoàn toàn...
                                </div>
                            </div>
                        </div>
                    
                        <div class="item">
                            <div class="video-items">
                                <div class="video-thumb">
                                    <a href="https://www.youtube.com/watch?v=9TpYlKuKKBw" data-fancybox="" data-width="640" data-height="360" title="Hublot Big Bang Chronograph Steel Diamonds - Bước đột phá trong thế giới đồng hồ thể thao thanh lịch">
                                        <img src="https://cuongluxury.vn/uploads/videos/9bb27e3fbc8348dd1192.jpg?width=600&height=400&mode=crop" alt="Hublot Big Bang Chronograph Steel Diamonds - Bước đột phá trong thế giới đồng hồ thể thao thanh lịch" />
                                    </a>
                                    <a href="https://www.youtube.com/watch?v=9TpYlKuKKBw" data-fancybox="" data-width="640" data-height="360" title="" class="i-play"></a>
                                </div>
                                <div class="video-desc">
                                     Là một dòng sản phẩm phong cách thể thao thanh lịch, Hublot Big Bang Chronograph Steel Diamonds không chỉ gây ấn tượng với vẻ ngoài năng động đến từ tính năng Chronograph, mà...
                                </div>
                            </div>
                        </div>
                    
            </div>
            <div class="comment_button "><a href="/videos" title="Tìm hiểu thêm">Tìm hiểu thêm</a></div>
        </div>
    </section>

@endsection

@section('js')
    

@endsection