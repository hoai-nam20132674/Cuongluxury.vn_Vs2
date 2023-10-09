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
    <link rel="stylesheet" href="https://wowy.botble.com/vendor/core/plugins/ecommerce/css/ecommerce.css?v=1.22.0">
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
	        <li class="breadcrumb-item active">Thêm sản phẩm mới</li>
	    </ol>
        <div class="clearfix"></div>
        <div id="main">
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
            <form method="POST" action="{{URL::route('postAddProduct')}}" enctype="multipart/form-data" accept-charset="UTF-8" id="form_1aa3f76ebce588e61c3b18ff42edfa1a">
            <input type="hidden" name="_token" value="{{ csrf_token()}}">
                @if(isset($request->product_id))
                <div class="note note-success">
                    @php
                        
                        $pr = App\Product::where('id',$request->product_id)->get()->first();
                        
                    @endphp
                    @if($request->lang == 'vi')
                        <p>Bạn đang thêm bản dịch "<strong class="current_language_text">Tiếng Việt</strong>" cho sản phẩm <a href="#">{{$pr->name}}</a></p>
                    @elseif($request->lang == 'en')
                        <p>Bạn đang thêm bản dịch "<strong class="current_language_text">English</strong>" cho sản phẩm <a href="#">{{$pr->name}}</a></p>
                    @elseif($request->lang == 'ko')
                        <p>Bạn đang thêm bản dịch "<strong class="current_language_text">Korean</strong>" cho sản phẩm <a href="#">{{$pr->name}}</a></p>
                    @elseif($request->lang == 'ja')
                        <p>Bạn đang thêm bản dịch "<strong class="current_language_text">Japan</strong>" cho sản phẩm <a href="#">{{$pr->name}}</a></p>
                    @endif
                    
                </div>
                @endif
                <div class="row">
                    <div class="col-md-9">
                        <div class="main-form">
                            <div class="form-body">
                                <div class="form-group"  >
            
                                    <label for="name" class="control-label required">Tên sản phẩm</label>
                                    <input class="form-control" onchange="seo_preview()" placeholder="Nhập tên" data-counter="120" value="{{old('name')}}" name="name" type="text" required id="name" style="text-transform: capitalize;">
                                </div>
            
                                
                                <input type="hidden" name="model" value="">
                                <div class="form-group" style="display: none;" >
            
                                    <label for="content" class="control-label">Mô tả ngắn</label>
                                    <textarea class="form-control" rows="4" placeholder="Nội dung" data-counter="4000" name="short_description" cols="50" id="short_description">{{old('short_description')}}</textarea>
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
                                    <textarea class="form-control" rows="4" placeholder="Nội dung" data-counter="4000" name="content" cols="50" id="content">{{old('content')}}</textarea>
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
                        @if(isset($request->product_id))
                            
                        @else
                        <div class="widget meta-boxes">
                        
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
        			        				
        			        				
                                            <div class="col-md-3 col-xs-3 file" file="1" style="width:33%">
                                                <div class="file-upload">   
                                                    <div class="file-upload-content file-upload-content1" style="position: relative;">
                                                        <img width="100%" class="file-upload-image file-upload-image1" src="{{asset('uploads/images/icone-d-image-rouge.png')}}" alt="your image" />
                                                        <!-- <div class="image-title-wrap image-title-wrap1" style="position: absolute;top: 0px; right: 0px; width: 100%;height: 100%">
                                                            <button style="width: 100%; height: 100%; background: #17a2b8 ; color: #fff;" type="button" onclick="removeUploadTest(1)" class="remove-image"><i class="fa fa-plus" style="font-size: 50px"></i> <br>Thêm ảnh<br>sản phẩm</button>
                                                        </div> -->
                                                        <input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input1" type='file' file="1" id="images" name="images[]" onchange="renderImageUploads(this,1);" accept="image/*" multiple/>
                                                        
                                                    </div>
                                                </div>
                                            </div>
        			        			</div>
        			    			</div>
        						</div>
        			        </div>
        			    </div>
                        @endif

                        <div class="widget meta-boxes">
                            <div class="widget-title"><h4><span>Chi tiết</span></h4></div>
                            <div class="widget-body">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group"  >
            
                                            <label for="ma" class="control-label required">Mã sản phẩm</label>
                                            @if(isset($request->product_id))
                                                <input class="form-control" placeholder="nhập mã" value="{{$pr->ma}}" name="ma" type="text" required id="ma">
                                            @else
                                                <input class="form-control" placeholder="nhập mã" onchange="checkMa()" value="{{old('ma')}}" name="ma" type="text" required id="ma">
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group"  >
            
                                            <label for="ma" class="control-label required">Giá</label>
                                            @if(isset($request->product_id))
                                                <input class="form-control" placeholder="giá sản phẩm" value="{{$pr->price}}" oninput="replaceValue(this);" name="price" type="text" required id="price">
                                            @else
                                                <input class="form-control" placeholder="giá sản phẩm" oninput="replaceValue(this);" value="{{old('price')}}" name="price" type="text" required id="price">
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group"  >
            
                                            <label for="ma" class="control-label">Giá sale</label>
                                            @if(isset($request->product_id))
                                                <input class="form-control" placeholder="giá sale" value="{{$pr->sale}}" oninput="replaceValue(this);" name="sale" type="text" id="sale">
                                            @else
                                                <input class="form-control" placeholder="giá sale" oninput="replaceValue(this);" value="{{old('sale')}}" name="sale" type="text" id="sale">
                                            @endif
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group"  >
            
                                            <label for="ma" class="control-label required">Tiền tệ</label>
                                            <div class="ui-select-wrapper">
                                                <select class="form-control ui-select ui-select" id="tiente" name="tiente">
                                                    
                                                    <option value="0">VNĐ</option>
                                                    <option value="1">$$$</option>
                                                </select>
                                                <svg class="svg-next-icon svg-next-icon-size-16">
                                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group"  >
            
                                            <label for="ma" class="control-label required">Trạng thái</label>
                                            <div class="ui-select-wrapper">
                                                <select class="form-control ui-select ui-select" id="stock" name="stock">
                                                    
                                                    <option value="1">Còn hàng</option>
                                                    <option value="0">Hết hàng</option>
                                                </select>
                                                <svg class="svg-next-icon svg-next-icon-size-16">
                                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        <div class="widget meta-boxes">
                            <div class="widget-title"><h4><span>Thuộc tính</span></h4></div>
                            <div class="widget-body">
                                <div class="add-new-product-attribute-wrap">
                                    <!-- <input type="hidden" name="is_added_attributes" id="is_added_attributes" value="0"> -->
                                    <p>Thêm thuộc tính để tạo các phiên bản của sản phẩm</p>
                                    <div class="form-group">
                                        <div class="row">
                                            @foreach($properties as $item)
                                            <div class="col-md-2">
                                                <label>
                                                    <input type="checkbox" value="{{$item->id}}" name="properties_variation[]">{{$item->name}}
                                                </label>
                                            </div>
                                            @endforeach
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        
                        <div id="advanced-sortables" class="meta-box-sortables">
                            <div id="seo_wrap" class="widget meta-boxes">
                                <div class="widget-title">
                                    <h4><span>Tối ưu hoá bộ máy tìm kiếm (SEO)</span></h4>
                                </div>
                                @include('admin.layout.seo-preview')
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
                                <li class="breadcrumb-item"><a href="{{URL::route('products')}}">sản phẩm</a></li>
                                <li class="breadcrumb-item active">Thêm sản phẩm mới</li>
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
                                    <select class="form-control ui-select ui-select" id="display" name="display">
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
                        <input class="hidden" type="number" name="product_id" value="{{$request->product_id}}">
                        <div class="widget meta-boxes">
                            <div class="widget-title">
                                <h4><label for="highlight" class="control-label"> Sản phẩm nổi bật</label></h4>
                            </div>
                            <div class="widget-body">
                                <div class="form-group" >

                                    <label for="highlight" class="control-label">Nổi bật?</label>

                                    <div class="onoffswitch">
                                        <input type="hidden" name="highlight" value="0">
                                        <input type="checkbox" name="highlight" class="onoffswitch-checkbox" id="highlight" value="1"   class="form-control">
                                        <label class="onoffswitch-label" for="highlight">
                                            <span class="onoffswitch-inner"></span>
                                            <span class="onoffswitch-switch"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @if(isset($request->product_id))

                        @else
                        <div class="widget meta-boxes">
                        
                            <div class="widget-title">
                                <h4><label for="image" class="control-label">Ảnh đại diện</label></h4>
                            </div>
                            <div class="widget-body">
                                <div class="image-box" style="border: 1px solid #e2e2e2;">
                                    <div class="file-upload">   
                                        <div class="file-upload-content file-upload-content100" style="position: relative;">
                                            <img width="100%" class="file-upload-image file-upload-image100" src="{{asset('uploads/images/icone-d-image-rouge.png')}}" alt="your image" />
                                            <!-- <div class="image-title-wrap image-title-wrap100" style="position: absolute;top: 0px; right: 0px;">
                                                <button type="button" onclick="removeUploadTest(100)" class="remove-image">Ảnh bìa</button>
                                            </div> -->
                                            <input required style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input100" type='file' name="avata" onchange="readURLTest(this,100);" accept="image/*" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endif

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
    						                    	@foreach($categories as $cate)
    							                        <li value="{{$cate->id}}">
    									                    <label>
    													        <input type="checkbox" value="{{$cate->id}}" name="categories[]">
    													        {{__($cate->name)}}
    													    </label>
    							                        </li>
                                                        @php
                                                            $cate_childrens = App\ProductCate::where('parent_id',$cate->id)->get();
                                                        @endphp
                                                        @foreach($cate_childrens as $cate_children)
                                                            <li value="{{$cate_children->id}}" class="ml-30">
                                                                <label>
                                                                    <input type="checkbox" value="{{$cate_children->id}}" name="categories[]">
                                                                    {{__($cate_children->name)}}
                                                                </label>
                                                            </li>
                                                        @endforeach
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
                                <h4><label for="properties_filter[]" class="control-label required" aria-required="true">Bộ lọc sản phẩm</label></h4>
                            </div>
                            <div class="widget-body">
                                <div class="form-group form-group-no-margin ">
                                    <div class="multi-choices-widget list-item-checkbox mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar" style="position: relative; overflow: visible; padding: 0px;">
                                        <div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical_horizontal mCSB_outside" tabindex="0" style="max-height: 320px; overflow-y: auto;">
                                            <div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y mCS_x_hidden mCS_no_scrollbar_x" style="position: relative; top: 0px; left: 0px; width: 343.5px;" dir="ltr">
                                                <ul>
                                                    @foreach($properties as $pp)
                                                        
                                                        <li value="" class="">
                                                            <label>
                                                                <i class='bx bx-chevron-right'></i>
                                                                {{__($pp->name)}}
                                                            </label>
                                                        </li>
                                                        @php
                                                            $values = $pp->propertie_values;
                                                        @endphp
                                                        @foreach($values as $value)
                                                            
                                                            <li value="{{$value->id}}" class="ml-30">
                                                                <label>
                                                                    <input type="checkbox" value="{{$value->id}}" name="properties_filter[]">
                                                                    {{__($value->value)}}
                                                                </label>
                                                            </li>
                                                        @endforeach
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
    <script type="text/javascript">
			
		function more_image(){
            var i = parseInt($("input[type=file]").length);
            i=i+1;
            var more_image = $("#more_image");
            more_image.append('<div class="col-md-3 col-xs-3 file" file="'+i+'" style="width:33%" ><div class="file-upload"><div class="file-upload-content file-upload-content'+i+'" style="position: relative;"><img width="100%" class="file-upload-image file-upload-image'+i+'" src="{{asset("uploads/images/icone-d-image-rouge.png")}}" alt="your image" /><div class="image-title-wrap image-title-wrap'+i+'" style="position: absolute;top: 0px; right: 0px; width: 100%;height: 100%"><button style="width: 100%; height: 100%; background: #17a2b8 ; color: #fff;" type="button" onclick="removeUploadTest('+i+')" class="remove-image"><i class="fa fa-plus" style="font-size: 50px"></i> <br>Thêm ảnh<br>sản phẩm</button></div><input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input'+i+'" type="file" file="'+i+'" id="images" name="images[]" onchange="renderImageUploads(this,'+i+');" accept="image/*" multiple/></div></div></div>');
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
        function replaceValue(e){
            val = e.value;
            val = val.replace(/\D/g,'');
            if(val<1000){
                // value = value*1000;
            }
            val = addCommas(val);
            e.value = val;
            // console.log(e);
        }
        function checkMa(){
            ma = $('input[name="ma"]').val();
            url = '/admin/product/checkMa/'+ma+'?lang=vi';
            $.ajax({
                type: 'GET',
                url: url,
                dataType: 'html',
                success: function(data) {
                    if(data ==1 ){
                      toastr.warning('Mã sản phẩm đã tồn tại');
                      
                    }
                    else{
                      
                    }
                }
            });
        }
		
	</script>
@endsection