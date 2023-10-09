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
@endsection
@section('content')
	<div class="page-content ">
                    <ol class="breadcrumb">
        
                            <li class="breadcrumb-item"><a href="{{URL::route('home')}}">Bảng điều khiển</a></li>
            
        
                            <li class="breadcrumb-item"><a href="{{URL::route('payments')}}">Phương thức thanh toán</a></li>
            
        
                            <li class="breadcrumb-item active">Thêm phương thức mới</li>
            
            </ol>


                    <div class="clearfix"></div>
                    <div id="main">
                        <form method="POST" action="{{URL::route('postAddPayment')}}" enctype="multipart/form-data" accept-charset="UTF-8" id="form_1aa3f76ebce588e61c3b18ff42edfa1a">
                            @if(isset($request->page_id))
                            <div class="note note-success">
                                @php
                        
                                    $page_vi = App\Page::where('id',$request->page_id)->get()->first();
                                    
                                @endphp
                                @if($request->lang == 'vi')
                                    <p>Bạn đang thêm bản dịch "<strong class="current_language_text">Tiếng Việt</strong>" cho trang <a href="#">{{$page_vi->name}}</a></p>
                                @elseif($request->lang == 'en')
                                    <p>Bạn đang thêm bản dịch "<strong class="current_language_text">English</strong>" cho trang <a href="#">{{$page_vi->name}}</a></p>
                                @elseif($request->lang == 'ko')
                                    <p>Bạn đang thêm bản dịch "<strong class="current_language_text">Korean</strong>" cho trang <a href="#">{{$page_vi->name}}</a></p>
                                @elseif($request->lang == 'ja')
                                    <p>Bạn đang thêm bản dịch "<strong class="current_language_text">Japan</strong>" cho trang <a href="#">{{$page_vi->name}}</a></p>
                                @endif
                                
                            </div>
                            @endif
                            <input type="hidden" name="_token" value="{{ csrf_token()}}">
    
        <div class="row">
        <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group"  >
    
                            <label for="title" class="control-label required">Tiêu đề</label>
                            <input class="form-control" placeholder="Nhập tên phương thức thanh toán" data-counter="190" name="title" value="{{old('title')}}" type="text" required id="title">
                        </div>
    
                        
                        <input type="hidden" name="model" value="">

                        
    
                        <div class="form-group"  >
    
                            <label for="content" class="control-label">Nội dung</label>
                            <textarea class="form-control" rows="4" placeholder="Nội dung" data-counter="400" name="content" cols="50" id="content">{{old('content')}}</textarea>
                            <script type="text/javascript">
                              var editor = CKEDITOR.replace('content',{
                               language:'vi',
                               filebrowserImageBrowseUrl : '../../auth/ckfinder/ckfinder.html?type=Images',
                               filebrowserFlashBrowseUrl : '../../auth/ckfinder/ckfinder.html?type=Flash',
                               filebrowserImageUploadUrl : '../../auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                               filebrowserFlashUploadUrl : '../../auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
                               });
                             </script>﻿
                        </div>
    
                        <div class="clearfix"></div>
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
            
        
                            <li class="breadcrumb-item"><a href="{{URL::route('payments')}}">Phương thức thanh toán</a></li>
            
        
                            <li class="breadcrumb-item active">Thêm phương thức mới</li>
            
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
            <option value="1">Xuất bản</option>
            <option value="0">Bản nháp</option>
        </select>
    <svg class="svg-next-icon svg-next-icon-size-16">
        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
    </svg>
</div>

    


                        </div>
                    </div>
                    <div id="top-sortables" class="meta-box-sortables">
                        <div id="language_wrap" class="widget meta-boxes">
                            <div class="widget-title">
                                <h4><span>Ngôn ngữ</span></h4>
                            </div>
                            <div class="widget-body">
                                <div id="select-post-language">
                                    <table class="select-language-table">
                                        <tbody>
                                            <tr>
                                                <td class="active-language">
                                                    @if(!isset($request->lang))
                                                        <img src="https://cms.botble.com/vendor/core/core/base/images/flags/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
                                                    @elseif($request->lang == 'vi')
                                                        <img src="https://cms.botble.com/vendor/core/core/base/images/flags/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
                                                    @elseif($request->lang == 'en')
                                                        <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                                                    @elseif($request->lang == 'ko')
                                                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                                                    @elseif($request->lang == 'ja')
                                                        <img src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Korean" width="16" alt="Korean">
                                                    @endif
                                                </td>
                                                <td class="translation-column">
                                                    <div class="ui-select-wrapper">
                                                        <select name="lang" id="post_lang_choice" class="ui-select" aria-invalid="false">
                                                            @if(!isset($request->lang))
                                                                <option value="vi" selected="selected" data-flag="vn">Tiếng Việt</option>
                                                            @elseif($request->lang == 'vi')
                                                                <option value="vi" selected="selected" data-flag="vn">Tiếng Việt</option>
                                                            @elseif($request->lang == 'en')
                                                                <option value="en" data-flag="us">English</option>
                                                            @elseif($request->lang == 'ko')
                                                                <option value="ko" data-flag="ko">Korean</option>
                                                            @elseif($request->lang == 'ja')
                                                                <option value="ja" data-flag="ja">Japan</option>
                                                            @endif
                                                        </select>
                                                        <svg class="svg-next-icon svg-next-icon-size-16">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
                                                        </svg>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- <div><strong>Translations</strong>
                                    <div id="list-others-language">
                                        <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                                        <a href="https://cms.botble.com/admin/blog/posts/create?ref_from=0&amp;ref_from=0&amp;ref_lang=en_US"> English <i class="fa fa-plus"></i></a>
                                        <br>
                                    </div>
                                </div> -->
                            

                            </div>
                        </div>
                    </div>
                    <input class="hidden" type="number" name="page_id" value="{{$request->page_id}}">
                    


                    
                            
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