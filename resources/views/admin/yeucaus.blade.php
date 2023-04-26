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
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/bootstrap-editable.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/dataTables.bootstrap.min.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/core.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/table.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/default.css')}}">
@endsection
@section('content')
<div class="page-content ">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{URL::route('home')}}">Bảng điều khiển</a></li>
        <li class="breadcrumb-item active">Yêu cầu BĐS</li>
        
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
                                        <a href="#" data-href="{{URL::route('deleteYeucaus')}}" class="deletes" data-class-item="">Xoá</a>
                                    </li>
                                 </ul>
                            </div>
                            <div class="btn-group">
                                <a class="btn btn-primary dropdown-toggle" href="#" data-toggle="dropdown">Lọc dữ liệu</a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="{{URL::route('users')}}?role={{$request->role}}" class="" data-class-item="">Tất cả</a>
                                    </li>
                                    
                                </ul>
                            </div>
                            <!-- <button class="btn btn-primary btn-show-table-options">Lọc dữ liệu</button> -->
                        </div>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="table-responsive  table-has-actions   table-has-filter ">
                        <div id="table-users_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer" style="width: 100%;">
                            <div id="table-users_filter" class="dataTables_filter">
                                <label><input type="search" url="{{URL::route('yeucaus')}}" name="keyword" onchange="searchYeucau()" class="form-control form-control-sm" placeholder="Tìm kiếm..." aria-controls="table-users"></label>
                            </div>
                            <div class="dt-buttons btn-group"> 
                                <button disabled class="btn btn-secondary action-item" tabindex="0" aria-controls="table-users">
                                    <span><span data-action="create" data-href="{{URL::route('addUser')}}"><i class="fa fa-plus"></i> Tạo mới</span></span>
                                </button> 
                                <!-- <button disabled class="btn btn-secondary excel" tabindex="0" aria-controls="table-posts"><label for="excel" style="margin-bottom: 0px;"><i class="fas fa-file-excel" style="margin-right: 4px;"></i>Chọn File Excel</label>
                                    
                                </button>
                                
                                
                                <form method="POST" action="{{URL::route('uploadExcel')}}" enctype="multipart/form-data" accept-charset="UTF-8" id="form_1aa3f76ebce588e61c3b18ff42edfa1a">
                                    <input type="hidden" name="_token" value="{{ csrf_token()}}">
                                    <input type="file" required id="excel" name="excel" class="hidden">
                                    <button disabled type="submit" name="submit" value="save" class="btn btn-info submitUE">
                                        <i class="fa fa-cloud-upload-alt"></i> Upload File Excel
                                    </button>
                                </form> -->
                            </div>
                            <div id="table-users_processing" class="dataTables_processing card" style="display: none;"></div>
                            <table class="table table-striped table-hover vertical-middle dataTable no-footer" id="table-users" role="grid" aria-describedby="table-users_info" style="width: 1582px;">
                                <thead>
                                    <tr role="row">
                                        <th width="10px" class="text-left no-sort sorting_disabled" title="<input class=&quot;table-check-all&quot; data-set=&quot;.dataTable .checkboxes&quot; type=&quot;checkbox&quot;>" rowspan="1" colspan="1" aria-label="" style="width: 37px;">
                                            <input class="table-check-all" data-set=".dataTable .checkboxes" type="checkbox">
                                        </th>
                                        <th title="ID" width="20px" class="column-key-id sorting" tabindex="0" aria-controls="table-categories" rowspan="1" colspan="1" aria-label="IDorderby asc" >STT</th>
                                        <th title="Tên" class="text-left column-key-username sorting_desc" tabindex="0" aria-controls="table-users" rowspan="1" colspan="1" aria-sort="descending" aria-label="Tên đăng nhậporderby asc" >Tên</th>
                                        <th title="Số điện thoại" class="text-left column-key-email sorting" tabindex="0" aria-controls="table-users" rowspan="1" colspan="1" aria-label="Emailorderby asc" >Điện thoại</th>
                                        <th title="Email" class="text-left column-key-email sorting" tabindex="0" aria-controls="table-users" rowspan="1" colspan="1" aria-label="Emailorderby asc" >Email</th>
                                        <th title="Loại yêu cầu" class="text-left column-key-email sorting" tabindex="0" aria-controls="table-users" rowspan="1" colspan="1" aria-label="Emailorderby asc">Loại yêu cầu</th>
                                        
                                        <th title="Loại yêu cầu" class="text-left column-key-email sorting" tabindex="0" aria-controls="table-users" rowspan="1" colspan="1" aria-label="Emailorderby asc">Dự án</th>
                                        <th title="Loại bất động sản" class="text-left column-key-email sorting" tabindex="0" aria-controls="table-users" rowspan="1" colspan="1" aria-label="Emailorderby asc">Loại BĐS</th>
                                        <th title="Diện tích" class="text-left column-key-email sorting" tabindex="0" aria-controls="table-users" rowspan="1" colspan="1" aria-label="Emailorderby asc">Diện tích</th>
                                        
                                        <th title="Khu vực" class="text-left column-key-email sorting" tabindex="0" aria-controls="table-users" rowspan="1" colspan="1" aria-label="Emailorderby asc">Khu vực</th>

                                        <th title="Ngày tạo" width="100px" class="column-key-created_at sorting" tabindex="0" aria-controls="table-users" rowspan="1" colspan="1" aria-label="Ngày tạoorderby asc" style="width: 100px;">Ngày tạo</th>
                                        <th title="Hướng" class="text-left column-key-email sorting" tabindex="0" aria-controls="table-users" rowspan="1" colspan="1" aria-label="Emailorderby asc">Trạng thái</th>
                                        
                                        <th title="Tác vụ" width="150px" class="text-right sorting_disabled" rowspan="1" colspan="1" aria-label="Tác vụ" style="width: 150px;">Tác vụ</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $i=1;
                                        $items = $yeucaus;
                                    @endphp
                                    @foreach($yeucaus as $item)
                                        
                                        @if($i%2 == 0)
                                        <tr role="row" class="odd">
                                        @else
                                        <tr role="row" class="even">
                                        @endif
                                            <td class=" text-left no-sort">
                                                <div class="text-left">
                                                    <div class="checkbox checkbox-primary table-checkbox">
                                                        <input type="checkbox" class="checkboxes" name="id[]" value="{{$item->id}}">
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="  column-key-id">{{$i++}}</td>
                                            <td class="text-left column-key-username sorting_1">
                                                {{$item->name}}
                                            </td>
                                            <td class=" text-left column-key-email">{{$item->phone}}</td>
                                            <td class=" text-left column-key-email">{{$item->email}}</td>
                                            <td class=" text-left column-key-email">{{$item->lyc}}</td>
                                            <td class=" text-left column-key-email">{{$item->da}}</td>
                                            <td class=" text-left column-key-email">{{$item->lbds}}</td>
                                            <td class=" text-left column-key-email">{{$item->dt}}</td>
                                            <td class=" text-left column-key-email">{{$item->kv}}</td>
                                            <td class="  column-key-created_at">{{$item->created_at}}</td>
                                            <td class=" text-left column-key-email">
                                                @if($item->status == 0)
                                                    <span class="label-danger status-label">Chưa xem</span>
                                                @elseif($item->status == 1)
                                                    <span class="label-success status-label">Đã xem</span>
                                                @else
                                                    <span class="label-default status-label">Đã liên hệ</span>
                                                @endif
                                            </td>
                                            
                                            <td class=" text-right">
                                                
                                                <a style="" href="{{URL::route('yeucau',$item->id)}}" class="btn btn-icon btn-primary" data-toggle="tooltip" data-original-title="Xem chi tiết"><i class="fa fa-eye"></i></a>
                                                <a href="#" class="btn btn-icon btn-sm btn-danger deleteDialog delete" data-toggle="tooltip" data-section="{{URL::route('deleteYeucau',$item->id)}}" role="button" data-original-title="Xóa bản ghi">
                                                                <i class="fa fa-trash"></i>
                                                            </a>
                                                
                                                
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
    <script src="{{asset('js/admin/bootstrap-editable.min.js')}}"></script>
    <script src="{{asset('js/admin/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('js/admin/dataTables.bootstrap.min.js')}}"></script>
    <script src="{{asset('js/admin/dataTables.buttons.min.js')}}"></script>
    <script src="{{asset('js/admin/buttons.bootstrap.min.js')}}"></script>
    <script src="{{asset('js/admin/moment-with-locales.min.js')}}"></script>
    <script src="{{asset('js/admin/bootstrap3-typeahead.min.js')}}"></script>
    <script src="{{asset('js/admin/table.js')}}"></script>
    <script src="{{asset('js/admin/filter.js')}}"></script>
    <script type="text/javascript">
        function searchYeucau(){
            var keyword = $('input[name="keyword"]').val();
            var url = $('input[name="keyword"]').attr('url');
            url = url+'?keyword='+keyword;
            location.href = url;
            // console.log(url);
        }
    </script>
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
                swal("Vui lòng chọn bản ghi muốn xóa");
            }
            else{
                str_ids = str_ids.substring(0, str_ids.length - 1);
                url = url+'?yeucaus_id='+str_ids;
                location.href = url;
                // console.log(url);
            }
            
            
        });
    </script>
@endsection