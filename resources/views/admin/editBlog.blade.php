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
        .ml-30{
            margin-left: 30px !important;
        }
    </style>
@endsection
@section('content')
	<div class="page-content ">
                    <ol class="breadcrumb">
        
                            <li class="breadcrumb-item"><a href="{{URL::route('home')}}">Bảng điều khiển</a></li>
            
        
                            <li class="breadcrumb-item"><a href="{{URL::route('blogs')}}">Tin tức</a></li>
            
        
                            <li class="breadcrumb-item active">Sửa bài viết</li>
            
            </ol>


                    <div class="clearfix"></div>
                    <div id="main">
                        <form method="POST" action="{{URL::route('postEditBlog',$blog->id)}}" enctype="multipart/form-data" accept-charset="UTF-8" id="form_1aa3f76ebce588e61c3b18ff42edfa1a">
                            <input type="hidden" name="_token" value="{{ csrf_token()}}">
                            <div class="note note-success">
                                
                                @php
                                    if($blog->lang != 'vi'){
                                        $blog_lang = App\BlogLang::where('blog_lang_id',$blog->id)->where('lang',$blog->lang)->get()->first();
                                        $blog_vi = App\Blog::where('id',$blog_lang->blog_id)->first();
                                    }
                                @endphp
                                @if($blog->lang == 'vi')
                                    <p>Bạn đang sửa bản dịch "<strong class="current_language_text">Tiếng Việt</strong>" cho bài viết <a href="#">{{$blog->name}}</a></p>
                                @elseif($blog->lang == 'en')
                                    <p>Bạn đang sửa bản dịch "<strong class="current_language_text">English</strong>" cho bài viết <a href="#">{{$blog_vi->name}}</a></p>
                                @elseif($blog->lang == 'ko')
                                    <p>Bạn đang sửa bản dịch "<strong class="current_language_text">Korean</strong>" cho bài viết <a href="#">{{$blog_vi->name}}</a></p>
                                @elseif($blog->lang == 'ja')
                                    <p>Bạn đang sửa bản dịch "<strong class="current_language_text">Japan</strong>" cho bài viết <a href="#">{{$blog_vi->name}}</a></p>
                                @endif
                                
                            </div>
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
    
        <div class="row">
        <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group"  >
    
                            <label for="name" class="control-label required">T&ecirc;n</label>
                            <input class="form-control" placeholder="Nhập tên" data-counter="120" name="name" type="text" value="{{$blog->name}}" required id="name">
                        </div>
    
                        
                        <input type="hidden" name="model" value="">

                        <div class="form-group">
                            <label for="short_description" class="control-label">Mô tả ngắn</label>
                            <textarea class="form-control" rows="4" placeholder="Mô tả ngắn" data-counter="400" name="short_description" cols="50" id="short_description">{{$blog->short_description}}</textarea>
                        </div>
    
                        <div class="form-group"  >
    
                            <label for="content" class="control-label">Nội dung</label>
                            <textarea class="form-control" rows="4" placeholder="Nội dung" data-counter="400" name="content" cols="50" id="content">{{$blog->content}}</textarea>
                            <script type="text/javascript">
                              var editor = CKEDITOR.replace('content',{
                               language:'vi',
                               filebrowserImageBrowseUrl : '../../../auth/ckfinder/ckfinder.html?type=Images',
                               filebrowserFlashBrowseUrl : '../../../auth/ckfinder/ckfinder.html?type=Flash',
                               filebrowserImageUploadUrl : '../../../auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                               filebrowserFlashUploadUrl : '../../../auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
                               });
                             </script>﻿
                        </div>
    
                        
    
                        <div class="form-group" >
    
                            <label for="is_featured" class="control-label">Nổi bật?</label>

                            <div class="onoffswitch">
                                <input type="hidden" name="is_featured" value="0">
                                <input type="checkbox" name="is_featured" class="onoffswitch-checkbox" id="is_featured" value="1"   class="form-control">
                                <label class="onoffswitch-label" for="is_featured">
                                    <span class="onoffswitch-inner"></span>
                                    <span class="onoffswitch-switch"></span>
                                </label>
                            </div>
                        </div>
    
                        <div class="clearfix"></div>
                    </div>
                </div>
            
            
            <div id="advanced-sortables" class="meta-box-sortables">
        <div id="seo_wrap" class="widget meta-boxes">
     <div class="widget-title">
          <h4><span>Tối ưu hoá bộ máy tìm kiếm (SEO)</span></h4>
     </div>
     @php
        $it = $blog;
     @endphp
     @include('admin.layout.seo-preview-edit')
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
            
        
                            <li class="breadcrumb-item"><a href="{{URL::route('blogs')}}">Tin tức</a></li>
            
        
                            <li class="breadcrumb-item active">Sửa bài viết</li>
            
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
        <select class="form-control ui-select ui-select" id="status" name="display">
            @if($blog->display == 1)
                <option value="1">Xuất bản</option>
                <option value="0">Bản nháp</option>
            @else
                <option value="0">Bản nháp</option>
                <option value="1">Xuất bản</option>
                
            @endif
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
                                                    @if($blog->lang == 'vi')
                                                    <img src="https://cms.botble.com/vendor/core/core/base/images/flags/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
                                                    @elseif($blog->lang == 'en')
                                                        <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                                                    @elseif($blog->lang == 'ko')
                                                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                                                    @elseif($blog->lang == 'ja')
                                                        <img src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
                                                    @endif
                                                </td>
                                                <td class="translation-column">
                                                    <div class="ui-select-wrapper">
                                                        <select name="lang" id="post_lang_choice" class="ui-select" aria-invalid="false">
                                                            @if($blog->lang == 'vi')
                                                                <option value="vi" selected="selected" data-flag="vn">Tiếng Việt</option>
                                                            @elseif($blog->lang == 'en')
                                                                <option value="en" selected="selected" data-flag="us">English</option>
                                                            @elseif($blog->lang == 'ko')
                                                                <option value="ko" selected="selected" data-flag="ko">Korean</option>
                                                            @elseif($blog->lang == 'ja')
                                                                <option value="ja" selected="selected" data-flag="ja">Japan</option>
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
                                <div><strong>Bản dịch</strong>
                                    @if($blog->lang == 'vi')
                                        @php
                                            $ko = $blog->langs()->where('lang','ko')->first();
                                            $en = $blog->langs()->where('lang','en')->first();
                                            $ja = $blog->langs()->where('lang','ja')->first();
                                        @endphp
                                        <div id="list-others-language">
                                            @if(isset($ko))
                                                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                                                
                                                <a href="{{URL::route('editBlog',$ko->blog_lang_id)}}" class="tip" title="Sửa bản dịch">Korean <i class="fa fa-edit"></i></a>
                                            @else
                                                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                                                <a href="{{URL::route('addBlog')}}?blog_id={{$blog->id}}&lang=ko" class="tip" title="Tạo bản dịch">Korean <i class="fa fa-plus"></i></a>
                                            @endif
                                            <br>
                                            @if(isset($en))
                                                <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                                                
                                                <a href="{{URL::route('editBlog',$en->blog_lang_id)}}" class="tip" title="Sửa bản dịch">English <i class="fa fa-edit"></i></a>
                                            @else
                                                <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                                                <a href="{{URL::route('addBlog')}}?blog_id={{$blog->id}}&lang=en" class="tip" title="Tạo bản dịch">English <i class="fa fa-plus"></i></a>
                                            @endif
                                            <br>
                                            @if(isset($ja))
                                                <img style="border: 1px solid #ececec;" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
                                                <a href="{{URL::route('editBlog',$ja->blog_lang_id)}}" class="tip" title="Sửa bản dịch">Japan <i class="fa fa-edit"></i></a>
                                            @else
                                                <img style="border: 1px solid #ececec;" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
                                                <a href="{{URL::route('addBlog')}}?blog_id={{$blog->id}}&lang=ja" class="tip" title="Tạo bản dịch">Japan <i class="fa fa-plus"></i></a>
                                            @endif
                                        </div>
                                    @else
                                        @php
                                            $blog_lang = App\BlogLang::where('blog_lang_id',$blog->id)->get()->first();
                                            $blog_vi = App\Blog::where('id',$blog_lang->blog_id)->with('langs')->get()->first();
                                            $ko = $blog_vi->langs()->where('lang','ko')->first();
                                            $en = $blog_vi->langs()->where('lang','en')->first();
                                            $ja = $blog_vi->langs()->where('lang','ja')->first();
                                        @endphp
                                        <div id="list-others-language">
                                            <img src="https://cms.botble.com/vendor/core/core/base/images/flags/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
                                            <a href="{{URL::route('editBlog',$blog_vi->id)}}" title="Sửa bản dịch Việt Nam"> Tiếng Việt <i class="fa fa-edit"></i></a>
                                            <br>
                                            @if(isset($ko))
                                                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                                                
                                                <a href="{{URL::route('editBlog',$ko->blog_lang_id)}}" class="tip" title="Sửa bản dịch">Korean <i class="fa fa-edit"></i></a>
                                            @else
                                                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                                                <a href="{{URL::route('addBlog')}}?blog_id={{$blog_vi->id}}&lang=ko" class="tip" title="Tạo bản dịch">Korean <i class="fa fa-plus"></i></a>
                                            @endif
                                            <br>
                                            @if(isset($en))
                                                <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                                                
                                                <a href="{{URL::route('editBlog',$en->blog_lang_id)}}" class="tip" title="Sửa bản dịch">English <i class="fa fa-edit"></i></a>
                                            @else
                                                <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                                                <a href="{{URL::route('addBlog')}}?blog_id={{$blog_vi->id}}&lang=en" class="tip" title="Tạo bản dịch">English <i class="fa fa-plus"></i></a>
                                            @endif
                                            <br>
                                            @if(isset($ja))
                                                <img style="border: 1px solid #ececec;" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
                                                <a href="{{URL::route('editBlog',$ja->blog_lang_id)}}" class="tip" title="Sửa bản dịch">Japan <i class="fa fa-edit"></i></a>
                                            @else
                                                <img style="border: 1px solid #ececec;" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
                                                <a href="{{URL::route('addBlog')}}?blog_id={{$blog_vi->id}}&lang=ja" class="tip" title="Tạo bản dịch">Japan <i class="fa fa-plus"></i></a>
                                            @endif
                                        </div>
                                    @endif
                                    
                                </div>
                            

                            </div>
                        </div>
                    </div>

                    <div class="widget meta-boxes">
                        <div class="widget-title">
                            <h4><label for="categories[]" class="control-label required" aria-required="true">Danh mục</label></h4>
                        </div>
                        <div class="widget-body">
                            <div class="form-group form-group-no-margin ">
                                <div class="multi-choices-widget list-item-checkbox mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" style="position: relative; overflow: visible; padding: 0px;">
                                    <div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical_horizontal mCSB_outside" tabindex="0" style="max-height: 320px; overflow-y: auto;">
                                        <div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y mCS_x_hidden mCS_no_scrollbar_x" style="position: relative; top: 0px; left: 0px; width: 343.5px;" dir="ltr">
                                            <ul>
                                                @php
                                                    $bcids = App\BCID::where('blog_id',$blog->id)->get();
                                                    
                                                @endphp
                                                @foreach($categories as $cate)
                                                    @php
                                                        $j=0;
                                                    @endphp
                                                    @foreach($bcids as $bcid)
                                                        @if($cate->id == $bcid->cate_id)
                                                            @php
                                                                $j=1;
                                                            @endphp
                                                            @break
                                                        @else
                                                        @endif

                                                    @endforeach

                                                    @if($j==1)
                                                        <li value="{{$cate->id}}">
                                                            <label>
                                                                <input type="checkbox" checked value="{{$cate->id}}" name="categories[]">
                                                                {{$cate->name}}
                                                            </label>
                                                        </li>
                                                        @php
                                                            $cate_childrens = App\BlogCate::where('parent_id',$cate->id)->get();
                                                        @endphp
                                                        @foreach($cate_childrens as $cate_children)
                                                            @php
                                                                $j=0;
                                                            @endphp
                                                            @foreach($bcids as $bcid)
                                                                @if($cate_children->id == $bcid->cate_id)
                                                                    @php
                                                                        $j=1;
                                                                    @endphp
                                                                    @break
                                                                @else
                                                                @endif

                                                            @endforeach

                                                            @if($j==1)
                                                                <li value="{{$cate_children->id}}" class="ml-30">
                                                                    <label>
                                                                        <input type="checkbox" checked value="{{$cate_children->id}}" name="categories[]">
                                                                        {{$cate_children->name}}
                                                                    </label>
                                                                </li>
                                                                
                                                            @else
                                                                <li value="{{$cate_children->id}}" class="ml-30">
                                                                    <label>
                                                                        <input type="checkbox" value="{{$cate_children->id}}" name="categories[]">
                                                                        {{$cate_children->name}}
                                                                    </label>
                                                                </li>
                                                            @endif
                                                        @endforeach
                                                    @else
                                                        <li value="{{$cate->id}}">
                                                            <label>
                                                                <input type="checkbox" value="{{$cate->id}}" name="categories[]">
                                                                {{$cate->name}}
                                                            </label>
                                                        </li>
                                                        @php
                                                            $cate_childrens = App\BlogCate::where('parent_id',$cate->id)->get();
                                                        @endphp
                                                        @foreach($cate_childrens as $cate_children)
                                                            @php
                                                                $j=0;
                                                            @endphp
                                                            @foreach($bcids as $bcid)
                                                                @if($cate_children->id == $bcid->cate_id)
                                                                    @php
                                                                        $j=1;
                                                                    @endphp
                                                                    @break
                                                                @else
                                                                @endif

                                                            @endforeach

                                                            @if($j==1)
                                                                <li value="{{$cate_children->id}}" class="ml-30">
                                                                    <label>
                                                                        <input type="checkbox" checked value="{{$cate_children->id}}" name="categories[]">
                                                                        {{$cate_children->name}}
                                                                    </label>
                                                                </li>
                                                                
                                                            @else
                                                                <li value="{{$cate_children->id}}" class="ml-30">
                                                                    <label>
                                                                        <input type="checkbox" value="{{$cate_children->id}}" name="categories[]">
                                                                        {{$cate_children->name}}
                                                                    </label>
                                                                </li>
                                                            @endif
                                                        @endforeach
                                                    @endif
                                                @endforeach
                                               
                                            </ul>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>

                        </div>
                    </div>


                    <div class="widget meta-boxes">
                        <div class="widget-title">
                            <h4><label for="image" class="control-label">Avata</label></h4>
                        </div>
                        <div class="widget-body">
                            <div class="image-box" style="border: 1px solid #e2e2e2;">
                                <div class="file-upload">   
                                    <div class="file-upload-content file-upload-content100" style="position: relative;">
                                        <img width="100%" class="file-upload-image file-upload-image100" src="{{asset('uploads/images/blogs/'.$blog->avata)}}" alt="your image" />
                                        <div class="image-title-wrap image-title-wrap100" style="position: absolute;top: 0px; right: 0px;">
                                            <button type="button" onclick="removeUploadTest(100)" class="remove-image">Ảnh đại diện</button>
                                        </div>
                                        <input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input100" type='file' name="avata" onchange="readURLTest(this,100);" accept="image/*" />
                                    </div>
                                </div>
    
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
    <script type="text/javascript">
        var url = $('input[name="url"]').attr('value');
        var a = url.lastIndexOf('-');
        url = url.slice(0,a);
        $('input[name="url"]').attr('value',url);
    </script>
@endsection