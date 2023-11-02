@extends('front-end.layout.default')

@section('head')
    <title>Cuong Luxury</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="google-site-verification" content="4GneTy3UPEfpKBItZcT4ob0uAKRPvzGRcTm84Qd076M" />
    <meta http-equiv="Content-Language" content="vi" />
    <meta name="copyright" content="Copyright" />
    <meta name="description" content="Cuong Luxury là đơn vị uy tín với hơn 10 năm kinh nghiệm trong lĩnh vực mua bán, trao đổi, ký gửi các thương hiệu đồng hồ hiệu chính hãng hàng đầu tại Việt Nam như Hublot, Rolex, Patek Philippe, Franck Muller, ..." />
    <meta name="keywords" content="Cuong Luxury, đồng hồ cao cấp chính hãng, Hublot, Rolex, Patek Philippe, Franck Muller, Vertu, Richard Mille..." />
    <meta name="geo.placename" content="39 Quang Trung, Hoàn Kiếm" />
    <meta name="DC.title" content="CuongLuxury" />
    <meta property="og:type" name="ogtype" content="Website" />
    <meta property="og:title" name="ogtitle" content="Cuong Luxury" />
    <meta property="og:description" name="ogdescription" content="Cuong Luxury là đơn vị uy tín với hơn 10 năm kinh nghiệm trong lĩnh vực mua bán, trao đổi, ký gửi các thương hiệu đồng hồ hiệu chính hãng hàng đầu tại Việt Nam như Hublot, Rolex, Patek Philippe, Franck Muller, ..." />
    <meta property="og:url" name="ogurl" content="https://cuongluxury.vn/" />
    <meta property="og:image" name="ogimage" content="https://cuongluxury.vn/templates/home/images/banner-zalo-e.png" />
    <meta property="og:image:alt" name="og:image:alt" content="Cuong Luxury" />
    <meta property="og:sitename" content="https://cuongluxury.vn/" />
    <link rel="canonical" href="https://cuongluxury.vn/" />
    <style type="text/css">
        #btncontinue:hover {
            color: #000;
            background: #fff;
            border: 1px solid #000;
            text-transform: uppercase;
        }
    </style>

@endsection


@section('content')
@if( Session::has('flash_message'))
    <div messages="{{ Session::get('flash_message')}}" class="note hidden note-animation note-{{ Session::get('flash_level')}}">
        <!-- <p>{{ Session::get('flash_message')}}</p> -->
    </div>
@endif
<link href="{{asset('css/base.scss.css')}}" rel="stylesheet" type="text/css" />
    <section class="bread-crumb margin-bottom-10 a-center">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="title-head margin-top-0">
                    Giỏ hàng
                </div>
                <ul class="breadcrumb" itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb">
                    <li class="home">
                        <a itemprop="url" href="/" title="Trang chủ"><span itemprop="title">Trang chủ</span></a>
                    </li>
                    <li><span><i class="fa fa-angle-right"></i></span><strong itemprop="title">Giỏ hàng</strong></li>
                    
                </ul>
            </div>
        </div>
    </div>
</section>

<section id="columns" class="columns-container">
    <div class="container">

        <div class="cart-page-s">

            <div class="page-wrap">

                
