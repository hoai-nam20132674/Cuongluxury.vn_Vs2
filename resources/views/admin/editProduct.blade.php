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
    <link media="all" type="text/css" rel="stylesheet" href="https://wowy.botble.com/vendor/core/plugins/ecommerce/css/ecommerce.css?v=1.22.1">
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
                                                    <img width="100%" class="file-upload-image file-upload-image1" src="{{asset('uploads/images/icone-d-image-rouge.png')}}" alt="your image" />
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
                                                    <img width="100%" class="file-upload-image file-upload-image1" src="{{asset('uploads/images/icone-d-image-rouge.png')}}" alt="your image" />
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

                <div class="widget meta-boxes">
                    <div class="widget-title"><h4><span>Chi tiết</span></h4></div>
                    <div class="widget-body">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group"  >
    
                                    <label for="ma" class="control-label required">Mã sản phẩm</label>
                                    @if(isset($request->product_id))
                                        <!-- <input class="form-control" placeholder="nhập mã" value="{{$pr->ma}}" name="ma" type="text" required id="ma"> -->
                                    @else
                                        <input class="form-control" placeholder="nhập mã" onchange="checkMa()" value="{{$product->ma}}" name="ma" type="text" required id="ma">
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group"  >
    
                                    <label for="ma" class="control-label required">Giá</label>
                                    @if(isset($request->product_id))
                                    @else
                                        <input class="form-control" placeholder="giá sản phẩm" oninput="replaceValue(this)" value="{{$product->price}}" name="price" type="text" required id="price">
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group"  >
    
                                    <label for="ma" class="control-label">Giá sale</label>
                                    @if(isset($request->product_id))
                                    @else
                                        <input class="form-control" placeholder="giá sale" oninput="replaceValue(this)" value="{{$product->sale}}" name="sale" type="text" id="sale">
                                    @endif
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group"  >
    
                                    <label for="ma" class="control-label required">Tiền tệ</label>
                                    <div class="ui-select-wrapper">
                                        <select class="form-control ui-select ui-select" id="tiente" name="tiente">
                                            @if($product->tiente)
                                                <option value="0">VNĐ</option>
                                                <option value="1" selected>$$$</option>
                                            @else
                                                <option value="0" selected>VNĐ</option>
                                                <option value="1">$$$</option>
                                            @endif
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
                                            @if($product->stock)
                                                <option value="1" selected>Còn hàng</option>
                                                <option value="0">Hết hàng</option>
                                            @else
                                                <option value="1">Còn hàng</option>
                                                <option value="0" selected>Hết hàng</option>
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
                </div>
                <div id="main-manage-product-type">
                    <div class="widget meta-boxes">
                        <div class="widget-title">
                            <h4>
                                <span>Sản phẩm nhiều phiên bản</span>
                                </h4>
                        </div>
                        <div class="widget-body">
                            <div id="product-variations-wrapper">
                                <div class="variation-actions">
                                    <a href="#" class="btn-trigger-select-product-attributes" data-target="https://wowy.botble.com/admin/ecommerce/products/store-related-attributes/24">Sửa thuộc tính</a>
                                    <a href="#" class="btn-trigger-add-new-product-variation">Thêm phiên bản mới</a>
                                </div>
                                <div class="table-wrapper">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover vertical-middle table-hover-variants" id="botble-ecommerce-tables-product-variation-table-24">
                                            <thead>
                                                <tr>
                                                    <th title="ID" width="" class="text-center">STT</th>
                                                    <th title="ID" width="">SKU</th>
                                                    @foreach($product->properties as $item)
                                                    <th title="{{$item->name}}" class="text-start" width="90">{{$item->name}}</th>
                                                    @endforeach
                                                    <th title="Giá" width="">Giá</th>
                                                    <th title="Giá" width="">Sale</th>
                                                    <th title="Giá" width="">Tình trạng</th>
                                                    <th title="Is default" width="" class="text-center">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @php
                                                    $i=0;
                                                    $products_variation = $product->products_variation;
                                                @endphp
                                                @foreach($products_variation as $product_variation)
                                                    <tr role="row" class="odd">
                                                        <td class="sorting_1 text-center">{{++$i}}</td>
                                                        <td class="sorting_1">{{$product_variation->sku}}</td>
                                                        @php
                                                            $properties_value = $product_variation->properties_value;
                                                        @endphp

                                                        @foreach($product->properties as $item)
                                                            @php
                                                                $tg = 0;
                                                            @endphp
                                                            @foreach($properties_value as $propertie_value)
                                                                @if($item->id == $propertie_value->properties_id)
                                                                    <td class=" text-start">{{$propertie_value->value}}</td>
                                                                    @php
                                                                        $tg = 1;
                                                                    @endphp
                                                                @else
                                                                @endif
                                                            @endforeach
                                                            @if($tg == 0)
                                                                <td class=" text-start">--Rỗng--</td>
                                                            @endif
                                                        @endforeach

                                                        <td class=" text-start">{!!number_format($product_variation->price)!!}</td>
                                                        <td>
                                                            <div>{!!number_format($product_variation->sale)!!}</div><del class="text-danger small">{!!number_format($product_variation->price)!!}</del>
                                                        </td>
                                                        <td class=" text-start">@if($product_variation->stock)Còn hàng @else Hết hàng @endif</td>
                                                        <td class=" text-center">
                                                            <div class="table-actions">

                                                                <a href="javascript:void(0)" variation_id="{{$product_variation->id}}" onclick="openEditProductVariationModal(this,{{$product_variation->id}});" style="font-size:10px" class="btn-edit-product-variation btn btn-icon btn-sm btn-primary" data-toggle="tooltip" data-original-title="Sửa">
                                                                    <i class="fa fa-edit"></i>
                                                                </a>
                                                    
                                                                <a href="javascript:void(0)" style="font-size:10px" class="btn btn-icon btn-sm btn-danger deleteDialog delete" data-toggle="tooltip" data-section="{{URL::route('deleteProductVariation',$product_variation->id)}}" role="button" data-original-title="Xóa bản ghi">
                                                                    <i class="fa fa-trash"></i>
                                                                </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                @endforeach
                                                
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <br>
                                
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            
            
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
                                <!-- <div><strong>Bản dịch</strong>
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
                                    
                                </div> -->
                            

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
                            <h4><label for="image" class="control-label">Ảnh đại diện</label></h4>
                        </div>
                        <div class="widget-body">
                            <div class="image-box" style="border: 1px solid #e2e2e2;">
                                <div class="file-upload">   
                                    <div class="file-upload-content file-upload-content100" style="position: relative;">
                                        <img width="100%" class="file-upload-image file-upload-image100" src="{{asset('uploads/images/products/details/'.$product->avata)}}" alt="your image" />
                                        <!-- <div class="image-title-wrap image-title-wrap100" style="position: absolute;top: 0px; right: 0px;">
                                            <button type="button" onclick="removeUploadTest(100)" class="remove-image">Ảnh đại diện</button>
                                        </div> -->
                                        <input style="z-index: 100; position: absolute; top: 0px; left: 0px;" class="file-upload-input file-upload-input100" type='file' name="avata" onchange="readURLTest(this,100);" accept="image/*" />
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
                                                        $pro_val_filters = $product->properties_value_filter;
                                                        $array = App\Http\Controllers\Controller::arrayColumn($pro_val_filters,'id');
                                                    @endphp
                                                    @foreach($values as $value)
                                                        @if(in_array($value->id,$array))
                                                        <li value="{{$value->id}}" class="ml-30">
                                                            <label>
                                                                <input type="checkbox" checked value="{{$value->id}}" name="properties_filter[]">
                                                                {{__($value->value)}}
                                                            </label>
                                                        </li>
                                                        @else
                                                        <li value="{{$value->id}}" class="ml-30">
                                                            <label>
                                                                <input type="checkbox" value="{{$value->id}}" name="properties_filter[]">
                                                                {{__($value->value)}}
                                                            </label>
                                                        </li>
                                                        @endif
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
        <div id="select-attribute-sets-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="select-attribute-sets-modal" aria-hidden="true" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog">
                <form id="postEditProductPropertiesVariation" method="post" action="{{URL::route('postEditProductPropertiesVariation',$product->id)}}" enctype="multipart/form-data" >
                    @csrf
                    <input type="text" class="hidden" name="product_id" value="{{$product->id}}">
                    <div class="modal-content">
                        <div class="modal-header bg-info">
                            <h4 class="modal-title">
                <strong>Chọn thuộc tính tạo biến thể sản phẩm</strong>
                </h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body with-padding">
                            @php
                                $p = $product->properties;
                                $array = App\Http\Controllers\Controller::arrayColumn($p,'id');
                            @endphp
                            @foreach($properties as $propertie)
                                @if(in_array($propertie->id,$array))
                                <label>
                                    <input type="checkbox" class="attribute-set-item" name="properties_variation[]" value="{{$propertie->id}}" checked>{{$propertie->name}}
                                </label> &nbsp;
                                @else
                                <label>
                                    <input type="checkbox" class="attribute-set-item" name="properties_variation[]" value="{{$propertie->id}}">{{$propertie->name}}
                                </label> &nbsp;
                                @endif
                            @endforeach
                            <div class="alert alert-warning mt-3">
                                <span>Thao tác này sẽ tải lại trang để cập nhật dữ liệu!</span>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="float-start btn btn-warning" data-bs-dismiss="modal">Hủy bỏ</button>
                            <button type="submit" class="float-end btn btn-info ">Lưu chỉnh sửa</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div id="add-new-product-variation-modal" variation_id="0" class="modal fade show" tabindex="-1" aria-labelledby="add-new-product-variation-modal" data-backdrop="static" data-keyboard="false" aria-modal="true" role="dialog">
            <div class="modal-dialog modal-lg">
                <form id="postAddProductVariation" method="post" action="{{URL::route('postAddProductVariation',$product->id)}}" enctype="multipart/form-data" >
                    @csrf
                    <div class="modal-content">
                        <div class="modal-header bg-info">
                            <h4 class="modal-title"><strong>Tạo phiên bản sản phẩm mới</strong></h4>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body with-padding">
                            <div class="half-circle-spinner loading-spinner" style="display: none;">
                                <div class="circle circle-1"></div>
                                <div class="circle circle-2"></div>
                            </div>
                            <div class="variation-form-wrapper">
                                <form action="">
                                    <div class="row">
                                        @foreach($product->properties as $item)
                                        <div class="col-md-4 col-sm-6">
                                            <div class="form-group mb-3">
                                                <label for="attribute-color" class="text-title-field required">{{$item->name}}</label>
                                                <div class="ui-select-wrapper form-group ">
                                                    <select id="attribute-color" class="select2-attributes select-search-full ui-select select2-hidden-accessible" data-id="1" name="product_variation_properties_value[]" tabindex="-1" aria-hidden="true" data-select2-id="select2-data-attribute-color">
                                                        <option value="" selected="selected" data-select2-id="select2-data-82-eyzy">-- Chọn thuộc tính --</option>
                                                        @foreach($item->propertie_values as $value)
                                                        <option value="{{$value->id}}">{{$value->value}}</option>
                                                        @endforeach
                                                    </select>
                                                        <svg class="svg-next-icon svg-next-icon-size-16">
                                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                                                <path d="M10 16l-4-4h8l-4 4zm0-12L6 8h8l-4-4z"></path>
                                                            </svg>
                                                        </svg>
                                                </div>

                                            </div>
                                        </div>
                                        @endforeach
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group"  >
                
                                                <label for="ma" class="control-label required">Mã sản phẩm</label>
                                                
                                                <input class="form-control ma-variation-0" placeholder="nhập mã" oninput="checkSkuVariation(this,0)" value="{{old('product_variation_ma')}}" name="product_variation_ma" type="text" required id="product_variation_ma">
                                                
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group"  >
                
                                                <label for="ma" class="control-label required">Giá</label>
                                                @if(isset($request->product_id))
                                                    <input class="form-control" placeholder="giá sản phẩm" value="{{$pr->price}}" oninput="replaceValue(this);" name="product_variation_price" type="text" required id="product_variation_price">
                                                @else
                                                    <input class="form-control" placeholder="giá sản phẩm" oninput="replaceValue(this);" value="{{old('product_variation_price')}}" name="product_variation_price" type="text" required id="product_variation_price">
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group"  >
                
                                                <label for="ma" class="control-label">Giá sale</label>
                                                @if(isset($request->product_id))
                                                    <input class="form-control" placeholder="giá sale" value="{{$pr->sale}}" oninput="replaceValue(this);" name="product_variation_sale" type="text" required id="product_variation_sale">
                                                @else
                                                    <input class="form-control" placeholder="giá sale" oninput="replaceValue(this);" value="{{old('product_variation_sale')}}" name="product_variation_sale" type="text" required id="product_variation_sale">
                                                @endif
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group"  >
                
                                                <label for="ma" class="control-label required">Tiền tệ</label>
                                                <div class="ui-select-wrapper">
                                                    <select class="form-control ui-select ui-select" id="product_variation_tiente" name="product_variation_tiente">
                                                        
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
                                                    <select class="form-control ui-select ui-select" id="product_variation_stock" name="product_variation_stock">
                                                        
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
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="float-start btn btn-warning" data-bs-dismiss="modal" fdprocessedid="lkwys">Hủy bỏ</button>
                            <button type="submit" class="float-end btn btn-info btn-submit-edit-provariation-0" id="store-product-variation-button" fdprocessedid="g6wv3d">Thêm mới</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        @foreach($products_variation as $product_variation)
            <div id="edit-product-variation-modal" variation_id="{{$product_variation->id}}" class="modal fade show" tabindex="-1" aria-labelledby="edit-product-variation-modal" data-backdrop="static" data-keyboard="false" aria-modal="true" role="dialog">
                <div class="modal-dialog modal-lg">
                    <form id="postEditProductVariation" method="post" action="{{URL::route('postEditProductVariation',$product_variation->id)}}" enctype="multipart/form-data" >
                        @csrf
                        <div class="modal-content">
                            <div class="modal-header bg-info">
                                <h4 class="modal-title"><strong>Sửa phiên bản sản phẩm</strong></h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body with-padding">
                                <div class="half-circle-spinner loading-spinner" style="display: none;">
                                    <div class="circle circle-1"></div>
                                    <div class="circle circle-2"></div>
                                </div>
                                <div class="variation-form-wrapper">
                                    <form action="">
                                        <div class="row">
                                            @php
                                                $properties_value = $product_variation->properties_value;
                                                $array = App\Http\Controllers\Controller::arrayColumn($properties_value,'id');
                                            @endphp
                                            @foreach($product->properties as $item)

                                            <div class="col-md-4 col-sm-6">
                                                <div class="form-group mb-3">
                                                    <label for="attribute-color" class="text-title-field required">{{$item->name}}</label>
                                                    <div class="ui-select-wrapper form-group ">
                                                        <select id="attribute-color" class="select2-attributes select-search-full ui-select select2-hidden-accessible" data-id="1" name="product_variation_properties_value[]" tabindex="-1" aria-hidden="true" data-select2-id="select2-data-attribute-color">

                                                            
                                                            @php
                                                                $i=0;
                                                                $check = 0;
                                                                $pro_var_pro_val = null;
                                                                foreach($item->propertie_values as $value){
                                                                    if(in_array($value->id,$array)){
                                                                        $check = 1;
                                                                        $pro_var_pro_val = App\ProductVariationsPropertiesValue::where('pro_var_id',$product_variation->id)->where('propertie_value_id',$value->id)->get()->first();
                                                                    }
                                                                }

                                                            @endphp
                                                            @foreach($item->propertie_values as $value)
                                                                @if($check)
                                                                    @if(in_array($value->id,$array))
                                                                        <option selected value="{{$value->id}}-{{$pro_var_pro_val->id}}">{{$value->value}}</option>
                                                                        @php
                                                                            $i=1;
                                                                        @endphp
                                                                    @else
                                                                        <option value="{{$value->id}}-{{$pro_var_pro_val->id}}">{{$value->value}}</option>
                                                                    @endif
                                                                @else
                                                                    @if(in_array($value->id,$array))
                                                                        <option selected value="{{$value->id}}">{{$value->value}}</option>
                                                                        @php
                                                                            $i=1;
                                                                        @endphp
                                                                    @else
                                                                        <option value="{{$value->id}}">{{$value->value}}</option>
                                                                    @endif
                                                                @endif
                                                                
                                                            @endforeach
                                                            @if($i == 0)
                                                                <option value="" selected="selected" data-select2-id="select2-data-82-eyzy">-- Chọn thuộc tính --</option>
                                                            @endif
                                                        </select>
                                                            <svg class="svg-next-icon svg-next-icon-size-16">
                                                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                                                    <path d="M10 16l-4-4h8l-4 4zm0-12L6 8h8l-4-4z"></path>
                                                                </svg>
                                                            </svg>
                                                    </div>

                                                </div>
                                            </div>
                                            @endforeach
                                        </div>
                                        <!-- <hr> -->
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group"  >
                    
                                                    <label for="ma" class="control-label required">Mã sản phẩm</label>
                                                    <input class="form-control ma-variation-{{$product_variation->id}}" placeholder="nhập mã" oninput="checkSkuVariation(this,{{$product_variation->id}})" value="{{$product_variation->sku}}" name="product_variation_ma" type="text" required id="product_variation_ma">
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group"  >
                    
                                                    <label for="ma" class="control-label required">Giá</label>
                                                    <input class="form-control" placeholder="giá sản phẩm" oninput="replaceValue(this);" value="{!!number_format($product_variation->price)!!}" name="product_variation_price" type="text" required id="product_variation_price">
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group"  >
                    
                                                    <label for="ma" class="control-label">Giá sale</label>
                                                    <input class="form-control" placeholder="giá sale" oninput="replaceValue(this);" value="{!!number_format($product_variation->sale)!!}" name="product_variation_sale" type="text" required id="product_variation_sale">
                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group"  >
                    
                                                    <label for="ma" class="control-label required">Tiền tệ</label>
                                                    <div class="ui-select-wrapper">
                                                        <select class="form-control ui-select ui-select" id="product_variation_tiente" name="product_variation_tiente">
                                                            @if($product_variation->tiente)
                                                                <option value="0">VNĐ</option>
                                                                <option value="1" selected>$$$</option>
                                                            @else
                                                                <option value="0" selected>VNĐ</option>
                                                                <option value="1">$$$</option>
                                                            @endif
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
                                                        <select class="form-control ui-select ui-select" id="product_variation_stock" name="product_variation_stock">
                                                            @if($product_variation->stock)
                                                                <option value="1" selected>Còn hàng</option>
                                                                <option value="0">Hết hàng</option>
                                                            @else
                                                                <option value="1">Còn hàng</option>
                                                                <option value="0" selected>Hết hàng</option>
                                                            @endif
                                                        </select>
                                                        <svg class="svg-next-icon svg-next-icon-size-16">
                                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#select-chevron"></use>
                                                        </svg>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="float-start btn btn-warning" data-bs-dismiss="modal" fdprocessedid="lkwys">Hủy bỏ</button>
                                <button type="submit" class="float-end btn btn-info btn-submit-edit-provariation-{{$product_variation->id}}" id="store-product-variation-button" fdprocessedid="g6wv3d">Lưu thay đổi</button>
                            </div>
                        </div>
                    </form>
                    
                </div>
            </div>
        @endforeach
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
        // $(document).on('click', '.btn-edit-product-variation2', function(event) {
        //   event.preventDefault();
        //   $("#edit-product-variation-modal").modal("show");
        // });
        function openEditProductVariationModal(e,id){
            $('#edit-product-variation-modal[variation_id="'+id+'"]').modal("show");
            
        }
        $(document).on('click', '.btn-trigger-select-product-attributes', function(event) {
          event.preventDefault();
          $("#select-attribute-sets-modal").modal("show");
        });
        $(document).on('click', '.btn-trigger-add-new-product-variation', function(event) {
          event.preventDefault();
          $("#add-new-product-variation-modal").modal("show");
        });
        function showloading(){
            $('.preloader').show();
        }
        function mySubmitFunction(e,obj){
            e.preventDefault();
            console.log(obj);
        };
        function more_image(){
            var i = parseInt($(".file").length);
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
        function checkSkuVariation(e,id){
            sku = e.value;
            var btn_submit = 'btn-submit-edit-provariation-'+id;
            var select = 'ma-variation-'+id;
            if(sku == ''){
                toastr.warning('Vui lòng nhập mã sản phẩm');
                $('input.'+select+'').removeClass('is-valid');
                $('input.'+select+'').addClass('is-not-valid');
                $(':input.'+btn_submit+'[type="submit"]').prop('disabled', true);
            }
            else{
                url = '/admin/product/proVariation/checkSku?pro_var_id='+id+'&sku='+sku;

                $.ajax({
                    type: 'GET',
                    url: url,
                    dataType: 'html',
                    success: function(data) {
                        if(data == 1){
                            $('input.'+select+'').addClass('is-valid');
                            $('input.'+select+'').removeClass('is-not-valid');
                            $(':input.'+btn_submit+'[type="submit"]').prop('disabled', false);
                        }
                        else{
                            toastr.warning('Mã sản phẩm đã tồn tại');
                            $('input.'+select+'').removeClass('is-valid');
                            $('input.'+select+'').addClass('is-not-valid');
                            $(':input.'+btn_submit+'[type="submit"]').prop('disabled', true);
                        }
                    }
                });
            }
            
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