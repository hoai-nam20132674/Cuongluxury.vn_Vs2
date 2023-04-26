
@extends('admin.layout.default')
@section('css')
	<link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/fontawesome.min.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/simple-line-icons.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/select2.min.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/select2-bootstrap.min.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/pace-theme-minimal.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/toastr.min.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/jquery.mCustomScrollbar.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/bootstrap-datepicker3.min.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/spectrum.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/jquery.fancybox.min.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/core.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/default.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/slug.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/seo-helper.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/upload-image.css')}}">
    <style type="text/css">
    	.message-content{
    		word-wrap: break-word;
		    background: rgba(0,0,0,.05);
		    border-radius: 5px;
		    font-family: Roboto,sans-serif;
		    padding: 15px;
		    white-space: pre-wrap;
    	}
    	.kygui-info p{
    		font-weight: 800;
    	}
    	.kygui-info p i{
    		font-weight: 400;
    	}
    </style>
@endsection
@section('content')
	<div class="page-content ">
                    <ol class="breadcrumb">
        
                            <li class="breadcrumb-item"><a href="{{URL::route('home')}}">Bảng điều khiển</a></li>
            
        
                            <li class="breadcrumb-item"><a href="{{URL::route('kyguis')}}">Ký gửi BĐS</a></li>
            
        
                            <li class="breadcrumb-item active">Chi tiết</li>
            
            </ol>


                    <div class="clearfix"></div>
                    <div id="main">
                    	@if( Session::has('flash_message'))
				            <div class="note note-{{ Session::get('flash_level')}}">
				                <p>{{ Session::get('flash_message')}}</p>
				            </div>
				        @endif
				        @if( count($errors) > 0)
				            
				            @foreach($errors->all() as $error)
				                <div class="note note-danger">
				                    <p>{{$error}}</p>
				                </div>
				            @endforeach
				                
				        @endif
                        <form method="POST" action="{{URL::route('postEditKygui',$kygui->id)}}" enctype="multipart/form-data" accept-charset="UTF-8" id="form_1aa3f76ebce588e61c3b18ff42edfa1a">
                            
                            <input type="hidden" name="_token" value="{{ csrf_token()}}">
    
        <div class="row">
        <div class="col-md-9">
                <div class="widget meta-boxes" style="&quot;margin-top:" 0&quot;="">
					<div class="widget-title">
						<h4>
						<span>Thông tin yêu cầu ký gửi BĐS</span>
						</h4>
					</div>
					<div class="widget-body">
						<div class="row">
							<div class="col-md-4 kygui-info">
								<p>Thời gian: <i>{{$kygui->created_at}}</i></p>
								<p>Họ tên: <i>{{$kygui->name}}</i></p>
								<p>Email: <i><a href="mailto:{{$kygui->email}}">{{$kygui->email}}</a></i></p>
								<p>Điện thoại: <i> <a href="tel:{{$kygui->phone}}">{{$kygui->phone}}</a> </i></p>
								<p>Loại ký gửi: <i>{{$kygui->lkg}}</i></p>
								<p>Loại BĐS: <i>{{$kygui->lbds}}</i></p>
								<p>Dự án: <i>{{$kygui->da}}</i></p>
								<p>Giá: <i>{{$kygui->price}} {{$kygui->tiente}}</i></p>
								<p>Tên BĐS: <i>{{$kygui->tbds}}</i></p>
								
							</div>
							<div class="col-md-4 kygui-info">
								<p>Diện tích: <i>{{$kygui->dt}} m2</i></p>
								<p>Mặt tiền: <i>{{$kygui->mt}} m</i></p>
								<p>Nội thất: <i>{{$kygui->nt}}</i></p>
								<p>Tầng hầm: <i>{{$kygui->th}}</i></p>
								<p>Phòng ngủ: <i>{{$kygui->pn}}</i></p>
								<p>Nhà vệ sinh: <i>{{$kygui->vs}}</i></p>
								<p>Số tầng: <i>{{$kygui->st}}</i></p>
								<p>Hướng: <i>{{$kygui->huong}}</i></p>
								<p>Video: <i><a href="{{$kygui->video}}">{{$kygui->video}}</a></i></p>
							</div>
							<div class="col-md-4 kygui-info">
								<p>Tủ lạnh: <i>@if($kygui->tulanh ==1 ) Có @else không có @endif</i></p>
								<p>Bồn tắm: <i>@if($kygui->bontam ==1 ) Có @else không có @endif</i></p>
								<p>Wifi: <i>@if($kygui->wifi ==1 ) Có @else không có @endif</i></p>
								<p>Bảo vệ: <i>@if($kygui->baove ==1 ) Có @else không có @endif</i></p>
								<p>Bình nóng lạnh: <i>@if($kygui->binhnonglanh ==1 ) Có @else không có @endif</i></p>
								<p>Bể bơi: <i>@if($kygui->beboi ==1 ) Có @else không có @endif</i></p>
								<p>Ban công/ sân thượng: <i>@if($kygui->bancongsanthuong ==1 ) Có @else không có @endif</i></p>
								<p>Gym: <i>@if($kygui->gym ==1 ) Có @else không có @endif</i></p>
								<p>Bàn ghế phòng ăn: <i>@if($kygui->banghephongan ==1 ) Có @else không có @endif</i></p>
								<p>Bàn ghế phòng khách: <i>@if($kygui->banghephongkhach ==1 ) Có @else không có @endif</i></p>
								<p>Chỗ để xe máy: <i>@if($kygui->chodexemay ==1 ) Có @else không có @endif</i></p>
								<p>Chố để Oto: <i>@if($kygui->chodeoto ==1 ) Có @else không có @endif</i></p>
							</div>
						</div>
						
						<p>Giới thiệu:</p>
						<pre class="message-content">{{$kygui->content}}</pre>

					</div>
				</div>
				<div id="advanced-sortables" class="meta-box-sortables">
					<div id="gallery_wrap" class="widget meta-boxes">
						<div class="widget-title">
						<h4><span>Hình ảnh</span></h4>
						</div>
						<div class="widget-body">
							<div>
								<div class="list-photos-gallery">
									<div class="row" id="list-photos-items">
										@foreach($kygui->images as $image)
										<div style="margin-bottom: 10px;" class="col-md-3 col-sm-3 col-4 photo-gallery-item" data-id="0" data-img="galleries/1.jpg" data-description="Praesentium id pariatur sit explicabo. Fugiat nam dolores omnis laborum accusamus. Omnis sed voluptatem est id natus.">
											<div class="gallery_image_wrapper">
											<img width="100%" src="{{asset('uploads/images/kyguis/'.$image->url)}}" alt="Gallery item">
											</div>
										</div>
										@endforeach
									</div>
								</div>
							<div class="clearfix"></div>
							
							</div>
						</div>
					</div>
				
				</div>
            
        </div>
        <div class="col-md-3 right-sidebar">
            <div class="widget meta-boxes form-actions form-actions-default action-horizontal">
    <div class="widget-title">
        <h4>
                        <span>Xuất bản</span>
        </h4>
    </div>
    <div class="widget-body">
        <div class="btn-set">
                        <button type="submit" name="submit" value="save" class="btn btn-info">
                <i class="fa fa-save"></i> Lưu
            </button>
                            &nbsp;
            <button type="submit" name="submit" value="apply" class="btn btn-success">
                <i class="fa fa-check-circle"></i> Lưu &amp; chỉnh sửa
            </button>
                    </div>
    </div>