<form method="POST" enctype="multipart/form-data" action="{{URL::route('postAddOrder')}}" id="addOrder">
@csrf 
<div class='cart_detail'>

    <div id="pncartdetail">
   
        <h3>1. THÔNG TIN GIỎ HÀNG</h3>
        
                <table style="width: 98%;" cellpadding="5" class="table cart" cellspacing="1">
                    <tr>
                        <td width='10%'><b>Hình ảnh</b></td>
                        
                        <td class="hidden-xs"><b>Tên sản phẩm</b></td>
                        <td width='12%'><b>Số lượng</b></td>
                        <td width='12%'><b>Đơn giá</b></td>
                        <td width='12%'><b>Thành tiền</b></td>
                        <td width='8%'></td>
                    </tr>
                @foreach($items_cart as $item)
                <tr class="item-cart" rowId='{{$item->rowId}}' product-id="{{$item->id}}">
                    <td align="center"><a href="{{$item->options->url}}" title="{{$item->name}}">
                        <img style="height: 80px" class="imgprd-cart" src="{{asset('uploads/images/products/details/'.$item->options->img)}}" alt="{{$item->name}}" /></a></td>
                    
                    <td class="hidden-xs" valign="top"><a href="{{$item->options->url}}" title="{{$item->name}}">
                        {{$item->name}}<br> 
                        <p>Mã sản phẩm: {{$item->options->sku}}</p>
                    </a>

                    </td>
                    <td align="center">
                        <input type="number" onchange="updateCart(this,'{{$item->id}}','{{$item->rowId}}')" rowId='{{$item->rowId}}' min="1"  name='qty' value='{{$item->qty}}' size="1">
                    </td>
                    <td><span class='pri'>{!!number_format($item->price)!!}</span><span class="hidden prci">{!!number_format($item->price)!!}</span></td>
                    <td>
                        @php
                            $tt = $item->qty * $item->price;
                        @endphp
                        <span class="thanhtien1" rowId='{{$item->rowId}}'>{!!number_format($tt)!!}</span>
                    </td>
                    <td>
                        <a id="removeItemCart" class="removeItemCart" href=" javascript:void(0)" rowId='{{$item->rowId}}' data-href="{{URL::route('removeItemCart',$item->rowId)}}">Xóa</a>
                    </td>
                </tr>
                @endforeach
                
            
                </table>
            
        <p style="text-align: right; padding-top: 10px; margin-right: 20px;">
            Tổng tiền: <b class="tto">
                <span class="totals_price"><span class='prnum'>{{Cart::subtotal()}}</span><span class='s_unit'>đ</span></span></b>
        </p>
        <p class="cart-empty hidden" style="text-align: center; font-size: 20px;">
            Giỏ hàng trống
        </p>
        <p class='tool_cart'>
            <input type="button" name="btncontinue" value="Tiếp tục mua" id="btncontinue" class="btncontinue btn" />
            <input type="button" name="btnbuys" value="Đặt hàng" id="btnbuys" class="btnbuys btn" />
            <!-- <input type="button" name="btncancel" value="Hủy đơn hàng" id="btncancel" class="btncancel btn" /> -->
        </p>
    
</div>


    <div class="row infoOrder hidden">
        
        
        <div class="customer-frm col-md-6">
            <div class="buy-form">
                <h3 class="legend">2. Thông tin Khách Hàng</h3>
                <p>
                    <span class="msg_error">
                        </span>
                </p>
                <ul class="filter-list">
                    <li class="filter-username">
                        
                        <label>Họ tên</label>
                        <input name="order_name" type="text" id="order_name" required class="fullname mipt" placeholder="Nhập họ và tên của bạn..." />
                    </li>
                    <li  class="filter-username">
                         <label>Số điện thoại</label>
                        <input name="order_phone" type="text" id="order_phone" required class="phone mipt" placeholder="Nhập số điện thoại của bạn..." />

                    </li>
                    <li  class="filter-username">
                         <label>Email</label>
                        <input name="order_email" type="text" id="order_email" class="email mipt" placeholder="Email (cần nhập email để nhận được thông tin đơn hàng)" />

                    </li>



                    <li >
                        <label class="toglAddress"><i class="fa fa-location-arrow"></i> Địa chỉ, thời gian GIAO HÀNG NHANH</label>
                        <li class="filter-username">
                              <label>Địa chỉ</label>
                            <input name="order_address" type="text" id="order_address" class="address mipt" placeholder="Số nhà - Tên đường" />

                        </li>
                        <li  class="filter-username">
                              <label>Ghi chú</label>
                            <textarea name="order_messages" rows="6" cols="46" id="order_messages" class="mtxt comment" placeholder="Ghi chú khi giao hàng (vd: ngày, giờ giao hàng)">
    </textarea>

                        </li>
                    </li>
                </ul>
            </div>
        </div>
        <div class="popup-buyform ipayment col-md-6" style="height:auto">
            <div class="info-payment">
                <label class="toglAddress"><i class="fa fa-money"></i> Hình thức thanh toán</label>
                @php
                    $tg = 1;
                @endphp
                @foreach($payments as $item)
                    @if($tg)
                        <div class="p-row "  style='display:block' >
                            <input id="pt-{{$item->id}}" type="radio" name="order_payment" value="{{$item->title}}" checked="checked" />

                            <label for="pt-{{$item->id}}" class="lbl-rado">{{$item->title}}</label>
                            <div class="redirect_box boxContent" style="display: block;">
                                {!!$item->content!!}

                            </div>
                        </div>
                        @php
                            $tg = 0;
                        @endphp
                    @else
                        <div class="p-row " style='display:block'>
                            <input id="pt-{{$item->id}}" type="radio" name="order_payment" value="{{$item->title}}" />

                            <label for="pt-{{$item->id}}" class="lbl-rado">{{$item->title}}</label>
                            <div class="redirect_box boxContent">
                                {!!$item->content!!}

                            </div>
                        </div>
                    @endif
                @endforeach
                


            </div>

        </div>
        <div class="col-md-12" style="margin: 20px 0px;">
            <input type="button" name="addOrder" value="Đặt hàng" id="btnbuys" class="addOrder btn" />
        </div>
    </div>

    
    

