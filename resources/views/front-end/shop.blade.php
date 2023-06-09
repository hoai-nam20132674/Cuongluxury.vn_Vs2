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
	<title>Gian hàng</title>

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
		.file{
			padding-bottom: 10px;
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
    </style>

	
@endsection

@section('content')
	<div class="b__seller--wapper affileate">
	<div class="container contaiver-v2">
		<nav class="b__breadcrumb--seller" aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="/">Trang chủ</a></li>
				<li class="breadcrumb-item active" aria-current="page">Gian hàng của tôi</li>
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
									<!-- <div class="b__seller--box" style="padding: 10px">
										<div class="form-row">
											<div class="col-md-9 col-sm-12" style="line-height: 28px;font-weight: 500">



												Vui lòng cập nhật đầy đủ thông tin gian hàng
											</div>
											<div class="col-md-3 col-sm-12 text-right">
												<a href="/chinh-sua-thong-tin-ban-hang-lien-ket.html" class="btn btn-outline-primary">Cập nhật</a>
											</div>
										</div>
									</div> -->
									
									<div class="b__seller--box">
										<div class="b__title title_filter">
											<div class="form-row" style="padding-bottom: 10px">
												<div class="col-md-6 col-sm-12">
													<h3>Gian hàng của tôi</h3>
												</div>
												<div class="col-md-6 col-sm-12 text-right">
													<div class="button_filter">
														<button class="btn btn-outline-primary open-add-product" open-add-product="{{$request->open}}" id="button">
															Thêm sản phẩm
															<i class="fa fa-plus"></i>
														</button>
													</div>
												</div>
											</div>
										</div>
										<div class="filter_form" style="display: none">
											<div id="main" style="padding-left: 0px;">
									            <form method="POST" action="{{URL::route('merchantPostAddProduct')}}" enctype="multipart/form-data" accept-charset="UTF-8" id="add-product form_1aa3f76ebce588e61c3b18ff42edfa1a">
									            <input type="hidden" name="_token" value="{{ csrf_token()}}">
									    
									                <div class="row">
									                    <div class="col-md-9">
									                            <div class="main-form">
									                                <div class="form-body">
									                                    <div class="form-group"  >
									                
									                                        <label for="name" class="control-label required">Tên sản phẩm</label>
									                                        <input class="form-control" onchange="seo_preview()" placeholder="Nhập tên sản phẩm" data-counter="150" maxlength="150" value="{{old('name')}}" name="name" type="text" required id="name" style="text-transform: capitalize;">
									                                    </div>
									                
									                                    
									                                    <input type="hidden" name="model" value="">

									                                    <!-- <div class="form-group"  >
									                
									                                        <label for="content" class="control-label">Mô tả ngắn</label>
									                                        <textarea class="form-control" rows="4" placeholder="Nội dung" data-counter="4000" name="short_description" cols="50" id="short_description">{{old('short_description')}}</textarea>
									                                        <script type="text/javascript">
									                                          var editor = CKEDITOR.replace('short_description',{
									                                           language:'vi',
									                                           filebrowserImageBrowseUrl : '../../auth/ckfinder/ckfinder.html?type=Images',
									                                           filebrowserFlashBrowseUrl : '../../auth/ckfinder/ckfinder.html?type=Flash',
									                                           filebrowserImageUploadUrl : '../../auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
									                                           filebrowserFlashUploadUrl : '../../auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
									                                           });
									                                         </script>﻿
									                                    </div> -->
									                
									                                    <div class="form-group"  >
									                
									                                        <label for="content" class="control-label">Giới thiệu</label>
									                                        <textarea class="form-control" rows="4" placeholder="Nội dung" data-counter="4000" name="content" cols="50" id="content">{{old('content')}}</textarea>
									                                        <script type="text/javascript">
									                                          var editor = CKEDITOR.replace('content',{
									                                           language:'vi',
									                                           filebrowserImageBrowseUrl : '../../auth/ckfinder/ckfinder.html?type=Images',
									                                           filebrowserFlashBrowseUrl : '../../auth/ckfinder/ckfinder.html?type=Flash',
									                                           filebrowserImageUploadUrl : '../../auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
									                                           filebrowserFlashUploadUrl : '../../auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
									                                           });
									                                         </script>﻿
									                                    </div>
									                
									                                    
									                
									                                    
									                
									                                    <div class="clearfix"></div>
									                                </div>
									                            </div>

									                            <div class="widget meta-boxes">
									            			        <div class="widget-title">
									            			            <h4>
									            			                <span>Ảnh chi tiết</span>
									            			            </h4>
									            			            <button style="float: right;" type="button" onclick="more_image()" value="plus" class="btn btn-info add-more-image">
									            			                <i class="fa fa-plus"></i> Thêm ảnh sản phẩm
									            			            </button>
									            			        </div>
									            			        <div class="widget-body">
									            			            <div class="product-images-wrapper">
									            			    
									            			        		<div class="images-wrapper">
									            			        			<div class="row" id="more_image" style="display: flex;">
									            			        				
									            			        				<div class="col-md-3 col-xs-3 file" file="1" style="width:33%">
									                                                    <div class="file-upload">   
									                                                        <div class="file-upload-content file-upload-content1" style="position: relative;">
									                                                            <img width="100%" class="file-upload-image file-upload-image1" src="{{asset('uploads/images/icon-image.gif')}}" alt="your image" />
									                                                            <div class="image-title-wrap image-title-wrap1" style="position: absolute;top: 0px; right: 0px; width: 100%;height: 100%">
									                                                                <button style="width: 100%; height: 100%; background: #17a2b8 ; color: #fff;" type="button" onclick="removeUploadTest(1)" class="remove-image"><i class='bx bx-image-add bx-flashing' style='color:#ffffff; font-size: 50px;' ></i></button>
									                                                            </div>
									                                                            <input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input1" type='file' file="1" id="images" required name="images[]" onchange="renderImageUploads(this,1);" accept="image/*" multiple/>
									                                                            
									                                                        </div>
									                                                    </div>
									                                                </div>
									                                                
									            			        				
									            			        			</div>

									            			        
									            			        
									            			    			</div>
									            						</div>

									            			        </div>
									            			    </div>
									                        
									                        
									                        <div id="advanced-sortables" class="meta-box-sortables" style="display: none;">
									                            <div id="seo_wrap" class="widget meta-boxes">
									                                <div class="widget-title">
									                                    <h4><span>Tối ưu hoá bộ máy tìm kiếm (SEO)</span></h4>
									                                </div>
									                                @include('admin.layout.seo-preview')
									                            </div>
									                        </div>
									                    </div>
									                    <div class="col-md-3 right-sidebar">
									                        

									                
									                        <div class="widget meta-boxes" style="display: none;">
									                            <div class="widget-title">
									                                <h4><label for="display" class="control-label required">Trạng thái</label></h4>
									                            </div>
									                            <div class="widget-body">
									                                <div class="ui-select-wrapper">
									                                    <select class="form-control ui-select ui-select" id="display" name="display">
									                                        <option value="1">Xuất bản</option>
									                                        <option value="0">Bản nháp</option>
									                                    </select>
									                                    
									                                </div>
									                            </div>
									                        </div>
									                        <div class="widget meta-boxes" style="display: none;">
									                            <div class="widget-title">
									                                <h4><label for="hot" class="control-label"> Sản phẩm nổi bật</label></h4>
									                            </div>
									                            <div class="widget-body">
									                                <div class="form-group" >

									                                    <label for="hot" class="control-label">Nổi bật?</label>

									                                    <div class="onoffswitch">
									                                        <input type="hidden" name="hot" value="0">
									                                        <input type="checkbox" name="hot" class="onoffswitch-checkbox" id="hot" value="1"   class="form-control">
									                                        <label class="onoffswitch-label" for="hot">
									                                            <span class="onoffswitch-inner"></span>
									                                            <span class="onoffswitch-switch"></span>
									                                        </label>
									                                    </div>
									                                </div>
									                            </div>
									                        </div>
									                        <div class="widget meta-boxes" style="display: none;">
									                            <div class="widget-title">
									                                <h4><label for="best-sale" class="control-label">Best sale</label></h4>
									                            </div>
									                            <div class="widget-body">
									                                <div class="form-group" >

									                                    <label for="best-sale" class="control-label">Best sale?</label>

									                                    <div class="onoffswitch">
									                                        <input type="hidden" name="best_sale" value="0">
									                                        <input type="checkbox" name="best_sale" class="onoffswitch-checkbox" id="best-sale" value="1"   class="form-control">
									                                        <label class="onoffswitch-label" for="best-sale">
									                                            <span class="onoffswitch-inner"></span>
									                                            <span class="onoffswitch-switch"></span>
									                                        </label>
									                                    </div>
									                                </div>
									                            </div>
									                        </div>
									                        <div class="row">
									                            <div class="col-md-12">
									                                <div class="widget meta-boxes">
									                                    <div class="widget-title">
									                                        <h4><label for="price" class="control-label required" aria-required="true">Giá bán (VNĐ)</label></h4>
									                                    </div>
									                                    
									                                        <div class="main-form" style="margin-bottom: 0px">
									                                            <div class="form-body">
									                                                <div class="form-group" style="margin-bottom: 0px" >
									                                                    <!-- <input class="form-control" required placeholder="Giá bán" value="{{old('price')}}" name="price" type="number" id="price"> -->
									                                                    <input list="price" required class="form-control" value="{{old('price')}}" placeholder="Giá bán" oninput="replaceValue();" name="price" type="text" >
											                                            <datalist id="price">
											                                                
											                                                <option value="500000">50,000 đồng</option>
											                                                <option value="100000">100,000 đồng</option>
											                                                <option value="150000">150,000 đồng</option>
											                                                <option value="200000">200,000 đồng</option>
											                                                <option value="250000">250,000 đồng</option>
											                                                <option value="300000">300,000 đồng</option>
											                                                <option value="350000">350,000 đồng</option>
											                                                <option value="400000">400,000 đồng</option>
											                                                <option value="450000">450,000 đồng</option>
											                                                <option value="500000">500,000 đồng</option>
											                                                <option value="550000">550,000 đồng</option>
											                                                <option value="600000">600,000 đồng</option>
											                                                <option value="650000">650,000 đồng</option>
											                                                <option value="700000">700,000 đồng</option>
											                                                <option value="750000">750,000 đồng</option>
											                                                <option value="800000">800,000 đồng</option>
											                                                <option value="850000">850,000 đồng</option>
											                                                <option value="900000">900,000 đồng</option>
											                                                <option value="950000">950,000 đồng</option>
											                                                <option value="1000000">1 triệu đồng</option>
											                                                <option value="1100000">1,1 triệu đồng</option>
											                                                <option value="1200000">1,2 triệu đồng</option>
											                                                <option value="1300000">1,3 triệu đồng</option>
											                                                <option value="1400000">1,4 triệu đồng</option>
											                                                <option value="1500000">1,5 triệu đồng</option>
											                                                <option value="1600000">1,6 triệu đồng</option>
											                                                <option value="1700000">1,7 triệu đồng</option>
											                                                <option value="1800000">1,8 triệu đồng</option>
											                                                <option value="1900000">1,9 triệu đồng</option>
											                                                <option value="2000000">2 triệu đồng</option>
											                                            </datalist>
									                                                </div>


									                                                <input type="hidden" name="model" value="">



									                                                <div class="clearfix"></div>
									                                            </div>
									                                        </div>
									                                    
									                                </div>
									                            </div>
									                            <div class="col-md-6" style="display: none;">
									                                <div class="widget meta-boxes">
									                                    <div class="widget-title">
									                                        <h4><label for="sale" class="control-label" aria-required="fale">Giá giảm</label></h4>
									                                    </div>
									                                    
									                                        <div class="main-form" style="margin-bottom: 0px">
									                                            <div class="form-body">
									                                                <div class="form-group" style="margin-bottom: 0px" >
									                                                    <input class="form-control" placeholder="Giá giảm" value="{{old('sale')}}" name="sale" type="number" id="sale">
									                                                </div>


									                                                <input type="hidden" name="model" value="">



									                                                <div class="clearfix"></div>
									                                            </div>
									                                        </div>
									                                    
									                                </div>
									                            </div>
									                        </div>

									                        <div class="widget meta-boxes">
									                            <div class="widget-title">
									                                <h4><label for="categories[]" class="control-label required" aria-required="true">Danh mục</label></h4>
									                            </div>
									                            <div class="widget-body">
									                                <div class="form-group form-group-no-margin ">
									                                	<div class="multi-choices-widget list-item-checkbox mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" style="position: relative; overflow: visible; padding: 0px;">
									                                		<div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical_horizontal mCSB_outside" tabindex="0" style="max-height: 320px; overflow-x: hidden;">
									                                			<div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y mCS_x_hidden mCS_no_scrollbar_x" style="position: relative; top: 0px; left: 0px; width: 343.5px;" dir="ltr">
									    						                    <ul>
									    						                    	@foreach($categories as $cate)
									    							                        <li value="{{$cate->id}}">
									    									                    <label>
									    													        <input type="checkbox" value="{{$cate->id}}" name="categories[]">
									    													        {{$cate->name}}
									    													    </label>

									    							                        </li>
									    						                        @endforeach
									    						                       
									    						                    </ul>
									    						                </div>
									    						            </div>
									    						            <div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
									    						            	<div class="mCSB_draggerContainer">
									    						            		<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; height: 0px; top: 0px;" oncontextmenu="return false;">
									    						            			<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
									    						            			<div class="mCSB_draggerRail"></div>
									    						            		</div>
									    						            		<div id="mCSB_1_scrollbar_horizontal" class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_horizontal" style="display: none;">
									    						            			<div class="mCSB_draggerContainer">
									    						            				<div id="mCSB_1_dragger_horizontal" class="mCSB_dragger" style="position: absolute; min-width: 50px; width: 0px; left: 0px;" oncontextmenu="return false;">
									    						            					<div class="mCSB_dragger_bar"></div>
									    						            					<div class="mCSB_draggerRail"></div>
									    						            				</div>
									    						            			</div>
									    						            		</div>
									    						            	</div>
									    						            </div>
									    						        </div>
									    						    </div>

									                            </div>
									                        </div>
									                        <div class="widget meta-boxes" style="display: none;">
									                            <div class="widget-title">
									                                <h4><label for="" class="control-label" aria-required="true">Gian hàng đăng sản phẩm</label></h4>
									                            </div>
									                            <div class="widget-body">
									                                <div class="main-form" style="margin-bottom: 0px">
									                                    <div class="form-body">
									                                        <div class="form-group" style="margin-bottom: 0px" >
									                                            
									                                            <input list="user_id" required class="form-control" value="user_id-{{Auth::user()->phone}}" placeholder="Nhập tên gian hàng" onchange="importDataValue();" name="user_id" type="text" id="href">
									                                            
									                                        </div>


									                                        <input type="hidden" name="model" value="">



									                                        <div class="clearfix"></div>
									                                    </div>
									                                </div>
									                            </div>
									                        </div>


									                        <!-- <div class="widget meta-boxes">
									                            <div class="widget-title">
									                                <h4><label for="image" class="control-label">Ảnh đại diện</label></h4>
									                            </div>
									                            <div class="widget-body">
									                                <div class="image-box" style="border: 1px solid #e2e2e2;">
									                                    <div class="file-upload">   
									                                        <div class="file-upload-content file-upload-content100" style="position: relative;">
									                                            <img width="100%" class="file-upload-image file-upload-image100" src="{{asset('uploads/images/icon-image.gif')}}" alt="your image" />
									                                            <div class="image-title-wrap image-title-wrap100" style="position: absolute;top: 0px; right: 0px;">
									                                                <button type="button" onclick="removeUploadTest(100)" class="remove-image">Ảnh đại diện</button>
									                                            </div>
									                                            <input required style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input100" type='file' required name="avata" onchange="readURLTest(this,100);" accept="image/*" />
									                                        </div>
									                                    </div>
									        
									                                </div>
									                            </div>
									                        </div> -->
									                                
									                    </div>
									                </div>
									                <div class="row">
									                	<div class="col-md-12">
									                		<div class="widget-body" >
								                                <div class="btn-set">
								                                    <button type="submit" name="submit" value="save" class="btn btn-info" style="width: 100%; background: #03ab9a; border-color: #03ab9a;">
								                                         ĐĂNG SẢN PHẨM
								                                    </button>
								                                    &nbsp;
								                                   
								                                </div>
								                            </div>
									                	</div>
									                </div>

									            </form>
									            
									        
									        </div>
										</div>
										


									</div>
											<div class="b__seller--box">
												<div class="b__title">
													<div class="form-row">
														<div class="col-md-9 col-sm-12" style="line-height: 28px;font-weight: 500">
															<h3>Danh sách sản phẩm</h3>
														</div>
														<div class="col-md-3 col-sm-12 text-right">
															<button class="btn btn-register btn-outline-danger" onclick="confirmDeleteAllProduct('{{URL::route('merchantDeleteAllProduct',Auth::user()->id)}}')" >Xóa tất cả khỏi gian hàng</button>
														</div>
													</div>
												</div>
												<div class="b__seller--gr">
													<ul class="list-product">
														@foreach($products as $item)
														<li class="item-product" item-id="{{$item->id}}">
															<div class="card">
																<a href="{{$item->url}}">
																	<div class="b__img--card">
																		<img class="card-img-top" src="{{asset('uploads/images/products/details/'.$item->avata)}}" />
																	</div>
																</a>
																<div class="card-body">
																	<div class="product_name" style="overflow: hidden;text-overflow: ellipsis;display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;min-height: 30px;">
																		<a href="{{$item->url}}">{{$item->name}}</a>
																	</div>
																	<div>
																		<span style="float: left;" class="c-product-item__discount"><i class="fa fa-eye"></i> {{$item->view}} lượt xem</span>
																	</div>
																	<br>
																	<div class="b__text" style="display: block;">
																		<h5 style="float: left; color: red; font-weight: 800" class="card-title">{!!number_format($item->price)!!}<sup>đ</sup></h5>
																		
																	</div>
																	<div class="b__seller--button" style="display: flex">
																		<button style="width: 50%; margin-right: 2px" class="btn btn-share btn-outline-primary"><a href="{{URL::route('merchantEditProduct',$item->id)}}">Chỉnh sửa</a></button>
																		<button class="btn btn-outline-danger btn-cancel" onclick="confirmDeleteProduct('{{$item->id}}','{{URL::route('merchantDeleteProduct',$item->id)}}')" style="width: 50%"><a href="#">Xóa bỏ</a></button>
																	</div>
																	
																	
																</div>
															</div>
														</li>
														@endforeach
													</ul>
												</div>
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
			more_image.append('<div class="col-md-3 col-xs-3 file" file="'+i+'" style="width:33%" ><div class="file-upload"><div class="file-upload-content file-upload-content'+i+'" style="position: relative;"><img width="100%" class="file-upload-image file-upload-image'+i+'" src="{{asset("uploads/images/icon-image.gif")}}" alt="your image" /><div class="image-title-wrap image-title-wrap'+i+'" style="position: absolute;top: 0px; right: 0px; width: 100%;height: 100%"><button style="width: 100%; height: 100%; background: #17a2b8 ; color: #fff;" type="button" onclick="removeUploadTest('+i+')" class="remove-image"><i class="bx bx-image-add bx-flashing" style="color:#ffffff; font-size: 50px;" ></i></button></div><input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input'+i+'" type="file" file="'+i+'" id="images" name="images[]" onchange="renderImageUploads(this,'+i+');" accept="image/*" multiple/></div></div></div>');
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
	    // format number
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
		// end format number
	    function replaceValue(){
	    	value = $('input[name="price"]').val();
	    	value = value.replace(/\D/g,'');
	    	// if(value<1000){
	    	// 	value = value*1000;
	    	// }
	    	value = addCommas(value);
	    	$('input[name="price"]').val(value);
	    	console.log(value);
	    }

	    function confirmDeleteProduct(a,i){
	    	swal({
			  title: "Xác nhận xóa?",
			  text: "Bạn có chắc muốn xóa sản phẩm này không!",
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
	                    	toastr.success('Xóa sản phẩm thành công');
	                    	$('.item-product[item-id="'+a+'"]').remove();
	                    }
	                    else{
	                    	toastr.warning('Xóa sản phẩm không thành công');
	                    }
	                }
	            });
			  } else {
			    
			  }
			});
	    }
	    function confirmDeleteAllProduct(i){
	    	swal({
			  title: "Xác nhận xóa?",
			  text: "Bạn có chắc muốn xóa tất cả sản phẩm trong gian hàng không!",
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
	                    	toastr.success('Xóa tất cả sản phẩm thành công');
	                    	$('.list-product').remove();
	                    	$('.b__seller--gr').append('<h1>Không có sản phẩm nào trong gian hàng</h1>');
	                    }
	                    else{
	                    	toastr.warning('Xóa sản phẩm không thành công');
	                    }
	                }
	            });
			  } else {
			    
			  }
			});
	    }
	    
	    
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			var open = $('.open-add-product').attr('open-add-product');
		    console.log(open);
		    if(open == '1'){
		    	$('.open-add-product').click();
		    }
		    else{

		    }
		});
	</script>

    <!-- // -->
    
    <!-- Ckeditor config -->
@endsection