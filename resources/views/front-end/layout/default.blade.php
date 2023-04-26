
<!DOCTYPE html>
<html dir="ltr" lang="en">
<head>
{!!$system->script!!}
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
@yield('head')

<!-- css file -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/toastr.min.css">
<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<!-- Responsive stylesheet -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Favicon -->
<link href="{{asset('uploads/images/systems/'.$system->shortcut_logo)}}" sizes="128x128" rel="shortcut icon" type="image/x-icon" />
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style type="text/css">
    .footer-address-item {
        margin-bottom: 24px;
    }
    .b__footer--info{
        margin-top: 20px;
    }
    .footer-title {
        font-size: 16px;
        line-height: 24px;
        font-weight: 700;
        margin-bottom: 8px;
        color: #000 !important;
    }
    .footer-address {
        font-size: 13px;
        line-height: 19px;
        color: #000;
        margin-bottom: 8px;
    }
    .footer-phone-btn {
        display: inline-flex;
        background: #b80000;
        border-radius: 12px;
        padding: 4px 12px;
        color: #fff;
        font-weight: 700;
        align-items: center;
        transition: .3s;
        font-size: 13px;
        line-height: 19px;
    }
    .footer-des-info {
        font-size: 13px;
        line-height: 19px;
        margin-bottom: 24px;
        color: #000;
    }
    .footer-des-info__highlight {
        font-weight: 700;
        text-transform: uppercase;
    }
    .box-shadow-hover {
        box-shadow: 0px 0px 10px 0px #ff4800;
        transition: 0.3s;
    }

