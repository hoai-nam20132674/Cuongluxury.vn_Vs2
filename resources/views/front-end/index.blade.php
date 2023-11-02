@extends('front-end.layout.default')

@section('head')
	<title>{{$system->title}}</title>

    <meta name="description" content="{{$system->title}}" />

    <meta name="keywords" content="{{$system->seo_keyword}}" />

    <meta name="DC.title" content="{{$system->title}}" />

    <meta property="og:type" name="ogtype" content="Website" />

    <meta property="og:title" name="ogtitle" content="{{$system->title}}" />

    <meta property="og:description" name="ogdescription" content="{{$system->seo_description}}" />

    <meta property="og:url" name="ogurl" content="https://cuongluxury.vn/" />

    <meta property="og:image" name="ogimage" content="{{asset('uploads/images/ogimage/'.$system->ogimage)}}" />

    <meta property="og:image:alt" name="og:image:alt" content="{{$system->title}}" />

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
                      <div class='prdboxsli-title'><a href='/{{$item->url}}' title='{{$item->name}}'>{{$item->name}}</a></div>
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
                  @php
                     $tt = 0;
                     $count = count($cnkhs);
                  @endphp
                  @foreach($cnkhs as $item)
                     @if($count == 1)
                        <div class='item'>
                           <div class='ykkh-item'>
                              <div class='ykkh-img'>
                                 <a href='{{$item->url}}' title='{{$item->title}}'><img alt='{{$item->title}}' src="{{asset('uploads/images/blogs/'.$item->avata)}}"></a>
                              </div>
                              <div class='ykkh-content'>
                                 <div class='ykkh-title'>
                                    <a href='{{$item->url}}' title='{{$item->title}}'>{!! \Illuminate\Support\Str::words($item->title,15,'...')  !!}</a>
                                 </div>
                                 <div class='ykkh-desc'>{!! \Illuminate\Support\Str::words($item->short_description,20,'...')  !!}</div>
                                 <div class='ykkh-readmore hidden'><a href='/chuyen-muc-tin-tuc' title='Xem thêm'>Xem thêm</a></div>
                              </div>
                           </div>
                        </div>
                     @elseif($tt%2 == 0 && $tt+1 != $count)
                        <div class='item'>
                           <div class='ykkh-item'>
                              <div class='ykkh-img'>
                                 <a href='{{$item->url}}' title='{{$item->title}}'><img alt='{{$item->title}}' src="{{asset('uploads/images/blogs/'.$item->avata)}}"></a>
                              </div>
                              <div class='ykkh-content'>
                                 <div class='ykkh-title'>
                                    <a href='{{$item->url}}' title='{{$item->title}}'>{!! \Illuminate\Support\Str::words($item->title,15,'...')  !!}</a>
                                 </div>
                                 <div class='ykkh-desc'>{!! \Illuminate\Support\Str::words($item->short_description,20,'...')  !!}</div>
                                 <div class='ykkh-readmore hidden'><a href='/chuyen-muc-tin-tuc' title='Xem thêm'>Xem thêm</a></div>
                              </div>
                           </div>
                        @php
                           $tt++;
                        @endphp

                     @elseif($tt%2 == 0 && $tt+1 == $count)
                        <div class='item'>
                           <div class='ykkh-item'>
                              <div class='ykkh-img'>
                                 <a href='{{$item->url}}' title='{{$item->title}}'><img alt='{{$item->title}}' src="{{asset('uploads/images/blogs/'.$item->avata)}}"></a>
                              </div>
                              <div class='ykkh-content'>
                                 <div class='ykkh-title'>
                                    <a href='{{$item->url}}' title='{{$item->title}}'>{!! \Illuminate\Support\Str::words($item->title,15,'...')  !!}</a>
                                 </div>
                                 <div class='ykkh-desc'>{!! \Illuminate\Support\Str::words($item->short_description,20,'...')  !!}</div>
                                 <div class='ykkh-readmore hidden'><a href='/chuyen-muc-tin-tuc' title='Xem thêm'>Xem thêm</a></div>
                              </div>
                           </div>
                        </div>
                        @php
                           $tt++;
                        @endphp
                     @elseif($tt%2 != 0 )
                           
                           <div class='ykkh-item'>
                              <div class='ykkh-img'>
                                 <a href='{{$item->url}}' title='{{$item->title}}'><img alt='{{$item->title}}' src="{{asset('uploads/images/blogs/'.$item->avata)}}"></a>
                              </div>
                              <div class='ykkh-content'>
                                 <div class='ykkh-title'>
                                    <a href='{{$item->url}}' title='{{$item->title}}'>{!! \Illuminate\Support\Str::words($item->title,15,'...')  !!}</a>
                                 </div>
                                 <div class='ykkh-desc'>{!! \Illuminate\Support\Str::words($item->short_description,20,'...')  !!}</div>
                                 <div class='ykkh-readmore hidden'><a href='/chuyen-muc-tin-tuc' title='Xem thêm'>Xem thêm</a></div>
                              </div>
                           </div>
                        </div>
                        @php
                           $tt++;
                        @endphp

                     @endif
                     
                    
                  @endforeach
                </div>
               <div class="comment_button "><a href="cam-nhan-khach-hang-bc2">XEM THÊM</a></div>
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
               @php
                  $tt = 0;
                  $count = count($blogs);
               @endphp
               @foreach($blogs as $item)
                  @if($count == 1)
                     <div class='col-lg-6 col-xs-12'>
                        <div class='new-one'>
                           <div class='new-one-img'>
                              <a href='{{$item->url}}' title='{{$item->title}}'>
                                 <img src="{{asset('uploads/images/blogs/'.$item->avata)}}" alt='{{$item->title}}'>
                              </a>
                           </div>
                           <div class='new-one-contents'>
                              <div class='new-one-title'>
                                 <a href='{{$item->url}}' title='{{$item->title}}'>{!! \Illuminate\Support\Str::words($item->title,15,'...')  !!}</a>
                              </div>
                              <div class='new-one-desc'>{!! \Illuminate\Support\Str::words($item->short_description,20,'...')  !!}</div>
                           </div>
                        </div>
                     </div>
                  @elseif($tt%2 == 0 && $tt+1 != $count)
                     <div class='col-lg-6 col-xs-12'>
                        <div class='new-one'>
                           <div class='new-one-img'>
                              <a href='{{$item->url}}' title='{{$item->title}}'>
                                 <img src="{{asset('uploads/images/blogs/'.$item->avata)}}" alt='{{$item->title}}'>
                              </a>
                           </div>
                           <div class='new-one-contents'>
                              <div class='new-one-title'>
                                 <a href='{{$item->url}}' title='{{$item->title}}'>{!! \Illuminate\Support\Str::words($item->title,15,'...')  !!}</a>
                              </div>
                              <div class='new-one-desc'>{!! \Illuminate\Support\Str::words($item->short_description,20,'...')  !!}</div>
                           </div>
                        </div>
                     
                     @php
                        $tt++;
                     @endphp
                  @elseif($tt%2 == 0 && $tt+1 == $count)
                     <div class='col-lg-6 col-xs-12'>
                        <div class='new-one'>
                           <div class='new-one-img'>
                              <a href='{{$item->url}}' title='{{$item->title}}'>
                                 <img src="{{asset('uploads/images/blogs/'.$item->avata)}}" alt='{{$item->title}}'>
                              </a>
                           </div>
                           <div class='new-one-contents'>
                              <div class='new-one-title'>
                                 <a href='{{$item->url}}' title='{{$item->title}}'>{!! \Illuminate\Support\Str::words($item->title,15,'...')  !!}</a>
                              </div>
                              <div class='new-one-desc'>{!! \Illuminate\Support\Str::words($item->short_description,20,'...')  !!}</div>
                           </div>
                        </div>
                     </div>
                     @php
                        $tt++;
                     @endphp
                  @elseif($tt%2 != 0 )
                        
                        <div class='new-one'>
                           <div class='new-one-img'>
                              <a href='{{$item->url}}' title='{{$item->title}}'>
                                 <img src="{{asset('uploads/images/blogs/'.$item->avata)}}" alt='{{$item->title}}'>
                              </a>
                           </div>
                           <div class='new-one-contents'>
                              <div class='new-one-title'>
                                 <a href='{{$item->url}}' title='{{$item->title}}'>{!! \Illuminate\Support\Str::words($item->title,15,'...')  !!}</a>
                              </div>
                              <div class='new-one-desc'>{!! \Illuminate\Support\Str::words($item->short_description,20,'...')  !!}</div>
                           </div>
                        </div>
                     </div>
                     @php
                        $tt++;
                     @endphp
                  @endif
               @endforeach
                

           <div class='col-xs-12'><div class="comment_button "><a href="chuyen-muc-tin-tuc-bc1">XEM THÊM</a></div>
              </div></div>
        </div>
    </section>


    <section class="video-st ">
        <div class="video-title">
            <span>Video Review</span>
            
        </div>
        <div class="video-block container">
            <div class="video-home-box owl-carousel">
               @foreach($videos as $item)
                  <div class="item">
                      <div class="video-items">
                          <div class="video-thumb">
                              <a href="{{$item->href}}" data-fancybox="" data-width="640" data-height="360" title="{{$item->title}}">
                                  <img src="{{asset('uploads/images/videos/'.$item->avata)}}" alt="{{$item->title}}" />
                              </a>
                              <a href="{{$item->href}}" data-fancybox="" data-width="640" data-height="360" title="" class="i-play"></a>
                          </div>
                          <div class="video-desc">
                               {!! \Illuminate\Support\Str::words($item->content,30,'...')  !!}
                          </div>
                      </div>
                  </div>
               @endforeach
                     
                    
            </div>
            <div class="comment_button "><a href="#" title="Tìm hiểu thêm">XEM THÊM</a></div>
        </div>
    </section>

@endsection

@section('js')
    

@endsection