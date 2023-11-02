
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
            
        
                            <li class="breadcrumb-item"><a href="{{URL::route('orders')}}">Đơn hàng</a></li>
            
        
                            <li class="breadcrumb-item active">Chi tiết đơn hàng</li>
            
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
                        <form method="POST" action="{{URL::route('editOrder',$order->id)}}" enctype="multipart/form-data" accept-charset="UTF-8" id="form_1aa3f76ebce588e61c3b18ff42edfa1a">
                            
                            <input type="hidden" name="_token" value="{{ csrf_token()}}">
    
        <div class="row">
        <div class="col-md-9">
                <div class="widget meta-boxes" style="&quot;margin-top:" 0&quot;="">
					<div class="widget-title">
						<h4>
						<span>Thông tin đơn hàng</span>
						</h4>
					</div>
					<div class="widget-body">
						<div class="row">
							<div class="col-md-4">
								<p>Thời gian: <i>{{ \Carbon\Carbon::parse($order->created_at)->format('d/m/Y H:i:s')}}</i></p>
								<p>Họ tên: <i>{{$order->name}}</i></p>
								<p>Email: <i><a href="mailto:{{$order->email}}">{{$order->email}}</a></i></p>
								<p>Điện thoại: <i> <a href="tel:{{$order->phone}}">{{$order->phone}}</a> </i></p>
								<p>Địa chỉ: <i>{{$order->address}}</i></p>
								<p>Ghi chú:</p>
								<pre class="message-content">{!!$order->messages!!}</pre>
								
								
							</div>
							<div class="col-md-8">
								<table class="table table-striped table-hover vertical-middle dataTable no-footer" id="table-categories" role="grid" aria-describedby="table-categories_info" style="width: 100%;">
                            		<thead>
										<tr>
											
											<th  title="ID" width="20px" class=" column-key-id">STT</th>
											<th  title="ID" width="20px" class=" column-key-id">SKU</th>
											<th  title="Hình ảnh" width="100px" class=" column-key-image">Hình ảnh</th>
											<th  title="Tên" width="300px" class="text-left column-key-name">Tên</th>
											<th  title="Tên gian hàng" width="200px" class="text-left column-key-name-shop">Giá</th>
											<th  title="Categories" width="200px" class="no-sort column-key-updated_at">Số lượng</th>
											<th  title="Ngày tạo" width="200px" class=" column-key-created_at">Thành tiền</th>
											
										</tr>
									</thead>
									<tbody>
										@php
											$i=1;
											$products = $order->products;
											$subtotal = 0;
										@endphp
										@foreach($products as $product)
											@php
												$order_detail = App\OrderDetail::where('orders_id',$order->id)->where('products_id',$product->id)->get()->first();
												$subtotal = $subtotal + $order_detail->amount;
											@endphp
											@if($i%2 ==1 )
												<tr role="row" class="odd">
											@else
												<tr role="row" class="even">
											@endif
													
													<td class="  column-key-id">{{$i++}}</td>
													<td title="{{$product->ma}}" class="column-key-id sorting_{{$product->ma}}">{!! \Illuminate\Support\Str::words($product->ma, 5,'...')  !!}</td>
													<td class="  column-key-image">
														<img src="{{asset('uploads/images/products/details/'.$product->avata)}}" width="50" alt="{{$product->name}}">
													</td>
													<td class=" text-left column-key-name"><a href="/{{$product->url}}" title="{{$product->name}}" target="_blank">{!! \Illuminate\Support\Str::words($product->name, 8,'...')  !!}</a></td>
													
													<td class=" text-left column-key-name">{!!number_format($product->price)!!} đ</td>
													
													<td class=" no-sort column-key-updated_at">
														{{$order_detail->qty}}
													</td>
													<td class="  column-key-created_at">{!!number_format($order_detail->amount)!!} đ</td>
													
													
										        </tr>

								        @endforeach
								        <tr role="row" style="background: #fff!important;">
								        	<td class=" column-key"></td>
								        	<td class=" column-key"></td>
								        	<td class=" column-key"></td>
								        	<td class=" column-key"></td>
								        	<td class=" column-key"></td>
								        	<td class=" column-key">Tổng tiền</td>
								        	<td class=" column-key">{!!number_format($subtotal)!!} đ</td>
								        </tr>
								        
								    </tbody>
								</table>
								
								
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
						        	@if($order->status == 0)
							            <option selected value="0">Chưa xem</option>
							            <option value="1">Đã xem</option>
							            <option value="2">Đã liên hệ</option>
							        @elseif($order->status == 1)
							        	<option value="0">Chưa xem</option>
							            <option selected value="1">Đã xem</option>
							            <option value="2">Đã liên hệ</option>
							        @else($order->status == 2)
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