</style>
</head>
<body class="">
{!!$system->script_body!!}
<!-- Load Facebook SDK for JavaScript -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = "https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.0";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<div class="wrapper">
    <div class="preloader"></div>

    <!-- Main Header Nav -->
    @include('front-end.layout.header')
    <!-- Modal -->
    <div class="sign_up_modal modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog " role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body container pb20">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="sign_up_tab nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Đăng Nhập</a>
                                </li>
                                <!-- <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Register</a>
                                </li> -->
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content container" id="myTabContent">
                        <div class="row mt25 tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <!-- <div class="col-lg-6 col-xl-6">
                                <div class="login_thumb">
                                    <img class="img-fluid w100" src="https://creativelayers.net/themes/findhouse-html/images/resource/login.jpg" alt="login.jpg">
                                </div>
                            </div> -->
                            <div class="col-lg-12 col-xl-12">
                                <div class="login_form">
                                    <form action="{{URL::route('postLogin')}}" method="post">
                                        {!! csrf_field() !!}
                                        <div class="input-group mb-2 mr-sm-2">
                                            <input type="text" class="form-control" name="email" id="inlineFormInputGroupUsername2" placeholder="Email ...">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="flaticon-user"></i></div>
                                            </div>
                                        </div>
                                        <div class="input-group form-group">
                                            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Mật khẩu">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="flaticon-password"></i></div>
                                            </div>
                                        </div>
                                        <div class="form-group custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="exampleCheck1">
                                            <label class="custom-control-label" for="exampleCheck1">Lưu tài khoản</label>
                                            <a class="btn-fpswd float-right" href="#">Quên mật khẩu?</a>
                                        </div>
                                        <button type="submit" class="btn btn-log btn-block btn-thm">Đăng Nhập</button>
                                        <!-- <p class="text-center">Don't have an account? <a class="text-thm" href="#">Register</a></p> -->
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="row mt25 tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="col-lg-6 col-xl-6">
                                <div class="regstr_thumb">
                                    <img class="img-fluid w100" src="https://creativelayers.net/themes/findhouse-html/images/resource/regstr.jpg" alt="regstr.jpg">
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-6">
                                <div class="sign_up_form">
                                    <div class="heading">
                                        <h4>Register</h4>
                                    </div>
                                    <form action="#">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <button type="submit" class="btn btn-block btn-fb"><i class="fa fa-facebook float-left mt5"></i> Login with Facebook</button>
                                            </div>
                                            <div class="col-lg-12">
                                                <button type="submit" class="btn btn-block btn-googl"><i class="fa fa-google float-left mt5"></i> Login with Google</button>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="form-group input-group">
                                            <input type="text" class="form-control" id="exampleInputName" placeholder="User Name">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="flaticon-user"></i></div>
                                            </div>
                                        </div>
                                        <div class="form-group input-group">
                                            <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="fa fa-envelope-o"></i></div>
                                            </div>
                                        </div>
                                        <div class="form-group input-group">
                                            <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="flaticon-password"></i></div>
                                            </div>
                                        </div>
                                        <div class="form-group input-group">
                                            <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Re-enter password">
                                            <div class="input-group-prepend">
                                                <div class="input-group-text"><i class="flaticon-password"></i></div>
                                            </div>
                                        </div>
                                        <div class="form-group ui_kit_select_search mb0">
                                            <select class="selectpicker" data-live-search="true" data-width="100%">
                                                <option data-tokens="SelectRole">Single User</option>
                                                <option data-tokens="Agent/Agency">Agent</option>
                                                <option data-tokens="SingleUser">Multi User</option>
                                            </select>
                                        </div>
                                        <div class="form-group custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="exampleCheck2">
                                            <label class="custom-control-label" for="exampleCheck2">I have read and accept the Terms and Privacy Policy?</label>
                                        </div>
                                        <button type="submit" class="btn btn-log btn-block btn-thm">Sign Up</button>
                                        <p class="text-center">Already have an account? <a class="text-thm" href="#">Log In</a></p>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="sign_up_modal modal fade bd-example-modal-contact" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog " role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><i class='bx bx-x' style='color:#ffffff'  ></i></button>
                </div>
                <div class="modal-body container pb20">
                    <div class="row">
                        <div class="col-lg-12">
                            <ul class="sign_up_tab nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Thông Tin Liên Hệ Tư Vấn</a>
                                </li>
                                <!-- <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Register</a>
                                </li> -->
                            </ul>
                        </div>
                    </div>
                    <div class="tab-content container" id="myTabContent">
                        <div class="row mt25 tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <!-- <div class="col-lg-6 col-xl-6">
                                <div class="login_thumb">
                                    <img class="img-fluid w100" src="https://creativelayers.net/themes/findhouse-html/images/resource/login.jpg" alt="login.jpg">
                                </div>
                            </div> -->
                            <div class="col-lg-12 col-xl-12">
                                <div class="login_form">
                                    <form class="contact_form" id="contact_form" name="contact_form" action="{{URL::route('addContact')}}" method="post" novalidate="novalidate">
                                        {{ csrf_field() }}
                                        <div class="sidebar_listing_list">
                                            <div class="sidebar_advanced_search_widget">
                                                
                                                <ul class="sasw_list mb0">
                                                    <li class="search_area">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" required id="exampleInputName1" name="name" placeholder="{{__('họ tên')}}">
                                                        </div>
                                                    </li>
                                                    <li class="search_area">
                                                        <div class="form-group">
                                                            <input type="number" class="form-control" required id="exampleInputName2" name="phone" placeholder="{{__('điện thoại')}}">
                                                        </div>
                                                    </li>
                                                    <li class="search_area">
                                                        <div class="form-group">
                                                            <input type="email" class="form-control" id="exampleInputEmail" name="email" placeholder="{{__('email')}}">
                                                        </div>
                                                    </li>
                                                    <li class="search_area" style="display: none;">
                                                        <div class="form-group">
                                                            <textarea id="form_message" name="form_message" class="form-control required" name="message" rows="3" required="required" placeholder="{{__('ghi chú')}}"></textarea>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="search_option_button">
                                                            <button type="submit" class="btn btn-block btn-thm">{{__('gửi yêu cầu')}}</button>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Search Button Bacground Overlay -->
    <div class="search_overlay dn-992">
        <div class="mk-fullscreen-search-overlay" id="mk-search-overlay">
            <button class="mk-fullscreen-close" id="mk-fullscreen-close-button"><i class="fa fa-times"></i></button>
            <div id="mk-fullscreen-search-wrapper">
              <form method="get" id="mk-fullscreen-searchform">
                <input type="text" value="" placeholder="Search courses..." id="mk-fullscreen-search-input">
                <i class="flaticon-magnifying-glass fullscreen-search-icon"><input value="" type="submit"></i>
              </form>
            </div>
        </div>
    </div>

    @if( Session::has('flash_message'))
        <div style="display: none;" class="note note-{{ Session::get('flash_level')}}">
            <p class="flash_message" level="{{Session::get('flash_level')}}">{{__(Session::get('flash_message'))}}</p>
        </div>
    @endif
    @if( count($errors) > 0)
                    
        @foreach($errors->all() as $error)
            <div style="display: none;" class="note note-danger">
                <p class="error">{{__($error)}}</p>
            </div>
        @endforeach
            
    @endif

    <!-- Main Header Nav For Mobile -->
    @include('front-end.layout.header_mobile')

    @yield('content')

    <!-- Our Footer -->
    @include('front-end.layout.footer')
