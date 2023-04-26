@extends('front-end.layout.default')
@section('head')
		
	<title>Yêu Cầu Ký Gửi Bất Động Sản</title>
	<meta name="description" content="Yêu Cầu Ký Gửi BẤT ĐỘNG SẢN">
	<meta name="keywords" content="Yêu Cầu Ký Gửi BẤT ĐỘNG SẢN"/>		
	<meta name='revisit-after' content='1 days' />
	<link rel="icon" href="" type="image/x-icon" />
	<meta property="og:type" content="website">
	<meta property="og:title" content="Yêu Cầu Ký Gửi BẤT ĐỘNG SẢN">
	<meta property="og:image" content="{{asset('uploads/images/ogimage/'.$system->ogimage)}}">
	<meta property="og:image:secure_url" content="">
	<meta property="og:description" content="Yêu Cầu Ký Gửi BẤT ĐỘNG SẢN">
	<meta property="og:url" content="ky-gui-bat-dong-san">
	<meta property="og:site_name" content="Yêu Cầu Ký Gửi BẤT ĐỘNG SẢN">
	<style type="text/css">
		.exchange li.nav-item {
		    text-align: center;
		    width: 50%;
		}
		.exchange li.nav-item .nav-link {
		    background-color: #f5f5f5;
		    height: 70px;
		    line-height: 65px;
		    margin: 0;
		    padding: 0;
		    border: none;
		    color: #000;
		    font-size: 18px;
		    font-weight: bold;
		}
		.exchange li.nav-item .nav-link.active {
		    background-color: #b80000;
		    border: none;
		    color: #fff;
		    font-size: 20px;
		}
		.exchange-tabs {
			background-color: #fff;
		}
		.control-label {
			color: #23376d;
			font-weight: bold;
		}
		.required:after {
		    content: " *";
		    color: #b80000;
		}
		.radio {
			margin-right: 10px;
		}
		.vnd{
			position: absolute;
		    right: 15px;
		    top: 35%;
		    color: #000;
		    font-size: 18px;
		}
		h2.detail::before {
		    font-family: 'FontAwesome';
		    color: #484848;
		    content: "\f107";
		    float: right;
		    font-weight: lighter;
		}
		.faq_according .accordion .card .card-header::before{
			display: none;
		}
		.hidden {
			display: none;
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
@endsection

@section('content')
	<div class="preloader2"></div>
	<!-- Inner Page Breadcrumb -->
	<section class="inner_page_breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="breadcrumb_content">
						<ol class="breadcrumb">
						    <li class="breadcrumb-item"><a href="/">{{__('trang chủ')}}</a></li>
						    <li class="breadcrumb-item active" aria-current="page">{{__('Giao Dịch Bất Động Sản')}}</li>
						</ol>
						<h1 class="breadcrumb_title">{{__('Ký Gửi - Yêu Cầu Bất Động Sản')}}</h1>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Our Contact -->
	<section class="our-contact pb0 bgc-f7">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-xl-8">
					
					<div class="shortcode_widget_tab">
						<div class="exchange-tabs">
							<!-- Nav tabs -->
							<ul class="nav exchange nav-tabs" id="myTab2" role="tablist">
								<li class="nav-item">
							    	<a class="nav-link active" data-toggle="tab" href="#item1-tab"><i class='bx bx-caret-right bx-fade-left' style='color:#f5f5f5; margin-right: 10px'  ></i>{{__('ký gửi bất động sản')}}</a>
							    </li>
								<li class="nav-item">
							    	<a class="nav-link" data-toggle="tab" href="#item2-tab"><i class='bx bx-caret-right bx-fade-left' style='color:#f5f5f5; margin-right: 10px'  ></i>{{__('yêu cầu bất động sản')}}</a>
							    </li>
								
							</ul>
							<!-- Tab panes -->
							<div class="tab-content" id="myTabContent2">
							    <div id="item1-tab" class="container tab-pane active">
							    	<form class="contact_form" enctype="multipart/form-data" id="contact_form" name="contact_form" action="{{URL::route('addKygui')}}" method="POST" novalidate="novalidate">
							    		{{ csrf_field() }}
										<div class="row">
							                <div class="col-md-12 pb20 pt20">
							                	<label for="lbds" class="control-label required">{{__('loại ký gửi')}}</label>
							                    <div class="ui_kit_radiobox">
													<div class="radio">
														<input id="radio_one" name="lkg" value="bất động sản bán" type="radio" checked="">
														<label for="radio_one"><span class="radio-label"></span>{{__('bất động sản bán')}}</label>
													</div>
													<div class="radio">
														<input id="radio_two" name="lkg" value="bất động sản cho thuê" type="radio">
														<label for="radio_two"><span class="radio-label"></span>{{__('bất động sản cho thuê')}}</label>
													</div>
													
												</div>
							                </div>
							                <div class="col-md-12 pb20">
							                	<label for="type" class="control-label required">{{__('thông tin chủ nhà')}}</label>
							                	<div class="row">
							                		<div class="col-md-4">
									                    <div class="form-group">
									                    	<label class="required">{{__('họ tên')}}</label>
									                    	<input id="name" name="name" class="form-control required" required="required" type="text" placeholder="{{__('nhập họ tên')}}">
									                    </div>
									                </div>
									                <div class="col-md-4">
									                    <div class="form-group">
									                    	<label>{{__('số điện thoại')}}</label>
									                    	<input id="phone" name="phone" class="form-control required" required="required" type="number" placeholder="{{__('nhập số điện thoại')}}">
									                    </div>
									                </div>
									                <div class="col-md-4">
									                    <div class="form-group">
									                    	<label>{{__('email')}}</label>
									                    	<input id="email" name="email" class="form-control required" required="required" type="email" placeholder="{{__('nhập email')}}">
									                    </div>
									                </div>
								                </div>
							                </div>
							                <div class="col-md-12 pb20">
							                	<label class="control-label required">{{__('giá bán/thuê')}}</label>
							                	<div class="row">
									                <div class="col-md-9">
									                    <div class="form-group">
									                    	
									                    	<input id="price" style="position: relative;" name="price" oninput="replaceValue('price');" class="form-control required" required type="text" placeholder="{{__('1.200.000.000')}}">
									                    	
									                    </div>
									                </div>
									                <div class="col-md-3">
							                    		<div class="form-group">
									                    	<select name="tiente" id="tiente" class="form-control">
									                    		<option value="VNĐ">{{__('VNĐ')}}</option>
									                    		<option value="$">{{__('$')}}</option>
									                    	</select>
									                    </div>
							                    	</div>
							                   	</div>
							                </div>
							                <div class="col-md-12 pb20">
							                    <div class="form-group">
							                    	<label class="control-label required">{{__('dự án')}}</label>
								                    <input id="da" name="da" class="form-control required" required="required" type="text" placeholder="{{__('nhập dữ liệu')}}">
												</div>
							                </div>
							                <div class="col-md-12 pb20">
							                	<label for="type" class="control-label required">{{__('loại bất động sản')}}</label>
							                	<div class="row">
							                		<div class="col-md-6">
									                    <div class="form-group">
									                    	<select name="sl1" id="sl1" class="form-control required">
									                    		<option value="thấp tầng">{{__('thấp tầng')}}</option>
									                    		<option value="cao tầng">{{__('cao tầng')}}</option>
									                    		<option value="bất động sản khác">{{__('bất động sản khác')}}</option>
									                    	</select>
									                    </div>
									                </div>
									                <div class="col-md-6">
									                    <div class="form-group">
									                    	<select name="sl2" id="sl2" class="form-control required">
									                    		<option value="biệt thự">{{__('biệt thự')}}</option>
									                    		<option value="song lập">{{__('song lập')}}</option>
									                    		<option value="tứ lập">{{__('tứ lập')}}</option>
									                    		<option value="liền kề">{{__('liền kề')}}</option>
									                    		<option value="đơn lập">{{__('đơn lập')}}</option>
									                    		<option value="shophouse">{{__('shophouse')}}</option>
									                    		<option value="shop chân đế">{{__('shop chân đế')}}</option>
									                    		<option value="thương mại dịch vụ">{{__('thương mại dịch vụ')}}</option>
									                    		<option value="căn hộ chung cư">{{__('căn hộ chung cư')}}</option>
									                    	</select>
									                    </div>
									                </div>
									                <input type="text" name="lbds" class="hidden kgbds">
								                </div>
							                </div>
							                <div class="col-md-12 pb20">
							                    <div class="form-group">
							                    	<label class="control-label required">{{__('tên bất động sản')}}</label>
								                    <input id="tbds" name="tbds" class="form-control required" required="required" type="text" placeholder="{{__('biệt thự 3 tầng ...')}}">
												</div>
							                </div>
							                <div class="col-md-12 pb20">
							                	<div class="faq_according">
													<div class="accordion" id="accordionExample">
													  	<div class="card">
														    <div class="card-header " id="headingOne">
														    	<div class="row justify-content-center">
															    	<div class="col-md-4">
																    	<h2 class="mb-0">
																        	<button class="btn btn-link text-center" style="width: 100%;" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
																        		{{__('thông tin chi tiết')}}
																        		<i class='bx bx-down-arrow-circle bx-flashing' ></i>
																    		</button>
																    		
																   		</h2>
																   	</div>
																</div>
														    </div>
														    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample" style="">
															    <div class="card-body">
															    	<div class="row pb20">
															        	<div class="col-md-6 ">
														                    <div class="form-group">
														                    	<label class="control-label">{{__('diện tích')}}</label>
															                    <input id="dt" style="position: relative;" oninput="replaceValue('dt');" name="dt" class="form-control required" type="text" placeholder="{{__('nhập dữ liệu')}}">
															                    <span class="vnd">M&#178;</span>
																			</div>
														                </div>
														                <div class="col-md-6 ">
														                    <div class="form-group">
														                    	<label class="control-label">{{__('mặt tiền')}}</label>
															                    <input id="mt" style="position: relative;" oninput="replaceValue('mt');" name="mt" class="form-control required" type="text" placeholder="{{__('nhập dữ liệu')}}">
															                    <span class="vnd">M</span>
																			</div>
														                </div>
														            </div>
														            <div class="row pb20">
												                		<div class="col-md-4">
														                    <div class="form-group">
														                    	<label class=" control-label">{{__('nội thất')}}</label>
														                    	
														                    	<select name="nt" id="nt" class="form-control required">
														                    		<option value="nội thất cơ bản">{{__('nội thất cơ bản')}}</option>
														                    		<option value="nội thất liền tường">{{__('nội thất liền tường')}}</option>
														                    		<option value="full nội thất">{{__('full nội thất')}}</option>
														                    		<option value="nhà xây thô">{{__('nhà xây thô')}}</option>
														                    		<option value="nhà xây thô hoàn thiện mặt ngoài">{{__('nhà xây thô hoàn thiện mặt ngoài')}}</option>
														                    	</select>
														                    </div>
														                </div>
														                <div class="col-md-4">
														                    <div class="form-group">
														                    	<label class=" control-label">{{__('tầng hầm')}}</label>
														                    	
														                    	<select name="th" id="th" class="form-control required">
														                    		<option value="có tầng hầm">{{__('có tầng hầm')}}</option>
														                    		<option value="không có tầng hầm">{{__('không có tầng hầm')}}</option>
														                    		
														                    	</select>
														                    </div>
														                </div>
														                <div class="col-md-4">
														                    <div class="form-group">
														                    	<label class=" control-label">{{__('hướng')}}</label>
														                    	
														                    	<select name="huong" class="form-control required">
								                                                    <option value="Tây, Nam">{{__('Tây Nam')}}</option>
								                                                    <option value="Tây, Bắc">{{__('Tây Bắc')}}</option>
								                                                    <option value="Tây Nam - Tây Bắc">{{__('Tây Nam - Tây Bắc')}}</option>
								                                                    <option value="Tây Bắc - Đông Bắc">{{__('Tây Bắc - Đông Bắc')}}</option>
								                                                    <option value="Tây Bắc">{{__('Tây Bắc')}}</option>
								                                                    <option value="Đông Nam- Đông Bắc">{{__('Đông Nam - Đông Bắc')}}</option>
								                                                    <option value="Đông Nam">{{__('Đông Nam')}}</option>
								                                                    <option value="Đông Nam- Tây Nam">{{__('Đông Nam - Tây Nam')}}</option>
								                                                    <option value="Đông Bắc">{{__('Đông Bắc')}}</option>
								                                                    <option value="Chính Tây">{{__('Chính Tây')}}</option>
								                                                    <option value="Chính Nam">{{__('Chính Nam')}}</option>
								                                                    <option value="Chính Đông">{{__('Chính Đông')}}</option>
								                                                    <option value="Chính Bắc">{{__('Chính Bắc')}}</option>
								                                       			</select>
														                    </div>
														                </div>
														                
													                </div>
														            <div class="row pb20">
												                		<div class="col-md-4">
														                    <div class="form-group">
														                    	<label class=" control-label">{{__('phòng ngủ')}}</label>
														                    	
														                    	<select name="pn" id="pn" class="form-control required">
														                    		<option value="1PN">{{__('1PN')}}</option>
														                    		<option value="1PN+1">{{__('1PN+1')}}</option>
														                    		<option value="2PN">{{__('2PN')}}</option>
														                    		<option value="2PN+1">{{__('2PN+1')}}</option>
														                    		<option value="3PN">{{__('3PN')}}</option>
														                    		<option value="3PN+1">{{__('3PN+1')}}</option>
														                    		<option value="4PN">{{__('4PN')}}</option>
														                    		<option value="5PN">{{__('5PN')}}</option>
														                    		<option value="Dual Key">{{__('Dual Key')}}</option>
														                    		<option value="Studio">{{__('Studio')}}</option>
														                    	</select>
														                    </div>
														                </div>
														                <div class="col-md-4">
														                    <div class="form-group">
														                    	<label class=" control-label">{{__('nhà vệ sinh')}}</label>
														                    	
														                    	<select name="vs" id="vs" class="form-control required">
														                    		<option value="1">1 {{__('NVS')}}</option>
														                    		<option value="2">2 {{__('NVS')}}</option>
														                    		<option value="3">3 {{__('NVS')}}</option>
														                    		<option value="4">4 {{__('NVS')}}</option>
														                    		<option value="5">5 {{__('NVS')}}</option>
														                    	</select>
														                    </div>
														                </div>
														                <div class="col-md-4">
														                    <div class="form-group">
														                    	<label class="control-label">{{__('số tầng')}}</label>
														                    	
														                    	<input id="st" name="st" class="form-control required" type="nunber" placeholder="{{__('nhập dữ liệu')}}">
														                    </div>
														                </div>
													                </div>
													                <div class="row ">
														                <div class="col-sm-12 pb20">
												                            <div class="form-group">
												                            	<label class="control-label">{{__('thông tin mô tả')}}</label>
												                                <textarea id="content" name="content" class="form-control required" rows="8" placeholder="{{__('nhập dữ liệu')}}"></textarea>
												                            </div>
														                    
														                </div>
													                </div>
													                <div class="row pb20">
													                	<div class="col-md-12">
													                		<div class="widget meta-boxes">
												            			        <div class="widget-title">
												            			            <h4>
												            			                <span>{{__('ảnh bất động sản')}}</span>
												            			            </h4>
												            			            <button style="float: right;" type="button" onclick="more_image()" value="plus" class="btn btn-info add-more-image">
												            			                <i class="fa fa-plus pr10"></i>{{__('thêm ảnh')}}
												            			            </button>
												            			        </div>
												            			        <div class="widget-body">
												            			            <div class="product-images-wrapper">
												            			    
												            			        		<div class="images-wrapper">
												            			        			<div class="row pt30" id="more_image" style="display: flex;">
												            			        				
												            			        				<div class="col-md-3 col-xs-3 file" file="1" style="width:33%">
												                                                    <div class="file-upload">   
												                                                        <div class="file-upload-content file-upload-content1" style="position: relative;">
												                                                            <img width="100%" class="file-upload-image file-upload-image1" src="{{asset('uploads/images/icon-image.gif')}}" alt="your image" />
												                                                            <div class="image-title-wrap image-title-wrap1" style="position: absolute;top: 0px; right: 0px; width: 100%;height: 100%">
												                                                                <button style="width: 100%; height: 100%; background: #3e4c66 ; color: #fff;" type="button" onclick="removeUploadTest(1)" class="remove-image"><i class='bx bx-image-add' style='color:#ffffff; font-size: 50px;' ></i></button>
												                                                            </div>
												                                                            <input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input1" type='file' file="1" id="images" name="images[]" onchange="renderImageUploads(this,1);" accept="image/*" multiple/>
												                                                            
												                                                        </div>
												                                                    </div>
												                                                </div>
												                                                
												            			        				
												            			        			</div>

												            			        
												            			        
												            			    			</div>
												            						</div>

												            			        </div>
												            			    </div>
													                	</div>
													                </div>
													                <div class="row">
														                <div class="col-md-12 pb20">
														                    <div class="form-group">
														                    	<label class="control-label">{{__('video bđs')}}</label>
															                    <input id="tbds" name="video" class="form-control required" required="required" type="text" placeholder="{{__('nhập dữ liệu')}}">
																			</div>
														                </div>
														            </div>
														            
			                                                            <div class="row">
			                                                                <div class="col-lg-12">
			                                                                    <label class="control-label">{{__('tiện ích thiết bị')}}</label>
			                                                                </div>
			                                                                <div class="col-md-4">
			                                                                    <ul class="ui_kit_checkbox selectable-list">
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="tulanh" class="custom-control-input" id="customCheck1">
			                                                                                <label class="custom-control-label" for="customCheck1">{{__('Tủ lạnh')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                        <br>
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="bontam" class="custom-control-input" id="customCheck2">
			                                                                                <label class="custom-control-label" for="customCheck2">{{__('Bồn tắm')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                        <br>
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="wifi" class="custom-control-input" id="customCheck3">
			                                                                                <label class="custom-control-label" for="customCheck3">{{__('Wifi')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                        <br>
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" name="1" name="baove" class="custom-control-input" id="customCheck12">
			                                                                                <label class="custom-control-label" for="customCheck12">{{__('Bảo vệ')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                    </ul>
			                                                                </div>
			                                                                <div class="col-md-4">
			                                                                    <ul class="ui_kit_checkbox selectable-list">
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="binhnonglanh" class="custom-control-input" id="customCheck4">
			                                                                                <label class="custom-control-label" for="customCheck4">{{__('Bình nóng lạnh')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                        <br>
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="beboi" class="custom-control-input" id="customCheck5">
			                                                                                <label class="custom-control-label" for="customCheck5">{{__('Bể bơi')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                        <br>
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="bancongsanthuong" class="custom-control-input" id="customCheck6">
			                                                                                <label class="custom-control-label" for="customCheck6">{{__('Ban công/Sân thượng')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                        <br>
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="gym" class="custom-control-input" id="customCheck11">
			                                                                                <label class="custom-control-label" for="customCheck11">{{__('Gym')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                        <br>
			                                                                    </ul>
			                                                                </div>
			                                                                <div class="col-md-4">
			                                                                    <ul class="ui_kit_checkbox selectable-list">
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="banghephongan" class="custom-control-input" id="customCheck7">
			                                                                                <label class="custom-control-label" for="customCheck7">{{__('Bàn ghế phòng ăn')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                        <br>
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="banghephongkhach" class="custom-control-input" id="customCheck8">
			                                                                                <label class="custom-control-label" for="customCheck8">{{__('Bàn ghế phòng khách')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                        <br>
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="chodexemay" class="custom-control-input" id="customCheck9">
			                                                                                <label class="custom-control-label" for="customCheck9">{{__('Chỗ để xe máy')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                        <br>
			                                                                        <li>
			                                                                            <div class="custom-control custom-checkbox">
			                                                                                <input type="checkbox" value="1" name="chodeoto" class="custom-control-input" id="customCheck10">
			                                                                                <label class="custom-control-label" for="customCheck10">{{__('Chỗ để oto')}}</label>
			                                                                            </div>
			                                                                        </li>
			                                                                    </ul>
			                                                                </div>
			                                                                
			                                                                
			                                                            </div>
			                                                            <div class="row pt0-xsd">
			                                                                <div class="col-lg-11 col-xl-10">
			                                                                    <ul class="apeartment_area_list mb0">
			                                                                        
			                                                                        <!-- <li class="list-inline-item">
			                                                                            <div class="candidate_revew_select">
			                                                                                <select class="selectpicker w100 show-tick" name="area">
			                                                                                    <option>{{__('diện tích')}}</option>
			                                                                                    <option>50-100 m2</option>
			                                                                                    <option>100-150 m2</option>
			                                                                                    <option>150-200m2</option>
			                                                                                    
			                                                                                </select>
			                                                                            </div>
			                                                                        </li> -->
			                                                                        
			                                                                    </ul>
			                                                                </div>
			                                                                
			                                                            </div>
			                                                        
															    </div>
														    </div>
													    </div>
													    
													</div>
												</div>
							                	
							                </div>
							                <div class="col-md-12 pb30">
								                <div class="row justify-content-center">
								                	<div class="col-md-4">
									                	<div class="form-group mb0">
										                    <button style="width: 100%" onclick="showloading()" type="submit" type="button" class="btn btn-lg btn-thm">{{__('ký gửi')}}</button>
									                    </div>
									                </div>
								                </div>
								            </div>
						                </div>
						            </form>
							    </div>
							    <div id="item2-tab" class="container tab-pane fade">
									<form class="contact_form" id="contact_form" name="contact_form" action="{{URL::route('addYeucau')}}" method="post" novalidate="novalidate">
										{{ csrf_field() }}
										<div class="row">
							                <div class="col-md-12 pb20 pt20">
							                	<label for="lyc" class="control-label required">{{__('loại yêu cầu bđs')}}</label>
							                    <div class="ui_kit_radiobox">
													<div class="radio">
														<input id="radio_3" value="cần mua" name="lyc" type="radio" checked="">
														<label for="radio_3"><span class="radio-label"></span>{{__('cần mua')}}</label>
													</div>
													<div class="radio">
														<input id="radio_4" value="cần thuê" name="lyc" type="radio">
														<label for="radio_4"><span class="radio-label"></span>{{__('cần thuê')}}</label>
													</div>
													
												</div>
							                </div>
							                
							                <div class="col-md-12 pb20">
							                    <div class="form-group">
							                    	<label class=" control-label">{{__('khu vực')}}</label>
							                    	<select name="kv" class="form-control required" >
				                                        <option value="" selected="">--{{__('chọn khu vực')}}--</option>
					                                    <option value="Hồ Chí Minh">Hồ Chí Minh</option>
					                                    <option value="Ninh Thuận">Ninh Thuận</option>
					                                    <option value="Khánh Hòa">Khánh Hòa</option>
					                                    <option value="Bình Phước">Bình Phước</option>
					                                    <option value="Điện Biên">Điện Biên</option>
					                                    <option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
					                                    <option value="Hòa Bình">Hoà Bình</option>
					                                    <option value="Trà Vinh">Trà Vinh</option>
					                                    <option value="Hưng Yêu">Hưng Yên</option>
					                                    <option value="Sóc Trăng">Sóc Trăng</option>
					                                    <option value="Tiền Giang">Tiền Giang</option>
					                                    <option value="Cần Thơ">Cần Thơ</option>
					                                    <option value="Lào Cai">Lào Cai</option>
					                                    <option value="Bạc Liêu">Bạc Liêu</option>
					                                    <option value="An Giang">An Giang</option>
					                                    <option value="Long An">Long An</option>
					                                    <option value="Lạng Sơn">Lạng Sơn</option>
					                                    <option value="Ninh Bình">Ninh Bình</option>
					                                    <option value="Phú Yên">Phú Yên</option>
					                                    <option value="Hậu Giang">Hậu Giang</option>
					                                    <option value="Tây Ninh">Tây Ninh</option>
					                                    <option value="Bình Dương">Bình Dương</option>
					                                    <option value="Bến Tre">Bến Tre</option>
					                                    <option value="Bắc Cạn">Bắc Kạn</option>
					                                    <option value="Nam Định">Nam Định</option>
					                                    <option value="Tuyên Quang">Tuyên Quang</option>
					                                    <option value="Đà Nẵng">Đà Nẵng</option>
					                                    <option value="Kiên Giang">Kiên Giang</option>
					                                    <option value="Nghệ An">Nghệ An</option>
					                                    <option value="Đồng Tháp">Đồng Tháp</option>
					                                    <option value="Thái Nguyên">Thái Nguyên</option>
					                                    <option value="Hà Nam">Hà Nam</option>
					                                    <option value="Quảng Nam">Quảng Nam</option>
					                                    <option value="Thanh Hóa">Thanh Hóa</option>
					                                    <option value="Hà Nội">Hà Nội</option>
					                                    <option value="Vĩnh Phúc">Vĩnh Phúc</option>
					                                    <option value="Đắc Lắc">Đắk Lắk</option>
					                                    <option value="Phú Thọ">Phú Thọ</option>
					                                    <option value="Bình Thuận">Bình Thuận</option>
					                                    <option value="Lai Châu">Lai Châu</option>
					                                    <option value="Vĩnh Long">Vĩnh Long</option>
					                                    <option value="Cao Bằng">Cao Bằng</option>
					                                    <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu</option>
					                                    <option value="Hà Giang">Hà Giang</option>
					                                    <option value="Yên Bái">Yên Bái</option>
					                                    <option value="Đồng Nai">Đồng Nai</option>
					                                    <option value="Hà Tĩnh">Hà Tĩnh</option>
					                                    <option value="Gia Lai">Gia Lai</option>
					                                    <option value="Kon Tum">Kon Tum</option>
					                                    <option value="Hải Phòng">Hải Phòng</option>
					                                    <option value="Quảng Ninh">Quảng Ninh</option>
					                                    <option value="Cà Mau">Cà Mau</option>
					                                    <option value="Quảng Trị">Quảng Trị</option>
					                                    <option value="Bắc Giang">Bắc Giang</option>
					                                    <option value="Lâm Đồng">Lâm Đồng</option>
					                                    <option value="Thái Bình">Thái Bình</option>
					                                    <option value="Quảng Ngãi">Quảng Ngãi</option>
					                                    <option value="Bình Định">Bình Định</option>
					                                    <option value="Sơn La">Sơn La</option>
					                                    <option value="Hải Dương">Hải Dương</option>
					                                    <option value="Đăk Nông">Đắk Nông</option>
					                                    <option value="Quảng Bình">Quảng Bình</option>
					                                    <option value="Bắc Ninh">Bắc Ninh</option>
					                                </select>
							                    </div>
							                </div>
							                <div class="col-md-12 pb20">
							                    <div class="form-group">
							                    	<label class="control-label">{{__('dự án')}}</label>
								                    <input id="da" required name="da" max="190" class="form-control" type="text" placeholder="{{__('The Pavilion - Vinhomes Ocean Park')}}">
												</div>
							                </div>
							                
							                	
					                		<div class="col-md-12 pb20">
							                	<label for="type" class="control-label required">{{__('loại bất động sản')}}</label>
							                	<div class="row">
							                		<div class="col-md-6">
									                    <div class="form-group">
									                    	<select name="sl3" id="sl3" class="form-control required">
									                    		<option value="thấp tầng">{{__('thấp tầng')}}</option>
									                    		<option value="cao tầng">{{__('cao tầng')}}</option>
									                    		<option value="bất động sản khác">{{__('bất động sản khác')}}</option>
									                    	</select>
									                    </div>
									                </div>
									                <div class="col-md-6">
									                    <div class="form-group">
									                    	<select name="sl4" id="sl4" class="form-control required">
									                    		<option value="biệt thự">{{__('biệt thự')}}</option>
									                    		<option value="song lập">{{__('song lập')}}</option>
									                    		<option value="tứ lập">{{__('tứ lập')}}</option>
									                    		<option value="liền kề">{{__('liền kề')}}</option>
									                    		<option value="đơn lập">{{__('đơn lập')}}</option>
									                    		<option value="shophouse">{{__('shophouse')}}</option>
									                    		<option value="shop chân đế">{{__('shop chân đế')}}</option>
									                    		<option value="thương mại dịch vụ">{{__('thương mại dịch vụ')}}</option>
									                    	</select>
									                    </div>
									                </div>
									                <input type="text" name="lbds" class="hidden ycbds">
								                </div>
							                </div>
							                
					                		<div class="col-md-6 pb20">
							                    <div class="form-group">
							                    	<label class=" control-label">{{__('mức giá')}}</label>
							                    	
							                    	<select name="price" id="price" class="form-control required">
							                    		<option value="" selected="">--{{__('chọn mức giá')}}--</option>
							                    		<option value="500 triệu - 1 tỷ">{{__('500 triệu - 1 tỷ')}}</option>
							                    		<option value="1 tỷ - 1,5 tỷ">{{__('1 tỷ - 1,5 tỷ')}}</option>
							                    		<option value="1,5 tỷ - 2 tỷ">{{__('1,5 tỷ - 2 tỷ')}}</option>
							                    		<option value="2 tỷ - 2,5 tỷ">{{__('2 tỷ - 2,5 tỷ')}}</option>
							                    		<option value="2,5 tỷ - 3 tỷ">{{__('2,5 tỷ - 3 tỷ')}}</option>
							                    		<option value="3 tỷ - 3,5 tỷ">{{__('3 tỷ - 3,5 tỷ tỷ')}}</option>
							                    		<option value="3,5 tỷ - 4 tỷ">{{__('3,5 tỷ - 4 tỷ')}}</option>
							                    		<option value="trên 4 tỷ">{{__('trên 4 tỷ')}}</option>
							                    	</select>
							                    </div>
							                </div>
							                <div class="col-md-6 pb20">
							                    <div class="form-group">
							                    	<label class=" control-label">{{__('diện tích')}}</label>
							                    	
							                    	<select name="dt" id="dt" class="form-control required">
							                    		<option value="" selected="">--{{__('chọn diện tích')}}--</option>
							                    		<option value="dưới 50 m2">{{__('dưới 50 m2')}}</option>
							                    		<option value="50 - 100 m2">{{__('50 - 100 m2')}}</option>
							                    		<option value="100 - 150 m2">{{__('100 - 150 m2')}}</option>
							                    		<option value="150 - 200 m2">{{__('150 - 200 m2')}}</option>
							                    		<option value="trên 200 m2">{{__('trên 200 m2')}}</option>
							                    	</select>
							                    </div>
							                </div>
							                <div class="col-md-12 pb20">
							                    <div class="form-group">
							                    	<label class=" control-label required">{{__('hướng')}}</label>
							                    	
							                    	<select name="huong" class="form-control required">
	                                                    <option value="Tây, Nam">{{__('Tây Nam')}}</option>
	                                                    <option value="Tây, Bắc">{{__('Tây Bắc')}}</option>
	                                                    <option value="Tây Nam - Tây Bắc">{{__('Tây Nam - Tây Bắc')}}</option>
	                                                    <option value="Tây Bắc - Đông Bắc">{{__('Tây Bắc - Đông Bắc')}}</option>
	                                                    <option value="Tây Bắc">{{__('Tây Bắc')}}</option>
	                                                    <option value="Đông Nam- Đông Bắc">{{__('Đông Nam - Đông Bắc')}}</option>
	                                                    <option value="Đông Nam">{{__('Đông Nam')}}</option>
	                                                    <option value="Đông Nam- Tây Nam">{{__('Đông Nam - Tây Nam')}}</option>
	                                                    <option value="Đông Bắc">{{__('Đông Bắc')}}</option>
	                                                    <option value="Chính Tây">{{__('Chính Tây')}}</option>
	                                                    <option value="Chính Nam">{{__('Chính Nam')}}</option>
	                                                    <option value="Chính Đông">{{__('Chính Đông')}}</option>
	                                                    <option value="Chính Bắc">{{__('Chính Bắc')}}</option>
	                                       			</select>
							                    </div>
							                </div>
								            <div class="col-md-12 pb20">
							                	<label for="type" class="control-label required">{{__('thông tin người yêu cầu')}}</label>
							                	<div class="row">
							                		<div class="col-md-4">
									                    <div class="form-group">
									                    	<label class="required">{{__('họ tên')}}</label>
									                    	<input id="name" name="name" class="form-control required" required="required" type="text" placeholder="{{__('họ tên')}}">
									                    </div>
									                </div>
									                <div class="col-md-4">
									                    <div class="form-group">
									                    	<label class="required">{{__('số điện thoại')}}</label>
									                    	<input id="phone" name="phone" class="form-control required" required="required" type="number" placeholder="{{__('nhập số điện thoại')}}">
									                    </div>
									                </div>
									                <div class="col-md-4">
									                    <div class="form-group">
									                    	<label>{{__('email')}}</label>
									                    	<input id="email" name="email" class="form-control required" type="email" placeholder="{{__('email')}}">
									                    </div>
									                </div>
								                </div>
							                </div>    
							                <div class="col-sm-12 pb20">
					                            <div class="form-group">
					                            	<label class="control-label">{{__('ghi chú')}}</label>
					                                <textarea id="message" name="message" class="form-control required" rows="8" placeholder="{{__('ghi chú')}}"></textarea>
					                            </div>
							                    
							                </div>
							                
							                
							                <div class="col-md-12 pb30">
								                <div class="row justify-content-center">
								                	<div class="col-md-4">
									                	<div class="form-group mb0">
										                    <button style="width: 100%" onclick="showloading()" type="submit" class="btn btn-lg btn-thm">{{__('gửi yêu cầu')}}</button>
									                    </div>
									                </div>
								                </div>
								            </div>
						                </div>
						            </form>
							    </div>
							    
							</div>
						</div>
					</div>
				
				</div>
				<div class="col-lg-5 col-xl-4">
					@include('front-end.layout.info')
				</div>
			</div>
		</div>
		
	</section>

@endsection
@section('js')
	<script src="{{asset('js/upload-image.js')}}"></script>
    <script type="text/javascript">
    	$(document).ready(function() {
        	$('.preloader2').hide();
	    });
		function showloading(){
            $('.preloader2').show();
        }
		function more_image(){
			var i = parseInt($("input[type=file]").length);
			i=i+1;
			var more_image = $("#more_image");
			more_image.append('<div class="col-md-3 col-xs-3 file" file="'+i+'" style="width:33%" ><div class="file-upload"><div class="file-upload-content file-upload-content'+i+'" style="position: relative;"><img width="100%" class="file-upload-image file-upload-image'+i+'" src="{{asset("uploads/images/icon-image.gif")}}" alt="your image" /><div class="image-title-wrap image-title-wrap'+i+'" style="position: absolute;top: 0px; right: 0px; width: 100%;height: 100%"><button style="width: 100%; height: 100%; background: #3e4c66 ; color: #fff;" type="button" onclick="removeUploadTest('+i+')" class="remove-image"><i class="bx bx-image-add " style="color:#ffffff; font-size: 50px;" ></i></button></div><input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input'+i+'" type="file" file="'+i+'" id="images" name="images[]" onchange="renderImageUploads(this,'+i+');" accept="image/*" multiple/></div></div></div>');
			i++;
		};
		function kgbds(){
			var sl1 = $("select[name=sl1]").val();
			var sl2 = $("select[name=sl2]").val();
			$("input.kgbds").val(sl1+','+sl2);
			$("input.kgbds").attr('value',sl1+','+sl2);
			
		}
		function ycbds(){
			var sl3 = $("select[name=sl3]").val();
			var sl4 = $("select[name=sl4]").val();
			$("input.ycbds").val(sl3+','+sl4);
			$("input.ycbds").attr('value',sl3+','+sl4);
			
		}
		$("select[name=sl1]").on('change', function() {
		  	kgbds();
		});
		$("select[name=sl2]").on('change', function() {
		  	kgbds();
		});
		$("select[name=sl3]").on('change', function() {
		  	ycbds();
		});
		$("select[name=sl4]").on('change', function() {
		  	ycbds();
		});
		$(document).ready(function(){
			kgbds();
			ycbds();
		});
	</script>

@endsection