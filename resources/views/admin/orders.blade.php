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
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/dashboard.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/default.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/dataTables.bootstrap.min.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/table.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/language.css')}}">
@endsection
@section('content')
	<div class="page-content ">
        <ol class="breadcrumb">

            <li class="breadcrumb-item"><a href="{{URL::route('home')}}">Bảng điều khiển</a></li>
            <li class="breadcrumb-item active">Đơn hàng</li>
        
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
            <div class="table-wrapper">
                
                <div class="portlet light bordered portlet-no-padding">
		            <div class="portlet-title">
		                <div class="caption">
		                    <div class="wrapper-action">
                                <div class="btn-group">
                                	<a class="btn btn-secondary dropdown-toggle" href="#" data-toggle="dropdown">Hành động</a>
                                	<ul class="dropdown-menu">
                                        
                                        <li>
                                            <a href="#" data-href="{{URL::route('deleteOrders')}}" class="deletes" data-class-item="">Xoá</a>
                                        </li>
                                    </ul>
                            	</div>
                            	<div class="btn-group">
                                	<a class="btn btn-primary dropdown-toggle" href="#" data-toggle="dropdown">Lọc dữ liệu</a>
                                	<ul class="dropdown-menu">
                                		<li>
                                            <a href="{{URL::route('orders')}}">Tất cả</a>
                                        </li>
                                        
                                    </ul>
                            	</div>
                                <!-- <button class="btn btn-primary btn-show-table-options">Lọc dữ liệu</button> -->
                            </div>
                		</div>
            		</div>
		            <div class="portlet-body">
		                <div class="table-responsive  table-has-actions   table-has-filter ">
                            <div id="table-categories_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer" style="width: 100%;">
                            	<div id="table-categories_filter" class="dataTables_filter">
                            		<form action="{{URL::route('products')}}">
                            		<label><input type="search" class="form-control form-control-sm" name="name" placeholder="Tên/mã sp..." aria-controls="table-categories"></label>
                            		</form>
                            	</div>
                            	<div class="dt-buttons btn-group"> 
                            		<button class="btn btn-secondary action-item" tabindex="0" aria-controls="table-categories"><span><span data-action="create" data-href="{{URL::route('addProduct')}}"><i class="fa fa-plus"></i> Tạo mới</span></span></button> 
                            		<button class="btn btn-secondary buttons-reload" tabindex="0" aria-controls="table-categories"><span><i class="fas fa-sync"></i> Tải lại</span></button> 
                            	</div>
                            	<div id="table-categories_processing" class="dataTables_processing card" style="display: none;"></div>
                            	<table class="table table-striped table-hover vertical-middle dataTable no-footer" id="table-categories" role="grid" aria-describedby="table-categories_info" style="width: 1582px;">
                            		<thead>
										<tr>
											<th  width="10px" class="text-left no-sort" title="&lt;input class=&quot;table-check-all&quot; data-set=&quot;.dataTable .checkboxes&quot; type=&quot;checkbox&quot;&gt;">
												<input class="table-check-all" data-set=".dataTable .checkboxes" type="checkbox">
											</th>
											<th  title="ID" width="20px" class=" column-key-id">STT</th>
											<th  title="Tên" width="300px" class="text-left column-key-name">Tên</th>
											<th  title="SĐT" width="200px" class="text-left column-key-name-shop">SĐT</th>
											<th  title="Email" width="200px" class="no-sort column-key-updated_at">Email</th>
											<th  title="Address" width="200px" class="no-sort column-key-updated_at">Địa chỉ</th>
											<th  title="Ngày tạo" width="200px" class=" column-key-created_at">Ngày đặt hàng</th>
											<th  title="Trạng thái" width="150px" class=" column-key-status">Trạng thái</th>
											<th title="Ngôn ngữ" width="50px" class="text-center">
												
												<img src="https://cms.botble.com/vendor/core/core/base/images/flags/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
												
											</th>
											<th  title="Tác vụ" width="134px" class="text-center">Tác vụ</th>
										</tr>
									</thead>
									<tbody>
										@php
											$i=1;
											$items = $orders;
										@endphp
										@foreach($orders as $order)
											@if($i%2 ==1 )
												<tr role="row" class="odd">
											@else
												<tr role="row" class="even">
											@endif
													<td class=" text-left no-sort">
														<div class="text-left">
														    <div class="checkbox checkbox-primary table-checkbox">
														        <input type="checkbox" class="checkboxes" name="id[]" value="{{$order->id}}">
														    </div>
														</div>
													</td>
													<td class="  column-key-id">{{$i++}}</td>
													
													<td class=" text-left column-key-name">{{$order->name}}</td>
													
													<td class=" text-left column-key-name">{{$order->phone}}</td>
													
													<td class=" no-sort column-key-updated_at">
														{{$order->email}}
													</td>
													<td class=" no-sort column-key-updated_at">
														{{$order->address}}
													</td>
													<td class="  column-key-created_at">{{$order->created_at}}</td>
													@if($order->status ==1 )
														<td class="  column-key-status"><span class="label-success status-label">Đơn đã xem</span></td>
													@else
														<td class="  column-key-status"><span class="label-danger status-label">Đơn mới</span></td>

													@endif
													<td class=" text-center language-header no-sort">
														<div class="text-center language-column">
															<a href="#" class="tip" title=""><i class="fa fa-check text-success"></i></a>
															
														</div>
													</td>
													<td class=" text-center">
														<div class="table-actions">

										                    <a href="{{URL::route('orderDetail',$order->id)}}" class="btn btn-icon btn-sm btn-primary" data-toggle="tooltip" data-original-title="Xem">
										                    	<i class="fa fa-eye"></i>
										                    </a>
										        
										                    <a href="#" class="btn btn-icon btn-sm btn-danger deleteDialog delete" data-toggle="tooltip" data-section="{{URL::route('deleteOrder',$order->id)}}" role="button" data-original-title="Xóa bản ghi">
										                    	<i class="fa fa-trash"></i>
										                    </a>
										                </div>
										            </td>
										        </tr>
								        @endforeach
								        
								    </tbody>
								</table>
								@include('admin.layout.table-footer')
							</div>
                        </div>
		            </div>
		        </div>
		    </div>
			<div class="modal fade modal-confirm-delete" tabindex="-1" role="dialog">
			    <div class="modal-dialog modal-sm">
			        <div class="modal-content">
			            <div class="modal-header bg-danger">
			                <h4 class="modal-title"><i class="til_img"></i><strong>Xác nhận xóa</strong></h4>
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
			                    <span aria-hidden="true">×</span>
			                </button>
			            </div>

			            <div class="modal-body with-padding">
			                <div>Bạn có chắc chắn muốn xóa bản ghi này?</div>
			            </div>

			            <div class="modal-footer">
			                <button class="float-left btn btn-warning" data-dismiss="modal">Huỷ bỏ</button>
			                <a class="confirm-delete" href=""><button class="float-right btn btn-danger">Xóa</button></a>
			            </div>
			        </div>
			    </div>
			</div>
			<!-- end Modal -->
			<div class="modal fade delete-many-modal" tabindex="-1" role="dialog">
			    <div class="modal-dialog modal-sm">
			        <div class="modal-content">
			            <div class="modal-header bg-danger">
			                <h4 class="modal-title"><i class="til_img"></i><strong>Xác nhận xóa</strong></h4>
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
			                    <span aria-hidden="true">×</span>
			                </button>
			            </div>

			            <div class="modal-body with-padding">
			                <div>Do you really want to delete selected record(s)?</div>
			            </div>

			            <div class="modal-footer">
			                <button class="float-left btn btn-warning" data-dismiss="modal">Huỷ bỏ</button>
			                <button class="float-right btn btn-danger delete-many-entry-button">Xóa</button>
			            </div>
			        </div>
			    </div>
			</div>
			<!-- end Modal -->
			<div class="modal fade modal-bulk-change-items" tabindex="-1" role="dialog">
			    <div class="modal-dialog modal-sm">
			        <div class="modal-content">
			            <div class="modal-header bg-info">
			                <h4 class="modal-title"><i class="til_img"></i><strong>Bulk changes</strong></h4>
			                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
			                    <span aria-hidden="true">×</span>
			                </button>
			            </div>

			            <div class="modal-body with-padding">
			                <div><div class="modal-bulk-change-content"></div></div>
			            </div>

			            <div class="modal-footer">
			                <button class="float-left btn btn-warning" data-dismiss="modal">Huỷ bỏ</button>
			                <button class="float-right btn btn-info confirm-bulk-change-button" data-load-url="">Submit</button>
			            </div>
			        </div>
			    </div>
			</div>
			<!-- end Modal -->                    
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
    <script src="{{asset('js/admin/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('js/admin/dataTables.bootstrap.min.js')}}"></script>
    <script src="{{asset('js/admin/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('js/admin/buttons.bootstrap.min.js')}}"></script>
    <script src="{{asset('js/admin/moment-with-locales.min.js')}}"></script>
    <script src="{{asset('js/admin/bootstrap3-typeahead.min.js')}}"></script>
    <script src="{{asset('js/admin/table.js')}}"></script>
    <script src="{{asset('js/admin/filter.js')}}"></script>
    <script type="text/javascript">
    	$(document).on('click', '.deletes', function(event) {
	        event.preventDefault();
	        url = $(this).attr('data-href');
	        var items = $('input.checkboxes');
	        var str_ids = '';
	        items.each(function(){
                if($(this).is(":checked")){
	                str_ids = $(this).attr('value')+','+str_ids;
	                
	            }
	            else{
	            	
	            }
            });
            if(str_ids ==''){
            	swal("Vui lòng chọn sản phẩm muốn xóa");
            }
            else{
            	str_ids = str_ids.substring(0, str_ids.length - 1);
            	url = url+'?products_id='+str_ids;
            	location.href = url;
            	// console.log(url);
            }
            
	        
	    });
    </script>
    
@endsection