<!-- <a class="scrollToHome" href="#"><i class="flaticon-arrows"></i></a> -->
</div>
<!-- Wrapper End -->
<script type="text/javascript" src="{{asset('js/jquery-3.3.1.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery-migrate-3.0.0.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/popper.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.mmenu.all.js')}}"></script>
<script type="text/javascript" src="{{asset('js/ace-responsive-menu.js')}}"></script>
<script type="text/javascript" src="{{asset('js/chart.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/chart-custome.js')}}"></script>
<script type="text/javascript" src="{{asset('js/isotop.js')}}"></script>
<script type="text/javascript" src="{{asset('js/bootstrap-select.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/snackbar.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/simplebar.js')}}"></script>
<script type="text/javascript" src="{{asset('js/parallax.js')}}"></script>
<script type="text/javascript" src="{{asset('js/scrollto.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery-scrolltofixed-min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/jquery.counterup.js')}}"></script>
<script type="text/javascript" src="{{asset('js/wow.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/slider.js')}}"></script>
<!-- <script type="text/javascript" src="{{asset('js/pricing-slider.js')}}"></script> -->
<script type="text/javascript" src="{{asset('js/timepicker.js')}}"></script>
<script type="text/javascript" src="{{asset('js/progressbar.js')}}"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAz77U5XQuEME6TpftaMdX0bBelQxXRlM&callback=initMap"type="text/javascript"></script>
<script type="text/javascript" src="{{asset('js/googlemaps1.js')}}"></script>
<!-- Custom script for all pages --> 
<script type="text/javascript" src="{{asset('js/script.js')}}"></script>
<script type="text/javascript" src="{{asset('js/custom.js')}}"></script>
<script type="text/javascript" src="{{asset('js/toastr.min.js')}}"></script>
<script type="text/javascript">
    // document.addEventListener('contextmenu', event => event.preventDefault());
</script>
<!-- scripts particles -->
<script src="{{asset('js/particles/particles.js')}}"></script>
<script src="{{asset('js/particles/app.js')}}"></script>

<!-- stats.js -->
<script src="{{asset('js/particles/lib/stats.js')}}"></script>
<script>
  var count_particles, stats, update;
  stats = new Stats;
  stats.setMode(0);
  stats.domElement.style.position = 'absolute';
  stats.domElement.style.left = '0px';
  stats.domElement.style.top = '0px';
  document.body.appendChild(stats.domElement);
  count_particles = document.querySelector('.js-count-particles');
  update = function() {
    stats.begin();
    stats.end();
    if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) {
      count_particles.innerText = window.pJSDom[0].pJS.particles.array.length;
    }
    requestAnimationFrame(update);
  };
  requestAnimationFrame(update);
</script>
@if( Session::has('flash_message'))
    <script>
        $(document).ready(function(){
            var level = $(".flash_message").attr('level');
            var message = $(".flash_message").text();
            if(level == 'success'){
                toastr.success(message);
            }
            else{
                toastr.warning(message);
            }
            // console.log(flash_message);
        });
    </script>
@endif
@if( count($errors) > 0)
    <script>
        $(document).ready(function(){
            var i = 0;
            $(".error").each(function(){
                toastr.warning($(this).text());
            });
        });
    </script>
@endif

<script>
    $(document).ready(function(){
        $(".number-format").each(function(){
            var text = $(this).text();
            if(text.includes(",")){
                text = text.replaceAll(",", ".");
            }
            else if(text.includes(".")){
                text = text.replaceAll(".", ",");
            }
            else{
                
            }
            $(this).text(text);
        });
        // console.log(flash_message);
    });
</script>

@yield('js')
</body>
</html>