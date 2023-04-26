@extends('front-end.layout.default')
@section('meta')
		
	<title>Liên Hệ</title>
	<meta name="description" content="">
	<meta name="keywords" content=""/>		
	<meta name='revisit-after' content='1 days' />
	<link rel="icon" href="" type="image/x-icon" />
	<meta property="og:type" content="website">
	<meta property="og:title" content="">
	<meta property="og:image" content="">
	<meta property="og:image:secure_url" content="">
	<meta property="og:description" content="">
	<meta property="og:url" content="">
	<meta property="og:site_name" content="">
@endsection

@section('content')
	@if( Session::has('flash_message'))
		<p style="display: none;" class="contact-success">{{ Session::get('flash_message')}}</p>
	@endif	
	<!-- Inner Page Breadcrumb -->
	<section class="inner_page_breadcrumb">
		<div class="container">
			<div class="row">
				<div class="col-xl-6">
					<div class="breadcrumb_content">
						<ol class="breadcrumb">
						    <li class="breadcrumb-item"><a href="/">{{__('trang chủ')}}</a></li>
						    <li class="breadcrumb-item active" aria-current="page">{{__('liên hệ')}}</li>
						</ol>
						<h1 class="breadcrumb_title">{{__('Liên Hệ Với Chúng Tôi')}}</h1>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Our Contact -->
	<section class="our-contact pb0 bgc-f7">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 col-xl-6">
					<div class="form_grid">
						<h4 class="mb5">{{__('Gửi Yêu Cầu Hỗ Trợ Tư Vấn')}}</h4>
						
			            <form class="contact_form" id="contact_form" name="contact_form" action="{{URL::route('addContact')}}" method="post" novalidate="novalidate">
			            	{{ csrf_field() }}
							<div class="row">
				                <div class="col-md-6">
				                    <div class="form-group">
										<input id="form_name" name="name" class="form-control" required="required" type="text" placeholder="{{__('họ tên')}}">
									</div>
				                </div>
				                <div class="col-md-6">
				                    <div class="form-group">
				                    	<input id="form_phone" name="phone" class="form-control required phone" required="required" type="number" placeholder="{{__('điện thoại')}}">
				                    </div>
				                </div>
				                <div class="col-md-12">
				                    <div class="form-group">
				                    	<input id="form_email" name="email" class="form-control required email" type="email" placeholder="{{__('email')}}">
				                    </div>
				                </div>
				                
				                <div class="col-md-6" style="display: none;">
				                    <div class="form-group">
					                    <input id="form_da" name="da" class="form-control required" type="text" placeholder="{{__('dự án')}}">
									</div>
				                </div>
				                <div class="col-sm-12">
		                            <div class="form-group">
		                                <textarea id="form_message" name="message" class="form-control required" rows="3" required="required" placeholder="{{__('ghi chú')}}"></textarea>
		                            </div>
				                    <div class="form-group mb0">
					                    <button type="submit" class="btn btn-lg btn-thm">{{__('Gửi Yêu Cầu')}}</button>
				                    </div>
				                </div>
			                </div>
			            </form>
					</div>
				</div>
				<div class="col-lg-5 col-xl-6">
					@include('front-end.layout.info')
				</div>
			</div>
		</div>
		<div class="container-fluid p0 mt50">
			<div class="row">
				<div class="col-lg-12">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.526566493952!2d105.78380561526713!3d21.011606686007568!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135adfb3008f899%3A0x975dad8ec314e603!2sVinhomes%20Westpoint%20W1building!5e0!3m2!1svi!2s!4v1634511963934!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
				</div>
			</div>
		</div>
	</section>

@endsection