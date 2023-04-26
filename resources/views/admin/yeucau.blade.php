
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
            
        
                            <li class="breadcrumb-item"><a href="{{URL::route('yeucaus')}}">Yêu cầu BĐS</a></li>
            
        
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
                        <form method="POST" action="{{URL::route('postEditYeucau',$yeucau->id)}}" enctype="multipart/form-data" accept-charset="UTF-8" id="form_1aa3f76ebce588e61c3b18ff42edfa1a">
                            
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
								<p>Thời gian: <i>{{$yeucau->created_at}}</i></p>
								<p>Họ tên: <i>{{$yeucau->name}}</i></p>
								<p>Email: <i><a href="mailto:{{$yeucau->email}}">{{$yeucau->email}}</a></i></p>
								<p>Điện thoại: <i> <a href="tel:{{$yeucau->phone}}">{{$yeucau->phone}}</a> </i></p>
								<p>Loại yêu cầu: <i>{{$yeucau->lyc}}</i></p>
								<p>Dự án: <i>{{$yeucau->da}}</i></p>
								
								
							</div>
							<div class="col-md-4 kygui-info">
								<p>Loại BĐS: <i>{{$yeucau->lbds}} m2</i></p>
								<p>Diện tích: <i>{{$yeucau->dt}} m</i></p>
								<p>Giá: <i>{{$yeucau->price}}</i></p>
								<p>Khu vực: <i>{{$yeucau->kv}}</i></p>
								<p>Hướng: <i>{{$yeucau->huong}}</i></p>
								<p>Message:</p>
								<pre class="message-content">{{$yeucau->message}}</pre>
								
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
            
        
                            <li class="breadcrumb-item"><a href="{{URL::route('yeucaus')}}">Yêu cầu BĐS</a></li>
            
        
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
						        	@if($yeucau->status == 0)
							            <option selected value="0">Chưa xem</option>
							            <option value="1">Đã xem</option>
							            <option value="2">Đã liên hệ</option>
							        @elseif($yeucau->status == 1)
							        	<option value="0">Chưa xem</option>
							            <option selected value="1">Đã xem</option>
							            <option value="2">Đã liên hệ</option>
							        @else($yeucau->status == 2)
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