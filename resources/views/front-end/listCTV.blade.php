@extends('front-end.layout.default')
@section('head')
	

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="theme-color" content="#0871ce">

	<meta http-equiv="content-language" content="vi" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="author" content="Template" />
	<meta name='COPYRIGHT' content='&copy; Template' />
	<meta name="robots" content="noodp,index,follow" />
	<meta name="google" content="notranslate" />
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta property="og:type" content="website" />
	<title>Danh sách gian hàng đối tác</title>

	<link href="{{asset('css/bootstrap.css?v=1568371445')}}" rel="stylesheet">
    <link href="{{asset('css/font-awesome.min.css?v=1566957476')}}" rel="stylesheet">
    <link href="{{asset('css/bootstrap.min.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/owl.carousel.min.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/toastr.min.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/fontawesome.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/cloudzoom.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/select2.min.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/select2-bootstrap4.min.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/pretty-checkbox.min.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/brands.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/solid.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/all.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/chat.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/card.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/jquery-ui.css?v=1603338119')}}" rel="stylesheet">
    <link href="{{asset('css/checkout.css?v=1610977888')}}" rel="stylesheet">
    <link href="{{asset('css/stylev2.css?v=1614350823')}}" rel="stylesheet">
    <link href="{{asset('css/style.css?v=1610977888')}}" rel="stylesheet">
    <link href="{{asset('css/custom.css?v=1614350823')}}" rel="stylesheet">
    <link href="{{asset('css/stars.css?v=1603338118')}}" rel="stylesheet">
    <link href="{{asset('css/product-detail.css?v=1612447411')}}" rel="stylesheet">
    <link href="{{asset('css/gio-hang.css?v=1612447411')}}" rel="stylesheet">
    <link href="{{asset('css/ban-do-dac-san.css?v=1612447411')}}" rel="stylesheet">
    <link href="{{asset('css/lich-su-don-hang.css?v=1610977888')}}" rel="stylesheet">
    <!-- // -->
   	<script type="text/javascript" src="{{asset('auth/ckeditor/ckeditor.js')}}"></script>
    <script type="text/javascript" src="{{asset('auth/ckfinder/ckfinder.js')}}"></script>
    <!-- // -->
    <style type="text/css">
		.f-items_show-fullname .f-items_name{
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 2;
			-webkit-box-orient: vertical;
		}
		.f-items_show-fullname .f-items_name:hover{
			-webkit-line-clamp: inherit;
			text-align: justify;
		}
		.b__price .ml-auto {
			line-height: 1.8em;
		}
		.item-ctv{
			box-shadow: 8px 8px 30px 0px rgb(42 67 113 / 22%);
		}
		.item-ctv:hover{
			box-shadow: 0px 0px 10px 0px #ff4800;
    		transition: 0.3s;
		}

		@media (min-width: 992px){
			.f-items .f-items__ls {
				display: flex;
				height: inherit;
				justify-content: space-between;
				align-items: baseline;
				min-height: 34px;
			}
		}

		.modal.fade .modal-dialog{
			transform: unset;
		}

		[id|=textAngular-editableFix]{
			display: none !important;
		}
	</style>
	<style>
	.select2-container .select2-selection--single{
		height: 34px;
	}
	.navbar-generic__back {
		display: none;
	}
	.select2-container--default .select2-selection--single .select2-selection__rendered {
		line-height: 34px;
	}
	.b__seller--wapper .b__seller--info .b__seller--right .b__title h3 {
		padding-bottom: 0;
		margin-bottom: 0;
		line-height: 33px;
	}
	.b__seller--gr .card:hover {
		box-shadow: 0 2px 4px 0 rgba(0,0,0,.25);
		-webkit-transform: all .3s ease-in-out;
		-ms-transform: all .3s ease-in-out;
		transform: all .3s ease-in-out;
	}
	.file-upload-input {
		opacity: 0;
		position: absolute;
	    margin: 0;
	    padding: 0;
	    width: 100%;
	    height: 100%;
	    outline: none;
	    opacity: 0;
	    cursor: pointer;
	    z-index: 100;
	    top: 0px;
	    left: 0px;
	}
	.file-upload-content {
		position: relative;
	}
	.meta-boxes .widget-title {
	    cursor: move;
	    overflow: hidden;
	    height: 35px;
	    border-bottom: 1px solid #eee;
	    padding: 0 5px;
	    background: none;
	}
	.meta-boxes .widget-title>h4 {
	    line-height: 35px;
	    height: 35px;
	}
	.widget {
	    background: #fff;
	    clear: both;
	    margin-bottom: 20px;
	}
	.btn:not(.btn-sm):not(.btn-lg) {
	    line-height: 1.44;
	}
	.widget-title>h4 {
	    float: left;
	    font-size: 14px;
	    font-weight: 700;
	    line-height: 45px;
	    height: 45px;
	    overflow: hidden;
	    margin: 0;
	}
	#number {
	  font-size: 10rem;
	  font-weight: bold;
	  font-family: helvetica;
	  text-align: center;
	  color: white;
	  padding-top: 20px;


	}
	.btn-hover {
	    width: 200px;
	    font-size: 16px;
	    font-weight: 600;
	    color: #fff;
	    cursor: pointer;
	    margin: 20px;
	    height: 55px;
	    text-align:center;
	    border: none;
	    background-size: 300% 100%;

	    border-radius: 50px;
	    moz-transition: all .4s ease-in-out;
	    -o-transition: all .4s ease-in-out;
	    -webkit-transition: all .4s ease-in-out;
	    transition: all .4s ease-in-out;
	}

	.btn-hover:hover {
	    background-position: 100% 0;
	    moz-transition: all .4s ease-in-out;
	    -o-transition: all .4s ease-in-out;
	    -webkit-transition: all .4s ease-in-out;
	    transition: all .4s ease-in-out;
	}

	.btn-hover:focus {
	    outline: none;
	}
	.btn-hover.color-1 {
	    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
	    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
	}
	.btn-hover.color-2 {
	    background-image: linear-gradient(to right, #f5ce62, #e43603, #fa7199, #e85a19);
	    box-shadow: 0 4px 15px 0 rgba(229, 66, 10, 0.75);
	}
	.btn-hover.color-3 {
	    background-image: linear-gradient(to right, #667eea, #764ba2, #6B8DD6, #8E37D7);
	    box-shadow: 0 4px 15px 0 rgba(116, 79, 168, 0.75);
	}
	.btn-hover.color-4 {
	    background-image: linear-gradient(to right, #fc6076, #ff9a44, #ef9d43, #e75516);
	    box-shadow: 0 4px 15px 0 rgba(252, 104, 110, 0.75);
	}
	.btn-hover.color-5 {
	    background-image: linear-gradient(to right, #0ba360, #3cba92, #30dd8a, #2bb673);
	    box-shadow: 0 4px 15px 0 rgba(23, 168, 108, 0.75);
	}
	.btn-hover.color-6 {
	    background-image: linear-gradient(to right, #009245, #FCEE21, #00A8C5, #D9E021);
	    box-shadow: 0 4px 15px 0 rgba(83, 176, 57, 0.75);
	}
	.btn-hover.color-7 {
	    background-image: linear-gradient(to right, #6253e1, #852D91, #A3A1FF, #F24645);
	    box-shadow: 0 4px 15px 0 rgba(126, 52, 161, 0.75);
	}
	.btn-hover.color-8 {
	    background-image: linear-gradient(to right, #29323c, #485563, #2b5876, #4e4376);
	    box-shadow: 0 4px 15px 0 rgba(45, 54, 65, 0.75);
	}
	.btn-hover.color-9 {
	    background-image: linear-gradient(to right, #25aae1, #4481eb, #04befe, #3f86ed);
	    box-shadow: 0 4px 15px 0 rgba(65, 132, 234, 0.75);
	}
	.btn-hover.color-10 {
	        background-image: linear-gradient(to right, #ed6ea0, #ec8c69, #f7186a , #FBB03B);
	    box-shadow: 0 4px 15px 0 rgba(236, 116, 149, 0.75);
	}
	.btn-hover.color-11 {
	       background-image: linear-gradient(to right, #eb3941, #f15e64, #e14e53, #e2373f);  box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
	}

</style>


<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
    	var user;
    </script>
   
    <style>
    	[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak {
    		display: none !important;
    	}
    	.search {
		  width: 100%;
		  position: relative;
		  display: flex;
		}

		.searchTerm {
		  width: 100%;
		  border: 3px solid #03ab9a;
		  border-right: none;
		  padding: 5px;
		  height: 36px;
		  border-radius: 5px 0 0 5px;
		  outline: none;
		  color: #9DBFAF;
		}

		.searchTerm:focus{
		  color: #03ab9a;
		}

		.searchButton {
		  width: 40px;
		  height: 36px;
		  border: 1px solid #03ab9a;
		  background: #03ab9a;
		  text-align: center;
		  color: #fff;
		  border-radius: 0 5px 5px 0;
		  cursor: pointer;
		  font-size: 20px;
		}

		/*Resize the wrap to see the search bar change!*/
		.wrap{
		  width: 100%;
		}
    </style>

	
@endsection

@section('content')
	<div class="b__seller--wapper affileate">
	<div class="container contaiver-v2">
		<nav class="b__breadcrumb--seller" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
				<li class="breadcrumb-item active" aria-current="page">Danh sách gian hàng đối tác</li>
			</ol>
		</nav>
		<div class="b__seller--info">
			<div class="container p-0">
				<div class="row">
					@include('front-end.layout.sidebar_merchant')
							<div class="col-md-9 col-sm-12">
								@if( Session::has('flash_message'))
								    <div style="display: none;" class="note note-{{ Session::get('flash_level')}}">
								        <p class="flash_message" level="{{Session::get('flash_level')}}">{{ Session::get('flash_message')}}</p>
								    </div>
								@endif
								@if( count($errors) > 0)
								                
								    @foreach($errors->all() as $error)
								        <div style="display: none;" class="note note-danger">
								            <p class="error">{{$error}}</p>
								        </div>
								    @endforeach
								        
								@endif
								<div class="b__seller--right b__seller--ls product-affiliate" ng-controller="create-o2o-campaign" ng-cloak>
									
											
										
									
									<div class="b__seller--box">
										<div class="b__title title_filter">
											<div class="form-row" style="padding-bottom: 10px">
												<div class="col-md-6 col-sm-12">
													@if(isset($request->search))
													<h3>Tìm kiếm đối tác số điện thoại "{{$request->search}}"</h3>
													@else
													<h3>Danh sách gian hàng đối tác</h3>
													@endif
												</div>
												<div class="col-md-6 col-sm-12">
													<form action="" method="GET">
														<div class="wrap">
														   <div class="search">
														      <input type="number" class="searchTerm" name="search" placeholder="Tìm kiếm theo số điện thoại">
														      <button type="submit" class="searchButton">
														        <i class="fa fa-search"></i>
														     </button>
														   </div>
														</div>
													</form>
												</div>
												
											</div>
										</div>
										@foreach($ctvs as $user)
										<div class="b__shop--info shop-own item-ctv" item-id="{{$user->id}}">
								          <div class="b__shop--ls">
								            <div class="b__shop--ls_content">
								              <div class="b__shop--avatar">
								                <img src="{{asset('uploads/images/users/avatars/'.$user->avatar)}}" />
								              </div>
								              <div class="b__shop--description">
								                <h3>{{$user->name_s}}</h3>

								                @if($user->status)
								                <p><img style="padding-right: 3px" src="{{asset('images/online-status-icon.png')}}" />Đang hoạt động</p>
								                @else
								                <p><img style="padding-right: 3px" src="{{asset('images/offline-status-icon.png')}}" />Ngừng hoạt động</p>
								                @endif
								                <ul ng-controller="chatCtrl">
								                  <li><a class="img_mess" onclick="update()" href="#" >SĐT: {{$user->phone}}</a></li>
								                  <li><a href="{{$user->name_s}}-si{{$user->id}}">Xem shop</a></li>
								                  <li><a id="deleteCTV" onclick="confirmDeleteCTV('{{$user->id}}','{{URL::route('deleteCTV',$user->id)}}')" style="background: #ee2624; color: #fff" href="#">Xóa bỏ</a></li>
								                </ul>
								              </div>
								            </div>
								          </div>
								          <div class="b__shop--ls pd-top-17-mb shop-content-right">
								            <div class="info-content-left">
								              <div class="info-content">
								                <label>Đánh giá:</label>
								                <strong class="jstars" data-value="5"></strong>
								              </div>
								              <div class="info-content">
								                <label>Số Sản Phẩm:</label>
								                <strong></strong>
								              </div>
								            </div>
								            <div class="info-content-right">
								              <div class="info-content">
								              	@php
									              	Carbon\Carbon::setLocale('vi');
									              	$now = \Carbon\Carbon::now();
								              	@endphp
								                <label>Ngày Tham Gia:</label>
								                <strong>{{\Carbon\Carbon::createFromTimestamp(strtotime($user->created_at))->diffForHumans($now)}}</strong>
								              </div>
								              <div class="info-content">
								                <label>Địa chỉ:</label>
								                <strong>{{$user->address}}</strong>
								              </div>
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
					</div>
				</div>
				<style>
					.popup_copy_url{
						position: fixed;
						top: 0;
						left: 0;
						width: 100%;
						height: 100%;
						/* background: rgba(0,0,0,0.5); */
						z-index: 9999;
						display: none;
					}
					.popup_content{
						width: 300px;
						line-height: 230px;
						height: 230px;
						background: rgba(0,0,0,0.5);
						position: absolute;
						left: 50%;
						top: 50%;
						-ms-transform: translate(-50%,-50%);
						-webkit-transform: translate(-50%,-50%);
						transform: translate(-50%,-50%);
					}
					.popup_content p{
						color: #fff;
						font-size: 20px;
						text-align: center;
					}
				</style>
				
@endsection
@section('js')
							<script>
								var baseUrl = '';
								var csrf_token = 'iVZtMW8C3OyM2PAP7-VFxyOx3xUYufETm_byfqGGxo_zGFR6I2WKg8-VhWGagXO-RPmMTFSKvCXSxplLy-Sr2g==' ? 'iVZtMW8C3OyM2PAP7-VFxyOx3xUYufETm_byfqGGxo_zGFR6I2WKg8-VhWGagXO-RPmMTFSKvCXSxplLy-Sr2g==' : '';
								var csrfTokenName = '_csrf' ? '_csrf' : '';
								const locationVersion = '';
							</script>
							<script src="/js/jquery.js?v=1568371444"></script>
						    <!-- <script src="https://domain.com/assets/d6da31be/yii.js?v=1566957476"></script> -->
						    <script src="/js/bootstrap.js?v=1568371445"></script>
						    <script src="/js/progressive-image.js?v=1603338120"></script>
						    <script src="/js/jquery-ui.min.js?v=1603338120"></script>
						    <script src="/js/bootstrap.min.js?v=1603338120"></script>
						    <script src="/js/owl.carousel.min.js?v=1603338120"></script>
						    <!-- <script src="https://domain.com/static/v2/js/brands.js?v=1603338120"></script> -->
						    <!-- <script src="https://domain.com/static/v2/js/solid.js?v=1603338120"></script> -->
						    <script src="/js/fontawesome.js?v=1603338120"></script>
						    <script src="/js/jquery.nstSlider.js?v=1603338120"></script>
						    <script src="/js/cloudzoom.js?v=1603338120"></script>
						    <script src="/js/select2.full.min.js?v=1603338119"></script>
						    <script src="/js/jstars.min.js?v=1603338120"></script>
						    <script src="/js/style.js?v=1614350823"></script>
						    <!-- <script src="https://domain.com/jsv2/lib/imboclient.min.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/lib/bootbox.js?v=1603338118"></script> -->
						    <script src="/js/angular.min.js?v=1603338118"></script>
						    <script src="/js/angular-filedialog.js?v=1603338118"></script>
						    <script src="/js/angular-animate.min.js?v=1603338118"></script>
						    <script src="/js/angular-ui-bootstrap.min.js?v=1603338118"></script>
						    <script src="/js/moment.min.js?v=1603338118"></script>
						    <script src="/js/angular-moment.min.js?v=1603338118"></script>
						    <script src="/js/angular-local-storage.min.js?v=1603338118"></script>
						    <script src="/js/customSelect.js?v=1603338118"></script>
						    <script src="/js/angular-recaptcha.js?v=1603338118"></script>
						    <!-- <script src="https://domain.com/jsv2/lib/simple.money.format.js?v=1603338118"></script> -->
						    <script src="/js/text-angular-rangy.min.js?v=1603338118"></script>
						    <script src="/js/text-angular-sanitize.min.js?v=1603338118"></script>
						    <script src="/js/text-angular.min.js?v=1603338118"></script>
						    <script src="/js/text-angular-setup.js?v=1603338118"></script>
						    <!-- <script src="https://domain.com/jsv2/lib/firebase-app.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/lib/firebase-messaging.js?v=1603338118"></script> -->
						    <!-- <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-auth.js"></script> -->
						    <!-- <script src="https://www.gstatic.com/firebasejs/7.15.0/firebase-database.js"></script> -->
						    <!-- <script src="https://domain.com/jsv2/inputmask.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/utils.js?v=1603338118"></script> -->
						    <script src="/js/app.js?v=1614350823"></script>
						    <!-- <script src="https://domain.com/jsv2/wallet.js?v=1603338118"></script> -->
						    <script src="/js/modal.js?v=1603338118"></script>
						    <script src="/js/firebase-notification.js?v=1603338118"></script>
						    <script src="/js/auth.js?v=1603338118"></script>
						    <!-- <script src="/js/main.js?v=1605193566"></script> -->
						    <!-- <script src="/js/product.js?v=1610977888"></script> -->
						    <!-- <script src="https://domain.com/jsv2/order.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/cartv2.js?v=1610981070"></script> -->
						    <!-- <script src="https://domain.com/jsv2/cartmb.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/user.js?v=1603338118"></script> -->
						    <script src="/js/footer.js?v=1603338118"></script>
						    <script src="/js/search.js?v=1603338118"></script>
						    <!-- <script src="https://domain.com/jsv2/home.js?v=1603338118"></script> -->
						    <script src="/js/style-jsv2.js?v=1608046089"></script>
						    <!-- <script src="https://domain.com/jsv2/lodash.min.js?v=1603338118"></script> -->
						    <script src="/js/angularjs-dropdown-multiselect.min.js?v=1603338118"></script>
						    <!-- <script src="https://domain.com/jsv2/o2o-detail.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/o2o.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/chat.js?v=1603338118"></script> -->
						    <script src="/js/angularfire.min.js?v=1603338118"></script>
						    <!-- <script src="https://domain.com/jsv2/popup.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/flashsale-homepage.js?v=1610286800"></script> -->
						    <!-- <script src="https://domain.com/jsv2/flashsale-page.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/browse.js?v=1603338118"></script> -->
						    <script src="/js/currency-mask.js?v=1603338118"></script>
						    <!-- <script src="https://domain.com/jsv2/custom-select.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/toastr.min.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/product-family-notification.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/notifications-page.js?v=1607615500"></script> -->
						    <!-- <script src="https://domain.com/jsv2/buy-card.js?v=1603338131"></script> -->
						    <!-- <script src="https://domain.com/jsv2/telecharge-viettel.js?v=1603338118"></script> -->
						    <!-- <script src="https://domain.com/jsv2/wallet-withdrawals.js?v=1605193566"></script> -->
						    <!-- <script src="https://domain.com/jsv2/history-order.js?v=1610977888"></script> -->
						    <!-- <script src="https://domain.com/jsv2/recommendation.js?v=1614350823"></script>  -->
						    
							<script>
								CloudZoom.quickStart();
								$('.nstSlider').nstSlider({
									"rounding": {
										"1000000" : "10000000"
									},
									"left_grip_selector": ".leftGrip",
									"right_grip_selector": ".rightGrip",
									"value_bar_selector": ".bar",
									"value_changed_callback": function(cause, leftValue, rightValue) {
										$('.leftLabel').val(leftValue);
										$('.rightLabel').val(rightValue);
									}
								});
							</script>




							

    
    <script>
    	$(document).ready(function(){
    		$("#show-all-tinh-thanh").click(function(){
    			$("#tinh-thanh").removeClass("tinh-thanh");
    		});
    	});

    	$(document).ready(function(){
    		if($("#top-referrer-detail")){
    			$(window).scroll(function() {
    				var scroll = $(window).scrollTop();
    				if (scroll >= 50) {
    					$("#top-referrer-detail").addClass("detail-fixed-top");
    				}else{
    					$("#top-referrer-detail").removeClass("detail-fixed-top");
    				}
    			});
    		};


    		$(".login_succses_mobile").click(function(){
    			$(".login_succses_menu_mobile").toggle();
    		});
    	})
    </script>
    <!-- // -->
    
    
    <script src="{{asset('js/admin/upload-image.js')}}"></script>
    <script type="text/javascript">
			
		function more_image(){
			var i = parseInt($("input[type=file]").length);
			i=i+1;
			var more_image = $("#more_image");
			more_image.append('<div class="col-md-3 col-xs-3" style="width:33%" ><div class="file-upload"><div class="file-upload-content file-upload-content'+i+'" style="position: relative;"><img width="100%" class="file-upload-image file-upload-image'+i+'" src="{{asset("uploads/images/icon-image.gif")}}" alt="your image" /><div class="image-title-wrap image-title-wrap'+i+'" style="position: absolute;top: 0px; right: 0px;"><button type="button" onclick="removeUploadTest('+i+')" class="remove-image">Ảnh chi tiết</button></div><input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input'+i+'" type="file" name="images[]" onchange="readURLTest(this,'+i+');" accept="image/*" /></div></div></div>');
			i++;
		};
        function importDataValue(){
            // var value = $("#user_id option[value=" + $('#input[name="user_id"]').val() + "]").attr('data-value');
            var input_value = $('input[name="user_id"]').val();
            var e = $('#user_id').children('option[value="'+input_value+'"]').attr('data-value');
            e = input_value+'-'+e;
            if(e=='-undefined'){
                $('input[name="user_id"]').val('');
            }
            else{
                $('input[name="user_id"]').val(e);
            }
            console.log(e.length);
        }
		
	</script>
	<script type="text/javascript">
	    function convertToSlug(text){
	        var slug;
	        //Đổi chữ hoa thành chữ thường
	        slug = text.toLowerCase();
	     
	        //Đổi ký tự có dấu thành không dấu
	        slug = slug.replace(/á|à|ả|ạ|ã|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ/gi, 'a');
	        slug = slug.replace(/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/gi, 'e');
	        slug = slug.replace(/i|í|ì|ỉ|ĩ|ị/gi, 'i');
	        slug = slug.replace(/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/gi, 'o');
	        slug = slug.replace(/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/gi, 'u');
	        slug = slug.replace(/ý|ỳ|ỷ|ỹ|ỵ/gi, 'y');
	        slug = slug.replace(/đ/gi, 'd');
	        //Xóa các ký tự đặt biệt
	        slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
	        //Đổi khoảng trắng thành ký tự gạch ngang
	        slug = slug.replace(/ /gi, "-");
	        //Đổi nhiều ký tự gạch ngang liên tiếp thành 1 ký tự gạch ngang
	        //Phòng trường hợp người nhập vào quá nhiều ký tự trắng
	        slug = slug.replace(/\-\-\-\-\-/gi, '-');
	        slug = slug.replace(/\-\-\-\-/gi, '-');
	        slug = slug.replace(/\-\-\-/gi, '-');
	        slug = slug.replace(/\-\-/gi, '-');
	        //Xóa các ký tự gạch ngang ở đầu và cuối
	        slug = '@' + slug + '@';
	        slug = slug.replace(/\@\-|\-\@|\@/gi, '');
	        return slug;
	    }
	     $(document).ready(function() {
	            var title = $('input[name="title"]').val();
	            var url = $('input[name="url"]').val();
	            var seo_description = $('textarea[name="seo_description"]').val();
	            $('.page-title-seo').empty();
	            $('.page-title-seo').append(title);
	            $('.page-url-seo').empty();
	            $('.page-url-seo').append('<p>https://domain/'+url+'</p>');
	            $('.page-description-seo').empty();
	            $('.page-description-seo').append(seo_description);
	            
	     });
	     function seo_preview(){
	            var name = $('input[name="name"]').val();
	            var title = $('input[name="title"]').val();
	            var title2 = $('input[name="title"]').attr('value');
	            var url = $('input[name="url"]').val();
	            var seo_description = $('textarea[name="seo_description"]').val();
	            if(title2 ==''){
	                url = convertToSlug(name);
	                $('input[name="url"]').val(url);
	            }
	            else{
	                
	            }
	            
	            
	            $('.page-title-seo').empty();
	            $('.page-title-seo').append(title);
	            $('.page-url-seo').empty();
	            $('.page-url-seo').append('<p>https://domain/'+url+'</p>');
	            $('.page-description-seo').empty();
	            $('.page-description-seo').append(seo_description);
	     }
	     function rt(){
	     	var stk = $('input[name="stk"]').attr('value');
	     	var bank = $('input[name="bank"]').attr('value');
	     	var fb = $('input[name="fb"]').attr('value');
	     	var address = $('input[name="address"]').attr('value');
	     	if(stk=='' || bank =='' || fb =='' || address==''){
	     		swal("Vui lòng cập nhật đầy đủ thông tin cá nhân để được rút tiền thưởng!");
	     	}
	     	else{
	     		swal({
				  title: "RÚT TIỀN SAU 15 NGÀY!",
				  text: "Bạn đang làm rất tốt! Hãy tích cực đăng bán sản phẩm và bạn sẽ nhận được tiền thưởng sau 15 ngày hoạt động",
				  icon: "success",
				});
	     	}
	     	
	     }
	     function confirmDeleteCTV(a,i){
	    	swal({
			  title: "Xác nhận xóa?",
			  text: "Bạn có chắc muốn xóa gian hàng này không!",
			  icon: "warning",
			  buttons: true,
			  dangerMode: true,
			})
			.then((willDelete) => {
			  if (willDelete) {
			    $.ajax({
	                type: 'GET',
	                url: i,
	                dataType: 'html',
	                success: function(data) {
	                    if(data ==1 ){
	                    	toastr.success('Xóa gian hàng thành công');
	                    	$('.item-ctv[item-id="'+a+'"]').remove();
	                    }
	                    else{
	                    	toastr.warning('Xóa gian hàng không thành công');
	                    }
	                }
	            });
			  } else {
			    
			  }
			});
	    }
	    
	</script>
	<script type="text/javascript">
		let number = document.getElementById('number');

		let start = 0;
		let end = $('#number').attr('point');
		let ticks = 20;
		let speed = 50;

		let randomNumbers = [end]

		for (let i = 0; i < ticks - 1; i++) {
		  randomNumbers.unshift(
		    Math.floor(Math.random() * (end - start + 1) + start)
		  );
		}

		randomNumbers.sort((a, b) => {return a - b});

		console.log(randomNumbers.length)

		let x = 0;
		let interval = setInterval(function () {
		  
		   number.innerHTML = randomNumbers.shift();

		   if (++x === ticks) {
		      window.clearInterval(interval);
		   }

		}, speed);
		console.log(end);
	</script>

    
@endsection