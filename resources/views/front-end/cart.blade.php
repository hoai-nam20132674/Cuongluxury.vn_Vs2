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

@endsection


@section('content')
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

                
    <script src="/templates/home/js/numeral.min.js" type='text/javascript'></script>
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
                <tr class="item-cart" rowId='{{$item->rowId}}'>
                    <td align="center"><a href="{{$item->options->url}}" title="{{$item->name}}">
                        <img style="height: 80px" class="imgprd-cart" src="{{asset('uploads/images/products/details/'.$item->options->img)}}" alt="{{$item->name}}" /></a></td>
                    
                    <td class="hidden-xs" valign="top"><a href="{{$item->options->url}}" title="{{$item->name}}">
                        {{$item->name}}<br> 
                        <p>Mã sản phẩm: 665.OX.7180.LR.1204</p>
                    </a>

                    </td>
                    <td align="center">
                        <input type="number" class="txtnumc" min="1"  name='5819' id='sl1'
                            value='{{$item->qty}}' size="1">
                         <input type="hidden" class="pr1" value="565000000" />
                    </td>
                    <td><span class='pri'>{!!number_format($item->price)!!}</span><span class="hidden prci">{!!number_format($item->price)!!}</span></td>
                    <td>
                        @php
                            $tt = $item->qty * $item->price;
                        @endphp
                        <span class="thanhtien1">{!!number_format($tt)!!}</span>
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
        <p class='tool_cart'>
            <input type="button" name="btncontinue" value="Tiếp tục mua" id="btncontinue" class="btncontinue btn" />
            <input type="button" name="btnbuys" value="Đặt hàng" id="btnbuys" class="btnbuys btn" />
            <input type="button" name="btncancel" value="Hủy đơn hàng" id="btncancel" class="btncancel btn" />
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
                    <div class="group-radio hidden">
                        <div class="radio-1">
                            <input id="rdmale" type="radio" name="name" value="rdmale" checked="checked" />
                            <label for="gender-male">Anh</label>


                        </div>
                        <div class="radio-1">
                            <input id="rdfemale" type="radio" name="ctl19$ctl00$ctl00$ctl00$gdsex" value="rdfemale" />
                            <label for="gender-male">Chị</label>

                        </div>
                    </div>
                    <label>Họ tên</label>
                    <input name="ctl19$ctl00$ctl00$ctl00$txtname" type="text" id="txtname" class="fullname mipt" placeholder="Nhập họ và tên của bạn..." />
                </li>
                <li  class="filter-username">
                     <label>Số điện thoại</label>
                    <input name="ctl19$ctl00$ctl00$ctl00$txtphone" type="text" id="txtphone" class="phone mipt" placeholder="Nhập số điện thoại của bạn..." />

                </li>
                <li  class="filter-username">
                     <label>Email</label>
                    <input name="ctl19$ctl00$ctl00$ctl00$txtemail" type="text" id="txtemail" class="email mipt" placeholder="Email (cần nhập email để nhận được thông tin đơn hàng)" />

                </li>



                <li >
                    <label class="toglAddress"><i class="fa fa-location-arrow"></i> Địa chỉ, thời gian GIAO HÀNG NHANH</label>
                    <li class="info-add  filter-username hidden">
                        <label>Tỉnh thành</label>
                            
                       </li>
                   <li class="info-add  filter-username hidden">
                         <label>Quận / huyện</label>

                            
                       </li>
                       <li class="info-add hidden filter-username hidden">
                              <label>Phường / Xã</label>
                            
                        </li>
                  
                    <li class="filter-username">
                          <label>Địa chỉ</label>
                        <input name="ctl19$ctl00$ctl00$ctl00$txtaddress" type="text" id="txtaddress" class="address mipt" placeholder="Số nhà - Tên đường" />

                    </li>
                    <li  class="filter-username">
                          <label>Ghi chú</label>
                        <textarea name="ctl19$ctl00$ctl00$ctl00$txtcontent" rows="6" cols="46" id="txtcontent" class="mtxt comment" placeholder="Ghi chú khi giao hàng (vd: ngày, giờ giao hàng)">
</textarea>

                    </li>
                </li>
            </ul>
        </div>
    </div>
    <div class="popup-buyform ipayment col-md-6" style="height:auto">
        <div class="info-payment">
            <label class="toglAddress"><i class="fa fa-money"></i> Hình thức thanh toán</label>
            @foreach($payments as $item)
            @endforeach
             <div class="p-row  active"  style='display:block' >
                <input id="rdtructiep" type="radio" name="ctl19$ctl00$ctl00$ctl00$pm" value="rdtructiep" checked="checked" />

                <label for="bank_transfer" class="lbl-rado">Thanh toán trực tiếp</label>
                <div class="redirect_box boxContent">
                    <div>
