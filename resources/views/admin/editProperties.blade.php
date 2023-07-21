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
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/upload-image.css')}}">
    <link media="all" type="text/css" rel="stylesheet" href="{{asset('css/admin/ecommerce-product-attributes.css')}}">
@endsection
@section('content')
    <div class="page-content ">
        <ol class="breadcrumb">

            <li class="breadcrumb-item"><a href="{{URL::route('home')}}">Bảng điều khiển</a></li>
            <li class="breadcrumb-item active">Sửa thuộc tính</li>
        
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
            <form method="POST" action="{{URL::route('postEditProperties',$pp->id)}}" accept-charset="UTF-8" id="form_56d0a8f2e8c8165e444275f5c4091d06">
                <input type="hidden" name="_token" value="{{ csrf_token()}}">
    
                <div class="row">
                    <div class="col-md-9">
                        <div class="row">
                            <div class="form-group col-md-12"  >
                                <div class="widget meta-boxes">
                                    <div class="widget-title">
                                        <h4>
                                        <span>Tên Thuộc Tính</span>
                                        </h4>
                                    </div>
                                    <div class="widget-body">
                                        <input class="form-control" placeholder="Nhập tên thuộc tính" data-counter="191" name="name" type="text" value="{{$pp->name}}" required id="name">
                                    </div>
                                </div>
                            </div>

                            
                        </div>
                        <div class="row">
                            <div class="form-group col-md-12"  >
                                <div class="widget meta-boxes">
                                    <div class="widget-title">
                                        <h4>
                                        <span>Danh Sách Giá Trị</span>
                                        </h4>
                                    </div>
                                    <div class="widget-body">
                                        <div class="swatches-container">
                                            <div class="header clearfix">
                                            <div class="swatch-is-default">
                                            Mặc Định?
                                            </div>
                                            <div class="swatch-title text-start">
                                            Tiêu Đề
                                            </div>
                                            <div class="remove-item">Hành Động</div>
                                            </div>
                                        <ul class="swatches-list ui-sortable">
                                            @php
                                                $values = $pp->propertie_values;

                                            @endphp
                                            @if(count($values))
                                                @foreach($values as $value)
                                                    <li data-id="{{$value->id}}" class="clearfix ui-sortable-handle">
                                                        <div class="swatch-is-default">
                                                        <input type="radio" name="related_attribute_is_default" value="4">
                                                        </div>
                                                        <div class="swatch-title">
                                                        <input type="text" name="properties-{{$value->id}}" class="form-control" required value="{{$value->value}}" fdprocessedid="5zdb5">
                                                        </div>
                                                        <div class="remove-item">
                                                            
                                                            <a href="#" class="btn btn-icon btn-sm btn-danger deleteDialog delete" data-toggle="tooltip" data-section="{{URL::route('deletePropertiesValue',$value->id)}}" role="button" data-original-title="Xóa bản ghi">
                                                                <i class="fa fa-trash"></i>
                                                            </a>
                                                        </div>
                                                    </li>
                                                @endforeach
                                            @else
                                            <li data-id="10" class="clearfix ui-sortable-handle">
                                                <div class="swatch-is-default">
                                                <input type="radio" name="related_attribute_is_default" value="4">
                                                </div>
                                                <div class="swatch-title">
                                                <input type="text" name="properties[]" class="form-control" required value="" fdprocessedid="5zdb5">
                                                </div>
                                                <div class="remove-item">
                                                    <a href="#" class="font-red"><i class="fa fa-trash"></i></a>
                                                </div>
                                            </li>
                                            @endif
                                                
                                        </ul>
                                        <button type="button" class="btn btn-outline-info js-add-new-attribute" fdprocessedid="5aemos">Thêm mới</button>
                                        <div class="clearfix"></div>
                                        </div>
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


                                <li class="breadcrumb-item active">Thêm người dùng</li>
                            
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
                                <h4><label for="status_id" class="control-label">Trạng thái</label></h4>
                            </div>
                            <div class="widget-body">
                                <div class="ui-select-wrapper">
                                    <select class="form-control roles-list ui-select ui-select" id="status_id" name="status">
                                        
                                        @if($pp->status)
                                            <option value="1" selected>Hoạt động</option>
                                            <option value="0" >Tạm khóa</option>
                                        @else
                                            <option value="1" >Hoạt động</option>
                                            <option value="0" selected>Tạm khóa</option>
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
    <script src="{{asset('js/admin/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('js/admin/table.js')}}"></script>
    <script src="{{asset('js/admin/ecommerce-product-attributes.js')}}" type="b3c15b8cfa04875557da7518-text/javascript"></script>
    <script type="text/javascript">
        $(document).on('click', '.js-add-new-attribute', function(event) {
            event.preventDefault();
            var html = '<li data-id="" class="clearfix ui-sortable-handle">\
                            <div class="swatch-is-default">\
                            <input type="radio" name="related_attribute_is_default" value="4">\
                            </div>\
                            <div class="swatch-title">\
                            <input type="text" name="properties[]" required class="form-control" value="" fdprocessedid="5zdb5">\
                            </div>\
                            <div class="remove-item">\
                                <a href="#" class="btn btn-icon btn-sm btn-danger delete-new" role="button" data-original-title="Xóa bản ghi">\
                                                                <i class="fa fa-trash"></i>\
                                                            </a>\
                            </div>\
                        </li> ';
            $(".swatches-list").append(html);
            // toastr.success('Thêm thành công');

        });
    </script>

@endsection