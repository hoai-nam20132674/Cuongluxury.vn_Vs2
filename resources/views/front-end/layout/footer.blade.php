<section class="footer_one home6 bgc-f7" style="background-color: #d6d6d6; border-radius: 10px;">
    <div class="container">
        
        <div class="row">
            <div class="col-md-4">
                <div class="footer-address-item">
                    <img src="{{asset('uploads/images/systems/'.$system->logo)}}" alt="">
                </div>
                <div class="footer-address-item">
                    <div class="footer-title">{{__('TRỤ SỞ GIAO DỊCH MIỀN BẮC')}}</div>

                    <div class="footer-address">{{__($system->address)}}</div>

                    <div class="footer-phone">
                      <a class="footer-phone-btn" href="tel:">
                        <i class="bx bx-phone-call" style="color:#fff; margin-right: 5px;"></i>
                        <span class="footer-phone-number">{{__($system->phone)}}</span>
                      </a>
                    </div>
                </div>
                
                
            </div>
            <div class="col-md-4">
                <div class="footer-des-info">
                    <div class="footer-des-info__highlight">{{__('Đăng ký nhận thông tin bất động sản')}}</div>
                    <br>
                    <div>
                        <form action="{{URL::route('addContact')}}" method="POST" class="footer_mailchimp_form home6">
                            {{ csrf_field() }}
                            <div class="form-row align-items-center">
                                <div class="col-auto " style="position: relative; width: 80%;">
                                    <input style="width: 100%" type="email" name="email" class="form-control mb-2 box-shadow-hover" id="inlineFormInput" placeholder="{{__('email')}}">
                                    <button title="{{__('gửi yêu cầu')}}" type="submit" class="btn btn-primary mb-2" style="position: absolute; top: 0; right: 0;"><i class='bx bx-paper-plane' style='color:#d40000'></i></button>
                                </div>
                                
                            </div>
                        </form>
                    </div>
                </div>
                
                <div class="footer-address-item">
                    <div class="footer-title">{{__('LIÊN KẾT VỚI CHÚNG TÔI')}}</div>

                    <ul class="mb30 contact_form_social_area">
                        <li class="list-inline-item" ><a target="_blank" href="{{$system->facebook}}">
                            <img src="{{asset('images/icon-fb.png')}}" alt="">
                        </a></li>
                        <li class="list-inline-item"><a target="_blank" href="{{$system->instagram}}">
                            <img src="{{asset('images/icon-insta.png')}}" alt="">
                        </a></li>
                        <li class="list-inline-item"><a target="_blank" href="{{$system->blog_naver}}">
                            <img src="{{asset('images/icon-blog-naver.png')}}" alt="">
                        </a></li>
                        <li class="list-inline-item"><a target="_blank" href="https://zalo.me/{{$system->zalo}}">
                            <img src="{{asset('images/icon-zalo.png')}}" alt="">
                        </a></li>
                        <li class="list-inline-item"><a target="_blank" href="{{$system->youtube}}">
                            <img src="{{asset('images/icon-youtube.png')}}" alt="">
                        </a></li>
                    </ul>
                    
                </div>
            </div>
            <div class="col-md-4">
                
                <div class="footer-des-info">
                    <div class="footer-des-info__highlight">{{__($system->name)}}</div>
                    <div>
                      <span class="mz-mr-16">{{__('mã số thuế')}}: {{__($system->mst)}}</span>
                      <br>
                      <span class="mz-mr-16">{{__('ngày cấp')}}: 16/10/2019</span>
                      <br>
                      <span>{{__('nơi cấp')}}: {{__('Sở KH&ĐT Tp. HN')}}</span>
                    </div>
                    <div>{{__('địa chỉ')}}: {{__($system->address)}}</div>
                    <div>{{__('email')}}: <a href="mailto:support@gmail.com">{{$system->email}}</a></div>
                </div>
                
                
            </div>
            
        </div>
    </div>
</section>


<div class="simple-contact-desktop" style="display: block;">
   <div id="aml_dk_wrap" class="aml_dk-wrap aml_dk-desktop aml_dk-style-gradient-default aml_dk-style-default aml_dk-bottom-right aml_dk-md aml_dk-channel-4" >
      <a target="_blank" href="#" class="aml-powered-by aml-pb-style-gradient-default aml_dk-style-default" style="color: #555; " >Developed by <span class="aml-powered-by-b">Nam Nguyễn</span></a>
      <div class="aml_dk-flex-container aml-flc-style-gradient-default aml_dk-style-default" style=" background-image: unset;">
                      <div class="aml_dk-flex-item aml-tooltip">
            <a href="https://m.me/kkumhouse" target="_blank"><div class="aml_dk-channel-facebook"></div></a>
            <span class="aml-text-content aml-tooltiptext">Facebook Messenger</span>
         </div>
                            <div class="aml_dk-flex-item aml-tooltip">
            <a href="https://zalo.me/{{$system->zalo}}" target="_blank" ><div class="aml_dk-channel-zalo"></div></a>
            <span class="aml-text-content aml-tooltiptext">Chat với chúng tôi qua Zalo</span>
         </div>
         
                     <div  class="aml_dk-flex-item aml-tooltip">
            <a href="tel:{{$system->phone}}" target="_blank"><div class="aml_dk-channel-click_to_call"></div></a>
            <span class="aml-text-content aml-tooltiptext">Gọi ngay</span>
         </div>    
      </div>
      

   </div>
</div>


<!-- Our Footer Bottom Area -->
<section class="footer_middle_area home6 pt30 pb30">
    <div class="container">
        <div class="row">
            
            <div class="col-lg-12 col-xl-12">
                <div class="copyright-widget home6 text-right">
                    <p style="text-align: center;">© 2021 Bản quyền thuộc sở hữu của Nam Nguyen</p>
                </div>
            </div>
        </div>
    </div>
</section>