Thanh to&aacute;n trực tiếp tại Showroom:</div>
<div>
- CS1: 39 Quang Trung, Ho&agrave;n Kiếm, H&agrave; Nội</div>
<div>
- CS2: 39 V&otilde; Văn Dũng, Đống Đa, H&agrave; Nội</div>

                </div>
            </div>
            <div class="p-row "  style='display:block' >
                <input id="bank_transfer" type="radio" name="ctl19$ctl00$ctl00$ctl00$pm" value="bank_transfer" />

                <label for="bank_transfer" class="lbl-rado">Thanh toán qua ngân hàng</label>
                <div class="bank_transfer_box boxContent" style="display: none;">
                    <div>
Thanh to&aacute;n chuyển khoản qua ng&acirc;n h&agrave;ng</div>
<div>
&nbsp;</div>
<div>
<strong>1. Ng&acirc;n h&agrave;ng TMCP VietComBank</strong></div>
<div>
Số t&agrave;i khoản: 1017885586</div>
<div>
Chủ t&agrave;i khoản: L&ecirc; Thị Th&uacute;y Lan</div>
<div>
&nbsp;</div>
<div>
<strong>2. Ng&acirc;n h&agrave;ng TMCP TechComBank</strong></div>
<div>
Số t&agrave;i khoản: 19025943874021</div>
<div>
Chủ t&agrave;i khoản: L&ecirc; Thị Th&uacute;y Lan</div>
<div>
&nbsp;</div>

                </div>
            </div>
            <div class="p-row  "  style='display:block' >
                <input id="cod_payment" type="radio" name="ctl19$ctl00$ctl00$ctl00$pm" value="cod_payment" />
                <label for="cod_payment" class="lbl-rado">Thanh toán tại nhà (COD)</label>
                <div class="cod_payment_box boxContent" style="display: none;">
                    <p>
Thanh to&aacute;n khi kh&aacute;ch h&agrave;ng nhận được h&agrave;ng</p>

                </div>
            </div>

            <div class="p-row cod-row" style="display: none;">
                <input id="ATM_ONLINE" type="radio" name="ctl19$ctl00$ctl00$ctl00$pm" value="ATM_ONLINE" />
                <label>Thanh toán online bằng thẻ ngân hàng nội địa</label>

                <div class="boxContent">
                    <p>
                        <i>
                            <span style="color: #ff5a00; font-weight: bold; text-decoration: underline;">Lưu ý</span>: Bạn cần đăng ký Internet-Banking hoặc dịch vụ thanh toán trực tuyến tại ngân hàng trước khi thực hiện.</i>
                    </p>

                    <ul class="cardList clearfix">

                        <li class="bank-online-methods ">
                            <label for="vcb_ck_on">
                                <i class="VCB" title="Ngân hàng TMCP Ngoại Thương Việt Nam"></i>
                                <input id="VCB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="VCB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="vnbc_ck_on">
                                <i class="DAB" title="Ngân hàng Đông Á"></i>
                                <input id="DAB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="DAB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="tcb_ck_on">
                                <i class="TCB" title="Ngân hàng Kỹ Thương"></i>
                                <input id="TCB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="TCB" />
                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_mb_ck_on">
                                <i class="MB" title="Ngân hàng Quân Đội"></i>
                                <input id="MB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="MB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="shb_ck_on">
                                <i class="SHB" title="Ngân hàng Sài Gòn - Hà Nội"></i>
                                <input id="SHB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="SHB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_vib_ck_on">
                                <i class="VIB" title="Ngân hàng Quốc tế"></i>
                                <input id="VIB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="VIB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_vtb_ck_on">
                                <i class="ICB" title="Ngân hàng Công Thương Việt Nam"></i>
                                <input id="ICB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="ICB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_exb_ck_on">
                                <i class="EXB" title="Ngân hàng Xuất Nhập Khẩu"></i>
                                <input id="EXB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="EXB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_acb_ck_on">
                                <i class="ACB" title="Ngân hàng Á Châu"></i>
                                <input id="ACB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="ACB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_hdb_ck_on">
                                <i class="HDB" title="Ngân hàng Phát triển Nhà TPHCM"></i>
                                <input id="HDB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="HDB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_msb_ck_on">
                                <i class="MSB" title="Ngân hàng Hàng Hải"></i>
                                <input id="MSB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="MSB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_nvb_ck_on">
                                <i class="NVB" title="Ngân hàng Nam Việt"></i>
                                <input id="NVB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="NVB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_vab_ck_on">
                                <i class="VAB" title="Ngân hàng Việt Á"></i>
                                <input id="VAB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="VAB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_vpb_ck_on">
                                <i class="VPB" title="Ngân Hàng Việt Nam Thịnh Vượng"></i>
                                <input id="VPB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="VPB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_scb_ck_on">
                                <i class="SCB" title="Ngân hàng Sài Gòn Thương tín"></i>
                                <input id="SCB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="SCB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="ojb_ck_on">
                                <i class="OJB" title="Ngân hàng Đại Dương"></i>
                                <input id="OJB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="OJB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="bnt_atm_pgb_ck_on">
                                <i class="PGB" title="Ngân hàng Xăng dầu Petrolimex"></i>
                                <input id="PGB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="PGB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="bnt_atm_gpb_ck_on">
                                <i class="GPB" title="Ngân hàng TMCP Dầu khí Toàn Cầu"></i>
                                <input id="GPB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="GPB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="bnt_atm_agb_ck_on">
                                <i class="AGB" title="Ngân hàng Nông nghiệp &amp; Phát triển nông thôn"></i>
                                <input id="AGB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="AGB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="bnt_atm_sgb_ck_on">
                                <i class="SGB" title="Ngân hàng Sài Gòn Công Thương"></i>
                                <input id="SGB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="SGB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="bnt_atm_nab_ck_on">
                                <i class="NAB" title="Ngân hàng Nam Á"></i>
                                <input id="NAB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="NAB" />

                            </label>
                        </li>

                        <li class="bank-online-methods ">
                            <label for="sml_atm_bab_ck_on">
                                <i class="BAB" title="Ngân hàng Bắc Á"></i>
                                <input id="BAB" type="radio" name="ctl19$ctl00$ctl00$ctl00$bankcode" value="BAB" />

                            </label>
                        </li>

                    </ul>

                </div>
            </div>
            <div class="p-row cod-row" style="display: none;">
                <label>
                    <input id="VISA" type="radio" name="ctl19$ctl00$ctl00$ctl00$pm" value="VISA" />
                    Thanh toán bằng thẻ Visa hoặc MasterCard</label>
                <div class="boxContent">
                </div>
            </div>


        </div>

    </div>
    <br>
    <div class="col-md-12" style="margin: 20px 0px;">
        <input type="button" name="addOrder" value="Đặt hàng" id="btnbuys" class="addOrder btn" />
    </div>
    <br>
