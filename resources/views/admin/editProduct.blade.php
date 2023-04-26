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
            <li class="breadcrumb-item"><a href="{{URL::route('products')}}">sản phẩm</a></li>
            <li class="breadcrumb-item active">Sửa sản phẩm</li>
        </ol>


                    <div class="clearfix"></div>
                    <div id="main">
                        <form method="POST" action="{{URL::route('postEditProduct',$product->id)}}" enctype="multipart/form-data" accept-charset="UTF-8" id="form_1aa3f76ebce588e61c3b18ff42edfa1a">
                            <div class="note note-success">
                                @php
                                    if($product->lang != 'vi'){
                                        $pr_lang = App\ProductLang::where('product_lang_id',$product->id)->where('lang',$product->lang)->get()->first();
                                        $pr = App\Product::where('id',$pr_lang->product_id)->first();
                                    }
                                @endphp
                                @if($product->lang == 'vi')
                                    <p>Bạn đang sửa bản dịch "<strong class="current_language_text">Tiếng Việt</strong>" cho sản phẩm <a href="#">{{$product->name}}</a></p>
                                @elseif($product->lang == 'en')
                                    <p>Bạn đang sửa bản dịch "<strong class="current_language_text">English</strong>" cho sản phẩm <a href="#">{{$pr->name}}</a></p>
                                @elseif($product->lang == 'ko')
                                    <p>Bạn đang sửa bản dịch "<strong class="current_language_text">Korean</strong>" cho sản phẩm <a href="#">{{$pr->name}}</a></p>
                                @elseif($product->lang == 'ja')
                                    <p>Bạn đang sửa bản dịch "<strong class="current_language_text">Japan</strong>" cho sản phẩm <a href="#">{{$pr->name}}</a></p>
                                @endif
                                
                            </div>
                            <input type="hidden" name="_token" value="{{ csrf_token()}}">
                            @if( Session::has('flash_message'))
                                <div class="note note-animation note-{{ Session::get('flash_level')}}">
                                    <p>{{ Session::get('flash_message')}}</p>
                                </div>
                            @endif
                            @if( count($errors) > 0)
                                
                                @foreach($errors->all() as $error)
                                    <div class="note node-animation note-danger">
                                        <p>{{$error}}</p>
                                    </div>
                                @endforeach
                                    
                            @endif
    
        <div class="row">
        <div class="col-md-9">
                <div class="main-form">
                    <div class="form-body">
                        <div class="form-group"  >
    
                            <label for="name" class="control-label required">Tên sản phẩm</label>
                            <input class="form-control" placeholder="Nhập tên" data-counter="120" name="name" type="text" value="{{$product->name}}" required id="name">
                        </div>
    
                        
                        <input type="hidden" name="model" value="">
                        <div class="form-group"  >
    
                            <label for="ma" class="control-label required">Mã sản phẩm</label>
                            <input class="form-control" placeholder="Nhập mã" data-counter="120" name="ma" type="text" value="{{$product->ma}}" required id="ma">
                        </div>

                        <div class="form-group"  >
                            @php
                                $das = App\ProductCate::where('parent_id','!=',null)->where('lang','vi')->get();
                            @endphp
                            <label for="da" class="control-label required">Dự án</label>
                            <div class="ui-select-wrapper">
                                <select class="form-control select-search-full ui-select ui-select" id="da" name="da">
                                    @if($product->da == null)
                                        <option value="">--Chọn dự án--</option>
                                        @foreach($das as $da)
                                            <option value="{{$da->name}}">{{__($da->name)}}</option>
                                        @endforeach
                                    @else
                                        @foreach($das as $da)
                                            @if($da->name == $product->da)
                                                <option selected value="{{$da->name}}">{{__($da->name)}}</option>
                                            @else
                                                <option value="{{$da->name}}">{{__($da->name)}}</option>
                                            @endif
                                        @endforeach
                                    @endif
                                </select>
                                <svg class="svg-next-icon svg-next-icon-size-16">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
                                </svg>
                            </div>
                        </div>

                        <div class="form-group" style="display: none;" >
                
                            <label for="content" class="control-label">Mô tả ngắn</label>
                            <textarea class="form-control" rows="4" placeholder="Nội dung" data-counter="4000" name="short_description" cols="50" id="short_description">{{$product->short_description}}</textarea>
                            <script type="text/javascript">
                              var editor = CKEDITOR.replace('short_description',{
                               language:'vi',
                               filebrowserImageBrowseUrl : '/auth/ckfinder/ckfinder.html?type=Images',
                               filebrowserFlashBrowseUrl : '/auth/ckfinder/ckfinder.html?type=Flash',
                               filebrowserImageUploadUrl : '/auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                               filebrowserFlashUploadUrl : '/auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
                               });
                             </script>﻿
                        </div>
    
                        <div class="form-group"  >
    
                            <label for="content" class="control-label">Giới thiệu</label>
                            <textarea class="form-control" rows="4" placeholder="Nội dung" data-counter="400" name="content" cols="50" id="content">{{$product->content}}</textarea>
                            <script type="text/javascript">
                              var editor = CKEDITOR.replace('content',{
                               language:'vi',
                               filebrowserImageBrowseUrl : '/auth/ckfinder/ckfinder.html?type=Images',
                               filebrowserFlashBrowseUrl : '/auth/ckfinder/ckfinder.html?type=Flash',
                               filebrowserImageUploadUrl : '/auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
                               filebrowserFlashUploadUrl : '/auth/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
                               });
                             </script>﻿
                        </div>
    
                        
    
                        
    
                        <div class="clearfix"></div>
                    </div>
                </div>

                @if($product->lang == 'vi')
                    <div class="widget meta-boxes">
                @else
                    <div class="widget meta-boxes" style="pointer-events: none;">
                    
                @endif
                    <div class="widget-title">
                        <h4>
                            <span>Ảnh chi tiết</span>
                        </h4>
                        <button style="float: right;" type="button" onclick="more_image()" value="plus" class="btn btn-info">
                            <i class="fa fa-plus"></i> Thêm ảnh
                        </button>
                    </div>
                    <div class="widget-body">
                        <div class="product-images-wrapper">
                
                            <div class="images-wrapper">
                                <div class="row" id="more_image">
                                    @php
                                        $images = $product->images()->where('role',0)->get();
                                        $avata = $product->images()->where('role',1)->get()->first();
                                        $stt = 1;
                                    @endphp
                                    @if(count($images) == 0)
                                        <div class="col-md-3 col-xs-3 file" file="1" style="width:33%">
                                            <div class="file-upload">   
                                                <div class="file-upload-content file-upload-content1" style="position: relative;">
                                                    <img width="100%" class="file-upload-image file-upload-image1" src="{{asset('uploads/images/icon-image.gif')}}" alt="your image" />
                                                    <div class="image-title-wrap image-title-wrap1" style="position: absolute;top: 0px; right: 0px; width: 100%;height: 100%">
                                                        <button style="width: 100%; height: 100%; background: #17a2b8 ; color: #fff;" type="button" onclick="removeUploadTest(1)" class="remove-image"><i class="fa fa-plus" style="font-size: 50px"></i> <br>Thêm ảnh<br>sản phẩm</button>
                                                    </div>
                                                    <input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input1" type='file' file="1" id="images" name="images[]" onchange="renderImageUploads(this,1);" accept="image/*" multiple/>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    @else
                                        @foreach($images as $image)
                                            <div class="col-md-3 col-xs-3 file" file="{{$stt}}" style="width: 33%;">
                                                <div class="file-upload" style="position: relative;">   
                                                    <div class="file-upload-content file-upload-content{{$image->id+20}}" style="position: relative;">
                                                        <img width="100%" class="file-upload-image file-upload-image{{$image->id+20}}" src="{{asset('uploads/images/products/details/'.$image->url)}}" alt="your image" />
                                                        <div class="image-title-wrap image-title-wrap{{$image->id+20}}" style="position: absolute;top: 0px; right: 0px;">

                                                        </div>
                                                        <input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input{{$image->id+20}}" type='file' name="{{$image->id}}" onchange="readURLTest(this,{{$image->id+20}});" accept="image/*" />
                                                    </div>
                                                    <a title="Xóa ảnh" class="btn btn-icon btn-sm btn-danger deleteDialog delete delete-image" file="{{$stt}}" data-toggle="tooltip" data-section="{{URL::route('deleteProductImage',$image->id)}}" role="button" data-original-title="Xóa bản ghi" style="position: absolute; top: 0px; right: 0px; z-index: 10000;">
                                                        <i class="fa fa-times"></i>
                                                    </a>
                                                </div>
                                                
                                            </div>
                                            @php
                                                $stt++;
                                            @endphp
                                        @endforeach
                                        <div class="col-md-3 col-xs-3 file" file="{{$stt}}" style="width:33%">
                                            <div class="file-upload">   
                                                <div class="file-upload-content file-upload-content1" style="position: relative;">
                                                    <img width="100%" class="file-upload-image file-upload-image1" src="{{asset('uploads/images/icon-image.gif')}}" alt="your image" />
                                                    <div class="image-title-wrap image-title-wrap1" style="position: absolute;top: 0px; right: 0px; width: 100%;height: 100%">
                                                        <button style="width: 100%; height: 100%; background: #17a2b8 ; color: #fff;" type="button" onclick="removeUploadTest(1)" class="remove-image"><i class="fa fa-plus" style="font-size: 50px"></i> <br>Thêm ảnh<br>sản phẩm</button>
                                                    </div>
                                                    <input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input1" type='file' file="{{$stt}}" id="images" name="images[]" onchange="renderImageUploads(this,{{$stt}});" accept="image/*" multiple/>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    @endif
                                    
                                </div>

                    
                    
                            </div>
                        </div>

                    </div>
                </div>

            
            <!-- end Modal -->
            
            <div id="advanced-sortables" class="meta-box-sortables">
        <div id="seo_wrap" class="widget meta-boxes">
     <div class="widget-title">
          <h4><span>Tối ưu hoá bộ máy tìm kiếm (SEO)</span></h4>
     </div>
     @php
        $it = $product;
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
                        <button type="submit" onclick="showloading()" name="submit" value="save" class="btn btn-info">
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
            <li class="breadcrumb-item"><a href="{{URL::route('products')}}">sản phẩm</a></li>
            <li class="breadcrumb-item active">Sửa sản phẩm</li>
        </ol>


    <div class="btn-set">
                <button type="submit" onclick="showloading()" name="submit" value="save" class="btn btn-info">
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
            <select class="form-control ui-select ui-select" id="display" name="display">
                @if($product->display == 1)
                <option value="1">Xuất bản</option>
                <option value="0">Bản nháp</option>
                @else
                <option value="0">Bản nháp</option>
                <option value="1">Xuất bản</option>
                
                @endif
            </select>
            
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
                                @if($product->lang == 'vi')
                                <img src="https://cms.botble.com/vendor/core/core/base/images/flags/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
                                @elseif($product->lang == 'en')
                                    <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                                @elseif($product->lang == 'ko')
                                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                                @elseif($product->lang == 'ja')
                                    <img src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
                                @endif
                            </td>
                            <td class="translation-column">
                                <div class="ui-select-wrapper">
                                    <select name="lang" id="post_lang_choice" class="ui-select" aria-invalid="false">
                                        @if($product->lang == 'vi')
                                            <option value="vi" selected="selected" data-flag="vn">Tiếng Việt</option>
                                        @elseif($product->lang == 'en')
                                            <option value="en" selected="selected" data-flag="us">English</option>
                                        @elseif($product->lang == 'ko')
                                            <option value="ko" selected="selected" data-flag="ko">Korean</option>
                                        @elseif($product->lang == 'ja')
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
                @if($product->lang == 'vi')
                    @php
                        $ko = $product->langs()->where('lang','ko')->first();
                        $en = $product->langs()->where('lang','en')->first();
                        $ja = $product->langs()->where('lang','ja')->first();
                    @endphp
                    <div id="list-others-language">
                        @if(isset($ko))
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                            
                            <a href="{{URL::route('editProduct',$ko->product_lang_id)}}" class="tip" title="Sửa bản dịch">Korean <i class="fa fa-edit"></i></a>
                        @else
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                            <a href="{{URL::route('addProduct')}}?product_id={{$product->id}}&lang=ko" class="tip" title="Tạo bản dịch">Korean <i class="fa fa-plus"></i></a>
                        @endif
                        <br>
                        @if(isset($en))
                            <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                            
                            <a href="{{URL::route('editProduct',$en->product_lang_id)}}" class="tip" title="Sửa bản dịch">English <i class="fa fa-edit"></i></a>
                        @else
                            <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                            <a href="{{URL::route('addProduct')}}?product_id={{$product->id}}&lang=en" class="tip" title="Tạo bản dịch">English <i class="fa fa-plus"></i></a>
                        @endif
                        <br>
                        @if(isset($ja))
                            <img style="border: 1px solid #ececec;" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
                            <a href="{{URL::route('editProduct',$ja->product_lang_id)}}" class="tip" title="Sửa bản dịch">Japan <i class="fa fa-edit"></i></a>
                        @else
                            <img style="border: 1px solid #ececec;" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
                            <a href="{{URL::route('addProduct')}}?product_id={{$product->id}}&lang=ja" class="tip" title="Tạo bản dịch">Japan <i class="fa fa-plus"></i></a>
                        @endif
                    </div>
                @else
                    @php
                        $pr_lang = App\ProductLang::where('product_lang_id',$product->id)->get()->first();
                        $product_vi = App\Product::where('id',$pr_lang->product_id)->with('langs')->get()->first();
                        $ko = $product_vi->langs()->where('lang','ko')->first();
                        $en = $product_vi->langs()->where('lang','en')->first();
                        $ja = $product_vi->langs()->where('lang','ja')->first();
                    @endphp
                    <div id="list-others-language">
                        <img src="https://cms.botble.com/vendor/core/core/base/images/flags/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
                        <a href="{{URL::route('editProduct',$product_vi->id)}}" title="Sửa bản dịch Việt Nam"> Tiếng Việt <i class="fa fa-edit"></i></a>
                        <br>
                        @if(isset($ko))
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                            
                            <a href="{{URL::route('editProduct',$ko->product_lang_id)}}" class="tip" title="Sửa bản dịch">Korean <i class="fa fa-edit"></i></a>
                        @else
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Korean" width="16" alt="Korean">
                            <a href="{{URL::route('addProduct')}}?product_id={{$product_vi->id}}&lang=ko" class="tip" title="Tạo bản dịch">Korean <i class="fa fa-plus"></i></a>
                        @endif
                        <br>
                        @if(isset($en))
                            <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                            
                            <a href="{{URL::route('editProduct',$en->product_lang_id)}}" class="tip" title="Sửa bản dịch">English <i class="fa fa-edit"></i></a>
                        @else
                            <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="English" width="16" alt="English">
                            <a href="{{URL::route('addProduct')}}?product_id={{$product_vi->id}}&lang=en" class="tip" title="Tạo bản dịch">English <i class="fa fa-plus"></i></a>
                        @endif
                        <br>
                        @if(isset($ja))
                            <img style="border: 1px solid #ececec;" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
                            <a href="{{URL::route('editProduct',$ja->product_lang_id)}}" class="tip" title="Sửa bản dịch">Japan <i class="fa fa-edit"></i></a>
                        @else
                            <img style="border: 1px solid #ececec;" src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="Japan" width="16" alt="Japan">
                            <a href="{{URL::route('addProduct')}}?product_id={{$product_vi->id}}&lang=ja" class="tip" title="Tạo bản dịch">Japan <i class="fa fa-plus"></i></a>
                        @endif
                    </div>
                @endif
                
            </div>
        

        </div>
    </div>
</div>
<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="highlight" class="control-label"> Sản phẩm nổi bật</label></h4>
    </div>
    <div class="widget-body">
        <div class="form-group" >

            <label for="highlight" class="control-label">Nổi bật?</label>

            <div class="onoffswitch">
                @if($product->highlight ==0)
                <input type="hidden" name="highlight" value="0">
                <input type="checkbox" name="highlight" class="onoffswitch-checkbox" id="highlight" value="1" class="form-control">
                <label class="onoffswitch-label" for="highlight">
                    <span class="onoffswitch-inner"></span>
                    <span class="onoffswitch-switch"></span>
                </label>
                @else
                <input type="hidden" name="highlight" value="0">
                <input type="checkbox" name="highlight" class="onoffswitch-checkbox" id="highlight" value="1" checked class="form-control">
                <label class="onoffswitch-label" for="highlight">
                    <span class="onoffswitch-inner"></span>
                    <span class="onoffswitch-switch"></span>
                </label>
                @endif
            </div>
        </div>
    </div>
</div>
@if($product->lang == 'vi')
    <div class="widget meta-boxes">
@else
    <div class="widget meta-boxes" style="pointer-events: none;">
    
@endif
    <div class="widget-title">
        <h4><label for="image" class="control-label">Ảnh bìa</label></h4>
    </div>
    <div class="widget-body">
        <div class="image-box" style="border: 1px solid #e2e2e2;">
            <div class="file-upload">   
                <div class="file-upload-content file-upload-content100" style="position: relative;">
                    <img width="100%" class="file-upload-image file-upload-image100" src="{{asset('uploads/images/products/details/'.$product->avata)}}" alt="your image" />
                    <div class="image-title-wrap image-title-wrap100" style="position: absolute;top: 0px; right: 0px;">
                        <button type="button" onclick="removeUploadTest(100)" class="remove-image">Ảnh bìa</button>
                    </div>
                    <input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input100" type='file' name="avata" onchange="readURLTest(this,100);" accept="image/*" />
                </div>
            </div>
        </div>
    </div>
</div>
<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="lbds" class="control-label required">Loại BĐS</label></h4>
    </div>
    <div class="widget-body">
        <div class="ui-select-wrapper">
            <select class="form-control ui-select ui-select" id="lbds" name="lbds">
                @if($product->lbds == 0)
                    <option selected value="0">Bán</option>
                    <option value="1">Cho Thuê</option>
                @else
                    <option value="0">Bán</option>
                    <option selected value="1">Cho Thuê</option>
                @endif
                
            </select>
            <svg class="svg-next-icon svg-next-icon-size-16">
            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
            </svg>
        </div>
    </div>
</div>
<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="bed" class="control-label required">Số phòng ngủ</label></h4>
    </div>
    <div class="widget-body">
        <div class="ui-select-wrapper">
            <select class="form-control ui-select ui-select" id="bed" name="bed">
                <option selected value="{{$product->bed}}">{{$product->bed}}</option>
                <option value="1PN">{{__('1PN')}}</option>
                <option value="1PN+1">{{__('1PN+1')}}</option>
                <option value="2PN">{{__('2PN')}}</option>
                <option value="2PN+1">{{__('2PN+1')}}</option>
                <option value="3PN">{{__('3PN')}}</option>
                <option value="3PN+1">{{__('3PN+1')}}</option>
                <option value="4PN">{{__('4PN')}}</option>
                <option value="5PN">{{__('5PN')}}</option>
                <option value="Dual Key">{{__('Dual Key')}}</option>
                <option value="Studio">{{__('Studio')}}</option>
            </select>
            <svg class="svg-next-icon svg-next-icon-size-16">
            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
            </svg>
        </div>
    </div>
</div>
<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="bath" class="control-label required">Số phòng vệ sinh</label></h4>
    </div>
    <div class="widget-body">
        <div class="ui-select-wrapper">
            <select class="form-control ui-select ui-select" id="bath" name="bath">
                <option selected value="{{$product->bath}}">{{$product->bath}} Phòng vs</option>
                <option value="1">1 Phòng vs</option>
                <option value="2">2 Phòng vs</option>
                <option value="3">3 Phòng vs</option>
                <option value="4">4 Phòng vs</option>
                <option value="5">5 Phòng vs</option>
            </select>
            <svg class="svg-next-icon svg-next-icon-size-16">
            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
            </svg>
        </div>
    </div>
</div>
<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="area" class="control-label" aria-required="fale">Diện tích (m2)</label></h4>
    </div>
    <div class="main-form" style="margin-bottom: 0px">
        <div class="form-body">
            <div class="form-group" style="margin-bottom: 0px" >
                <input class="form-control" placeholder="Diện tích" min="1" value="{{$product->area}}" name="area" type="number" id="area">
            </div>
            <input type="hidden" name="model" value="">
            <div class="clearfix"></div>
        </div>
    </div>
    
</div>
<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="nt" class="control-label required">Nội thất</label></h4>
    </div>
    <div class="widget-body">
        <div class="ui-select-wrapper">
            <select name="nt" id="nt" class="form-control ui-select ui-select">
                <option value="{{$product->nt}}">{{__($product->nt)}}</option>
                <option value="Cơ bản">{{__('Cơ bản')}}</option>
                <option value="Full">{{__('Full')}}</option>
                <option value="Bán full">{{__('Bán full')}}</option>
                <option value="Thô">{{__('Thô')}}</option>
                
            </select>
            <svg class="svg-next-icon svg-next-icon-size-16">
            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
            </svg>
        </div>
    </div>
</div>

<div class="widget meta-boxes">
    <div class="widget-title">
        <h4><label for="huong" class="control-label required">Hướng</label></h4>
    </div>
    <div class="widget-body">
        <div class="ui-select-wrapper">
            <select name="huong" class="form-control ui-select ui-select">
                <option value="{{$product->huong}}">{{__($product->huong)}}</option>
                <option value="Tây, Nam">{{__('Tây Nam')}}</option>
                <option value="Tây Nam - Tây Bắc">{{__('Tây Nam - Tây Bắc')}}</option>
                <option value="Tây Bắc - Đông Bắc">{{__('Tây Bắc - Đông Bắc')}}</option>
                <option value="Tây Bắc">{{__('Tây Bắc')}}</option>
                <option value="Đông Nam - Đông Bắc">{{__('Đông Nam - Đông Bắc')}}</option>
                <option value="Đông Nam">{{__('Đông Nam')}}</option>
                <option value="Đông Nam - Tây Nam">{{__('Đông Nam - Tây Nam')}}</option>
                <option value="Đông Bắc">{{__('Đông Bắc')}}</option>
                <option value="Chính Tây">{{__('Chính Tây')}}</option>
                <option value="Chính Nam">{{__('Chính Nam')}}</option>
                <option value="Chính Đông">{{__('Chính Đông')}}</option>
                <option value="Chính Bắc">{{__('Chính Bắc')}}</option>
            </select>
            <svg class="svg-next-icon svg-next-icon-size-16">
            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
            </svg>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-8">
        <div class="widget meta-boxes">
            <div class="widget-title">
                <h4><label for="price" class="control-label required" aria-required="true">Giá bán</label></h4>
            </div>
            <div class="widget-body">
                <div class="" style="margin-bottom: 0px">
                    <div class="form-body">
                        <div class="" style="margin-bottom: 0px" >
                            
                            <input list="price" required class="form-control" value="{{$product->price}}" placeholder="Giá bán" oninput="replaceValue();" name="price" type="text" >
                            
                        </div>
                        <input type="hidden" name="model" value="">
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="widget meta-boxes">
            <div class="widget-title">
                <h4><label for="tiente" class="control-label required">Tiền tệ</label></h4>
            </div>
            <div class="widget-body">
                <div class="ui-select-wrapper">
                    <select class="form-control ui-select ui-select" id="tiente" name="tiente">
                        @if($product->tiente == 0)
                            <option selected value="0">VNĐ</option>
                            <option value="1">$$$</option>
                        @else
                            <option value="0">VNĐ</option>
                            <option selected value="1">$$$</option>
                        @endif
                        
                    </select>
                    <svg class="svg-next-icon svg-next-icon-size-16">
                    <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
                    </svg>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="widget meta-boxes">
            <div class="widget-title">
                <h4><label for="sale" class="control-label" aria-required="fale">Giá giảm</label></h4>
            </div>
            
                <div class="main-form" style="margin-bottom: 0px">
                    <div class="form-body">
                        <div class="form-group" style="margin-bottom: 0px" >
                            <input class="form-control" oninput="replaceValueSale();" placeholder="Giá giảm" value="{{$product->sale}}" name="sale" type="text" id="sale">
                        </div>


                        <input type="hidden" name="model" value="">



                        <div class="clearfix"></div>
                    </div>
                </div>
            
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="widget meta-boxes">
            <div class="widget-title">
                <h4><label for="view" class="control-label" aria-required="fale">Số lượng tiếp cận</label></h4>
            </div>
            
                <div class="main-form" style="margin-bottom: 0px">
                    <div class="form-body">
                        <div class="form-group" style="margin-bottom: 0px" >
                            <input class="form-control" placeholder="Số người tiếp cận" value="{{$product->view}}" name="view" type="number" id="view">
                        </div>


                        <input type="hidden" name="model" value="">



                        <div class="clearfix"></div>
                    </div>
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
                                                    $pcids = App\PCID::where('product_id',$product->id)->get();
                                                    
                                                @endphp
                                                @foreach($categories as $cate)
                                                    @php
                                                        $j=0;
                                                    @endphp
                                                    @foreach($pcids as $pcid)
                                                        @if($cate->id == $pcid->cate_id)
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
                                                            $cate_childrens = App\ProductCate::where('parent_id',$cate->id)->get();
                                                        @endphp
                                                        @foreach($cate_childrens as $cate_children)
                                                            @php
                                                                $j=0;
                                                            @endphp
                                                            @foreach($pcids as $pcid)
                                                                @if($cate_children->id == $pcid->cate_id)
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
                                                            $cate_childrens = App\ProductCate::where('parent_id',$cate->id)->get();
                                                        @endphp
                                                        @foreach($cate_childrens as $cate_children)
                                                            @php
                                                                $j=0;
                                                            @endphp
                                                            @foreach($pcids as $pcid)
                                                                @if($cate_children->id == $pcid->cate_id)
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
    <script src="{{asset('js/admin/jquery.dataTables.min.js')}}"></script>
    <script src="{{asset('js/admin/table.js')}}"></script>
    <script type="text/javascript">
        function showloading(){
            $('.preloader').show();
        }
        function more_image(){
            var i = parseInt($(".file").length);
            i=i+1;
            var more_image = $("#more_image");
            more_image.append('<div class="col-md-3 col-xs-3 file" file="'+i+'" style="width:33%" ><div class="file-upload"><div class="file-upload-content file-upload-content'+i+'" style="position: relative;"><img width="100%" class="file-upload-image file-upload-image'+i+'" src="{{asset("uploads/images/icon-image.gif")}}" alt="your image" /><div class="image-title-wrap image-title-wrap'+i+'" style="position: absolute;top: 0px; right: 0px; width: 100%;height: 100%"><button style="width: 100%; height: 100%; background: #17a2b8 ; color: #fff;" type="button" onclick="removeUploadTest('+i+')" class="remove-image"><i class="fa fa-plus" style="font-size: 50px"></i> <br>Thêm ảnh<br>sản phẩm</button></div><input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input'+i+'" type="file" file="'+i+'" id="images" name="images[]" onchange="renderImageUploads(this,'+i+');" accept="image/*" multiple/></div></div></div>');
            i++;
        };
        function importDataValue(){
            // var value = $("#user_id option[value=" + $('#input[name="user_id"]').val() + "]").attr('data-value');
            var input_value = $('input[name="user_id"]').val();
            var e = $('#user_id').children('option[value="'+input_value+'"]').attr('data-value');
            e = input_value+'-'+e;
            if(e=='-undefined'){
                $('input[name="user_id"]').val('');
            }
            else{
                $('input[name="user_id"]').val(e);
            }
            console.log(e.length);
        }
        // format number
        function addCommas(nStr)
        {
            nStr += '';
            x = nStr.split('.');
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + ',' + '$2');
            }
            return x1 + x2;
        }
        // end format number
        function replaceValue(){
            value = $('input[name="price"]').val();
            value = value.replace(/\D/g,'');
            // if(value<1000){
            //     value = value*1000;
            // }
            value = addCommas(value);
            $('input[name="price"]').val(value);
            // console.log(value);
        }
        function replaceValueSale(){
            value = $('input[name="sale"]').val();
            value = value.replace(/\D/g,'');
            // if(value<1000){
            //     value = value*1000;
            // }
            value = addCommas(value);
            $('input[name="sale"]').val(value);
            // console.log(value);
        }
        price = $('input[name="price"]').val();
        price = addCommas(price);
        $('input[name="price"]').val(price);
        sale = $('input[name="sale"]').val();
        sale = addCommas(sale);
        $('input[name="sale"]').val(sale);
        
    </script>
    <script type="text/javascript">
        var url = $('input[name="url"]').attr('value');
        var a = url.lastIndexOf('-');
        url = url.slice(0,a);
        $('input[name="url"]').attr('value',url);
    </script>
@endsection