</div>
</form>
<style>
       ul.bankList {
                clear: both;
                height: 202px;
                width: 636px;
            }

            .boxContent {
               display: none;
    margin-left: 20px;
    padding: 20px;
    border: 1px solid #e4e4e4;
            }

            .active .boxContent {
                display: block !important;
            }

            ul.bankList li {
                list-style-position: outside;
                list-style-type: none;
                cursor: pointer;
                float: left;
                margin-right: 0;
                padding: 5px 2px;
                text-align: center;
                width: 90px;
            }

            .list-content li {
                list-style: none outside none;
                margin: 0 0 10px;
            }

                .list-content li .boxContent {
                    display: none;
                    width: 636px;
                    border: 1px solid #cccccc;
                    padding: 10px;
                }

                .list-content li.active .boxContent {
                    display: block;
                }

                .list-content li .boxContent ul {
                    height: 280px;
                }

            
            ul.cardList li {
                cursor: pointer;
                float: left;
                margin-right: 0;
                padding: 5px 4px;
                text-align: center;
                width: 90px;
            }
    .prdimg {
        float: left;
        width: 100px;
    }
    .ttgh {
        border: 1px solid #f0f0f0;
        padding: 10px;
    }
    .tta {
        margin-top: 10px;
        padding: 10px 0px 10px 0px;
        text-align: right;
        border-top: 1px solid #f0f0f0;
    }
    .itghslg {
        float: left;
    }
    .itghtt {
        float: right;color:red;
    }
    .ghit {
        padding: 5px 0px;
    }
    .ttdh table {
        width: 100%;border-left:1px solid #f0f0f0;border-top:1px solid #f0f0f0;
    }
        .ttdh table td {
            padding: 5px;
        }
    .ttdh table tr {
        border-bottom: 1px solid #f0f0f0;
        border-right:1px solid #f0f0f0;
    }
    .cart_detail h3 {
        font-size: 14px;
        font-weight: bold;
    }

    .title_c {
        width: 94px;
        display: inline-block;
    }

    .d_buyinfo {
        float: left;
    }

    .d_payment {
    }
    #pnordersuccess {
        margin-bottom: 30px;
    }
    #pnmessage {
        text-align: center;
        font-weight: bold;
        margin: 50px 0px;
    }

    .cardList {
        list-style: none;
    }
#btnorder{width:170px}
.btn{max-width:180px;font-size:17px;}
#btncancel{display:inline-block}
</style>
<script type="text/javascript">
    $(document).ready(function(){
        var elm = $('.note-animation');
        if(elm.length){
            toastr.success(elm.attr('messages'));
            
        }
        var cartItem = $('tr.item-cart');
        if(!cartItem.length){
            $('.btnbuys').addClass('hidden');
            $('.cart-empty').removeClass('hidden');
        }
        console.log(elm.attr('messages'));
    });
    $(document).on('click', '.btnbuys', function(event) {
        $('.infoOrder').removeClass('hidden');
        $('.tool_cart').hide();
        
    });
    $(document).on('click', '.btncontinue', function(event) {
        window.location.href = '/';
    });
    $(document).on('click', '.removeItemCart', function(event) {
        var href = $(this).attr('data-href');
        var rowId = $(this).attr('rowId');
        
        $.ajax({
            type: 'GET',
            url: href,
            dataType: 'json',
            success: function(data) {
                toastr.success('Đã xóa khỏi giỏ hàng');
                var item_selected = $('.item-cart[rowId='+rowId+']');
                item_selected.hide();
                $('.prnum').text(data[1]);
                // console.log(item_id);

            }
        });
        // console.log(rowId);
    });
    $(document).on('click', '.addOrder', function(event) {
        $(this).parents('form').submit();
        // var data = $('form#addOrder').serialize();
        // console.log(data);
        // $.ajax({
        //     url: 'dat-hang',
        //     type: "POST",
        //     data: data,
        //     contentType: false,
        //     processData: false,
        //     headers: { "X-CSRF-Token": $("input[name='_token']").attr("value") },
        //     success: function(d) {
        //        if(d){
        //             toastr.success('đặt hàng thành công');
        //        }

        //     }
        // });
    });
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
    function updateCart(e,id,rowId){
        var value = e.value;
        var url = 'updateCart/'+id+'-'+value;
        $.ajax({
            type: 'GET',
            url: url,
            dataType: 'json',
            success: function(data) {
                toastr.success('Cập nhật giỏ hàng thành công');
                $('.prnum').text(data[1]);
                var tt = $('.thanhtien1[rowId='+rowId+']');
                tt.text(addCommas(data[2]));
                // console.log(item_id);

            }
        });
        // console.log(value);
    }
    
</script>


            </div>
        </div>
    </div>
</section>

@endsection

@section('js')
    

@endsection