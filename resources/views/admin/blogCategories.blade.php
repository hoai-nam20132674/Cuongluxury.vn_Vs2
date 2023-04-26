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


            <li class="breadcrumb-item active">Danh mục tin tức</li>
        
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
                                            <a href="" class="delete-many-entry-trigger" data-class-item="">Xoá</a>
                                        </li>
                                    </ul>
                            	</div>
                                <button class="btn btn-primary btn-show-table-options">Lọc dữ liệu</button>
                            </div>
                		</div>
            		</div>
		            <div class="portlet-body">
		                <div class="table-responsive  table-has-actions   table-has-filter ">
                            <div id="table-categories_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer" style="width: 100%;">
                            	<div id="table-categories_filter" class="dataTables_filter">
                            		<label><input type="search" class="form-control form-control-sm" placeholder="Search..." aria-controls="table-categories"></label>
                            	</div>
                            	<div class="dt-buttons btn-group"> 
                            		<button class="btn btn-secondary action-item" tabindex="0" aria-controls="table-categories"><span><span data-action="create" data-href="{{URL::route('addBlogCategorie')}}"><i class="fa fa-plus"></i> Tạo mới</span></span></button> 
                            		<button class="btn btn-secondary buttons-reload" tabindex="0" aria-controls="table-categories"><span><i class="fas fa-sync"></i> Tải lại</span></button> 
                            	</div>
                            	<div id="table-categories_processing" class="dataTables_processing card" style="display: none;"></div>
                            	<table class="table table-striped table-hover vertical-middle dataTable no-footer" id="table-categories" role="grid" aria-describedby="table-categories_info" style="width: 1582px;">
                            		<thead>
                            			<tr role="row">
                            				<th width="100px" class="text-left no-sort sorting_disabled" title="<input class=&quot;table-check-all&quot; data-set=&quot;.dataTable .checkboxes&quot; type=&quot;checkbox&quot;>" rowspan="1" colspan="1" aria-label="" ><input disabled class="table-check-all" data-set=".dataTable .checkboxes" type="checkbox"></th>
                            				<th title="ID" width="20px" class="column-key-id sorting" tabindex="0" aria-controls="table-categories" rowspan="1" colspan="1" aria-label="IDorderby asc" >STT</th>
                            				<th title="Tên" class="text-left column-key-name sorting" tabindex="0" aria-controls="table-categories" rowspan="1" colspan="1" aria-label="Tênorderby asc" >Tên</th>
                            				<th title="Ngày tạo" width="100px" class="column-key-created_at sorting" tabindex="0" aria-controls="table-categories" rowspan="1" colspan="1" aria-label="Ngày tạoorderby asc" >Ngày tạo</th>
                            				<th title="Ngày cập nhật" width="100px" class="column-key-updated_at sorting" tabindex="0" aria-controls="table-categories" rowspan="1" colspan="1" aria-label="Ngày cập nhậtorderby asc" >Ngày cập nhật</th>
                            				<th title="Trạng thái" width="100px" class="column-key-status sorting" tabindex="0" aria-controls="table-categories" rowspan="1" colspan="1" aria-label="Trạng tháiorderby asc" >Trạng thái</th>
                            				<th title="Ngôn ngữ" width="200px" class="text-center" width="100px">
												
												<img src="https://cms.botble.com/vendor/core/core/base/images/flags/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
												<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
												<img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
												<img style="border: 1px solid #ececec;" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
											</th>
                            				<th title="Tác vụ" width="134px" class="text-center sorting_disabled" rowspan="1" colspan="1" aria-label="Tác vụ" >Tác vụ</th>
                            			</tr>
                            		</thead>
                            		<tbody>
                            			@php
                            				$i=1;
                            				$items = $categories;
                            			@endphp
                            			@foreach($categories as $cate)
                            				
                            				<tr role="row" class="odd">
                            			
	                            				<td class=" text-left no-sort">
		                            				<div class="text-left">
													    <div class="checkbox checkbox-primary table-checkbox">
													        <input disabled type="checkbox" class="checkboxes" name="id[]" value="{{$cate->id}}">
													    </div>
													</div>
												</td>
												<td class="  column-key-id">{{$i}}</td>
												<td class=" text-left column-key-name"><a href="{{URL::route('editBlogCategorie',$cate->id)}}">{{$cate->name}}</a></td>
												<td class="  column-key-created_at">{{$cate->created_at}}</td>
												<td class="  column-key-updated_at">{{$cate->updated_at}}</td>
												@if($cate->display ==1)
													<td class="  column-key-status"><span class="label-success status-label">Xuất bản</span></td>
												@else
													<td class="  column-key-status"><span class="label-danger status-label">Bản nháp</span></td>
												@endif
												<td class=" text-center language-header no-sort">
													<div class="text-center language-column">
														<a href="#" class="tip" title=""><i class="fa fa-check text-success"></i></a>
														@if(count($cate->langs) == 0)
															<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate->id}}&lang=ko" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
															<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate->id}}&lang=en" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
															<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate->id}}&lang=ja" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
														@else
															@php
																$ko = $cate->langs()->where('lang','ko')->first();
																$en = $cate->langs()->where('lang','en')->first();
																$ja = $cate->langs()->where('lang','ja')->first();
															@endphp
															@if(isset($ko))
																<a href="{{URL::route('editBlogCategorie',$ko->blog_cate_lang_id)}}" class="tip" title="Sửa bản dịch"><i class="fa fa-edit"></i></a>
															@else
																<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate->id}}&lang=ko" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
															@endif
															@if(isset($en))
																<a href="{{URL::route('editBlogCategorie',$en->blog_cate_lang_id)}}" class="tip" title="Sửa bản dịch"><i class="fa fa-edit"></i></a>
															@else
																<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate->id}}&lang=en" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
															@endif
															@if(isset($ja))
																<a href="{{URL::route('editBlogCategorie',$ja->blog_cate_lang_id)}}" class="tip" title="Sửa bản dịch"><i class="fa fa-edit"></i></a>
															@else
																<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate->id}}&lang=ja" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
															@endif
															
														@endif
													</div>
												</td>
												<td class=" text-center">
													<a href="{{URL::route('editBlogCategorie',$cate->id)}}" class="btn btn-icon btn-primary" data-toggle="tooltip" data-original-title="Sửa"><i class="fa fa-edit"></i></a>
													<a href="#" class="btn btn-icon btn-danger deleteDialog delete" data-toggle="tooltip" data-section="{{URL::route('deleteBlogCategorie',$cate->id)}}" role="button" data-original-title="Xóa bản ghi"><i class="fa fa-trash"></i></a>
												</td>
											</tr>
											@php
                                                $cate_childrens = App\BlogCate::where('parent_id',$cate->id)->get();
                                                $j = 1;
                                            @endphp
                                            @foreach($cate_childrens as $cate_children)
                                            	<tr role="row" class="odd">
                            			
		                            				<td class=" text-left no-sort" style="padding-left: 35px !important;">
			                            				<div class="text-left">
														    <div class="checkbox checkbox-primary table-checkbox">
														    	<i class='bx bx-subdirectory-right'></i>
														        <input disabled type="checkbox" class="checkboxes" name="id[]" value="{{$cate->id}}">
														    </div>
														</div>
													</td>
													<td class="  column-key-id">{{$i}}.{{$j++}}</td>
													<td class=" text-left column-key-name"><a href="{{URL::route('editBlogCategorie',$cate_children->id)}}">{{$cate_children->name}}</a></td>
													<td class="  column-key-created_at">{{$cate_children->created_at}}</td>
													<td class="  column-key-updated_at">{{$cate_children->updated_at}}</td>
													@if($cate_children->display ==1)
														<td class="  column-key-status"><span class="label-success status-label">Xuất bản</span></td>
													@else
														<td class="  column-key-status"><span class="label-danger status-label">Bản nháp</span></td>
													@endif
													<td class=" text-center language-header no-sort">
														<div class="text-center language-column">
															<a href="#" class="tip" title=""><i class="fa fa-check text-success"></i></a>
															@if(count($cate_children->langs) == 0)
																<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate_children->id}}&lang=ko" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
																<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate_children->id}}&lang=en" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
																<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate_children->id}}&lang=ja" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
															@else
																@php
																	$ko = $cate_children->langs()->where('lang','ko')->first();
																	$en = $cate_children->langs()->where('lang','en')->first();
																	$ja = $cate_children->langs()->where('lang','ja')->first();
																@endphp
																@if(isset($ko))
																	<a href="{{URL::route('editBlogCategorie',$ko->blog_cate_lang_id)}}" class="tip" title="Sửa bản dịch"><i class="fa fa-edit"></i></a>
																@else
																	<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate_children->id}}&lang=ko" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
																@endif
																@if(isset($en))
																	<a href="{{URL::route('editBlogCategorie',$en->blog_cate_lang_id)}}" class="tip" title="Sửa bản dịch"><i class="fa fa-edit"></i></a>
																@else
																	<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate_children->id}}&lang=en" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
																@endif
																@if(isset($ja))
																	<a href="{{URL::route('editBlogCategorie',$ja->blog_cate_lang_id)}}" class="tip" title="Sửa bản dịch"><i class="fa fa-edit"></i></a>
																@else
																	<a href="{{URL::route('addBlogCategorie')}}?blog_cate_id={{$cate_children->id}}&lang=ja" class="tip" title="Tạo bản dịch"><i class="fa fa-plus"></i></a>
																@endif
																
															@endif
														</div>
													</td>
													<td class=" text-center">
														<a href="{{URL::route('editBlogCategorie',$cate_children->id)}}" class="btn btn-icon btn-primary" data-toggle="tooltip" data-original-title="Sửa"><i class="fa fa-edit"></i></a>
														<a href="#" class="btn btn-icon btn-danger deleteDialog delete" data-toggle="tooltip" data-section="{{URL::route('deleteBlogCategorie',$cate_children->id)}}" role="button" data-original-title="Xóa bản ghi"><i class="fa fa-trash"></i></a>
													</td>
												</tr>
                                            @endforeach
											@php
                                            	$i++;
                                            @endphp
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
			                <button class="float-right btn btn-info confirm-bulk-change-button" data-load-url="http://hasa.botble.com/tables/bulk-change/data">Submit</button>
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
@endsection