</div>
    
    

</div>
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
    $(document).on('click', '.btnbuys', function(event) {
        $('.infoOrder').removeClass('hidden');
        $('.tool_cart').hide();
        
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
</script>
<script>
    $('input[name="ctl17$ctl00$ctl00$ctl00$pm"]').bind('click', function () {
        $('.p-row').removeClass('active');
        $(this).parent('div.p-row').addClass('active');
    });
    $(document).on("change", '.txtnumc', function () {
        var numitemincart = parseInt($("#numitemincart").val());
        var total = 0;
        var i;
        for (i = 1; i <= numitemincart; i++) {
            total += numeral($(".pr" + i).val()).value() * numeral($("#sl" + i).val()).value();
            
            $(".thanhtien" + i).html(numeral(numeral($(".pr" + i).val()).value() * numeral($("#sl" + i).val()).value()).format('0,0').replace(",", ".").replace(",", ".").replace(",", ".") + " ") ;
        }
        $(".totals_price .prnum").html(numeral(total).format('0,0').replace(",", ".").replace(",", ".").replace(",", ".") + " ") ;
       // $(".total2 .prnum").html(numeral(total).format('0,0').replace(",", ".").replace(",", ".").replace(",", ".") + " ");
    });
    $(document).on("change", '#ddlcity', function () {
        var id = $(this).val();
        $.ajax({
            type: "POST",
            url: "/webservices/srv.asmx/GetDistrict",
            data: "{ city: '" + id + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $("#ddlqh").html("");
                $("#ddlqh").html(data.d);
                px();
            },
            error: function (data) {
            }
        })
    });
    $(document).on("change", '#ddlqh', function () {
        px();
    });
    function px() {
        var id = $("#ddlqh").val();
        $.ajax({
            type: "POST",
            url: "/webservices/srv.asmx/GetPX",
            data: "{ qh: '" + id + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $("#ddlpx").html("");
                $("#ddlpx").html(data.d);
            },
            error: function (data) {
            }
        })
    }
</script>

            </div>
        </div>
    </div>
</section>

@endsection

@section('js')
    

@endsection