</div>
<div id="waypoint"></div>
<div class="form-actions form-actions-fixed-top hidden">
            <ol class="breadcrumb">
        
                            <li class="breadcrumb-item"><a href="{{URL::route('home')}}">Bảng điều khiển</a></li>
            
        
                            <li class="breadcrumb-item"><a href="{{URL::route('kyguis')}}">Ký gửi BĐS</a></li>
            
        
                            <li class="breadcrumb-item active">Chi tiết</li>
            
            </ol>


    <div class="btn-set">
                <button type="submit" name="submit" value="save" class="btn btn-info">
            <i class="fa fa-save"></i> Lưu
        </button>
                    &nbsp;
            <button type="submit" name="submit" value="apply" class="btn btn-success">
                <i class="fa fa-check-circle"></i> Lưu &amp; chỉnh sửa
            </button>
            </div>
</div>

            
                                                <div class="widget meta-boxes">
                        <div class="widget-title">
                            <h4><label for="status" class="control-label required">Trạng th&aacute;i</label></h4>
                        </div>
                        <div class="widget-body">
                            <div class="ui-select-wrapper">
						        <select class="form-control ui-select ui-select" id="status" name="status">
						        	@if($kygui->status == 0)
							            <option selected value="0">Chưa xem</option>
							            <option value="1">Đã xem</option>
							            <option value="2">Đã liên hệ</option>
							        @elseif($kygui->status == 1)
							        	<option value="0">Chưa xem</option>
							            <option selected value="1">Đã xem</option>
							            <option value="2">Đã liên hệ</option>
							        @else($kygui->status == 2)
							        	<option value="0">Chưa xem</option>
							            <option value="1">Đã xem</option>
							            <option selected value="2">Đã liên hệ</option>
							        @endif
						        </select>
							    <svg class="svg-next-icon svg-next-icon-size-16">
							        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
							    </svg>
							</div>
                        </div>
                    </div>
                   
                            
                    </div>
    </div>

            </form>
    
                        </div>
                </div>
@endsection
@section('js')
	<script src="{{asset('js/admin/respond.min.js')}}"></script>
    <script src="{{asset('js/admin/excanvas.min.js')}}"></script>
    <script src="{{asset('js/admin/ie8.fix.min.js')}}"></script>
    <script src="{{asset('js/admin/modernizr.min.js')}}"></script>
    <script src="{{asset('js/admin/select2.min.js')}}"></script>
    <script src="{{asset('js/admin/bootstrap-datepicker.min.js')}}"></script>
    <script src="{{asset('js/admin/jquery.cookie.js')}}"></script>
    <script src="{{asset('js/admin/core.js')}}"></script>
    <script src="{{asset('js/admin/toastr.min.js')}}"></script>
    <script src="{{asset('js/admin/pace.min.js')}}"></script>
    <script src="{{asset('js/admin/jquery.mCustomScrollbar.js')}}"></script>
    <script src="{{asset('js/admin/jquery.stickytableheaders.js')}}"></script>
    <script src="{{asset('js/admin/jquery.waypoints.min.js')}}"></script>
    <script src="{{asset('js/admin/spectrum.js')}}"></script>
    <script src="{{asset('js/admin/jquery.fancybox.min.js')}}"></script>
    <script src="{{asset('js/admin/js-validation.js')}}"></script>
    <script src="{{asset('js/admin/jquery.are-you-sure.js')}}"></script>
    <script src="{{asset('js/admin/slug.js')}}"></script>
    <script src="{{asset('js/admin/seo-helper.js')}}"></script>
    <script src="{{asset('js/admin/upload-image.js')}}"></script>
@endsection