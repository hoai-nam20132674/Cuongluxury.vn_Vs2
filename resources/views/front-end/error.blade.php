@extends('front-end.layout.default')

@section('head')

	    <meta name="robots" content="noodp,index,follow" />
	    <meta name="google" content="notranslate" />
	    <meta name="keywords" content="" />
	    <meta name="description" content="{{$system->description}}" />
	    <meta property="og:type" content="website" />
	    <meta name="apple-itunes-app" content="">
	    <meta name="google-play-app" content="">
	    <meta property="og:description" content="{{$system->description}}" />
        <meta property="og:url" content="{{$system->website}}" />
        <meta property="og:image" content="" />
        <meta property="og:locale" content="vi_VN" />
	    <title>Trang Không Tồn Tại Hoặc Đang Cập Nhật</title>
@endsection

@section('content')
	<!-- Our Error Page -->
	<section class="our-error bgc-f7">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1 text-center">
					<div class="error_page footer_apps_widget">
						<img class="img-fluid" src="{{asset('images/error.png')}}" alt="error.png">
						<div class="erro_code"><h1>Ohh! Trang Không Được Tìm Thấy</h1></div>
						<p>Bạn vui lòng kiểm tra lại kết nối hoặc truy cập lại sau</p>
						<form class="form-inline mailchimp_form">
							<label class="sr-only" for="inlineFormInputName">Name</label>
							<input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName" placeholder="Search">
							<button type="submit" class="btn btn-primary mb-2"><span class="flaticon-magnifying-glass"></span></button>
						</form>
					</div>
					<a class="btn btn_error btn-thm" href="/">Quay lại trang chủ</a>
				</div>
			</div>
		</div>
	</section>

@endsection
@section('js')
	
@endsection