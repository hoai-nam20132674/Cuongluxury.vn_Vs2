<header class="header header-bg header-fixed">
    <div class="header-main">
        <div class="container">
            <!-- <div class="row"> -->
                <div class="head-demo hidden-lg hidden-md">
                    <div class="menu-icon">
                        <button type="button" class="navbar-toggle collapsed" id="trigger-mobile">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    
                    <div class="logo">
                        <a class='logo-wrapper'  href='/'><img  src="{{asset('uploads/images/systems/'.$system->logo)}}"  alt='Cuong Luxury'/></a>
                    </div>
                    <div class="list-icon-head">
                        <ul class="list-icon hidden-lg hidden-md ">
                            <li>
                                
                                <a href="{{URL::route('cart')}}" title="Giỏ hàng">
                                    <!-- <img src="{{asset('images/i-map.png')}}" alt="Giỏ hàng" /> -->
                                    <i class="fa fa-shopping-cart" style="font-size: 28px; color: #fff;" aria-hidden="true"></i>
                                </a>
                                    
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <!-- <div class="col-md-3 col-100-h">
                    <button type="button" class="navbar-toggle collapsed visible-sm visible-xs" id="trigger-mobile">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="logo hidden-lg hidden-md ">
                        <a class='logo-wrapper'  href='/'><img  src='https://cuongluxury.vn/uploads/banners/logo-w.png'  alt='Cuong Luxury'/></a>
                    </div>
                    <ul class="list-info-o1 hidden-lg hidden-md ">
                        <li>
                            
                                    <a href="https://goo.gl/maps/qVviiThbaiisCa5e8" target="_blank" title="Bản đồ">
                                        <img src="https://cuongluxury.vn/templates/home/images/i-map.png" alt="Bản đồ" />
                                    </a>
                                    <span>Chỉ đường
                                    </span>
                                
                        </li>
                        <li>
                            <a href="tel:0987.56.56.56" title="0987.56.56.56">
                                <img src="https://cuongluxury.vn/templates/home/images/i-phone.png" alt="0987.56.56.56" />
                            </a>
                            <span>
                                0987.56.56.56
                            </span>
                        </li>
                    </ul>
                </div> -->
            <!-- </div> -->
        </div>
    </div>
    <style type="text/css">
        .menu-icon {
            display: flex;
        }
        .menu-icon .navbar-toggle{
            margin: 0px !important;
        }
        .head-demo{
            display: flex;
            justify-content: space-between;
        }
        .logo{
            padding: 15px 0 !important;
        }
        .logo img {
            max-width: 70px;

        }
        .list-icon-head{
            display: flex;
            align-items: center;
        }
        .list-icon-head .list-icon{
            display: flex;
        }
        .list-icon{
            padding: 0px 5px;
        }
        .list-icon li{
            margin: 0px 5px;
        }
        #trigger-mobile .icon-bar{
            background-color: white;
            display: block;
            width: 22px;
            height: 4px;
            border-radius: 1px;
        }
    </style>
    
<div class="header-bottom">
    <div class="container">
        <div class="row">
            <div class="col-lg-2 col-md-2 col-sm-2 hidden-sm hidden-xs ">
                <ul class="list-info-o1">
                    <li>
                        
                                <a href="https://goo.gl/maps/qVviiThbaiisCa5e8" target="_blank" title="Bản đồ"> 
                                    <img src="https://cuongluxury.vn/images/i-map.png" alt="Bản đồ" />
                                </a>
                            
                    </li>
                    <li>
                        <a href="tel:0987.56.56.56" title="0987.56.56.56">
                            <img src="https://cuongluxury.vn/images/i-phone.png" alt="0987.56.56.56" />
                        </a>
                    </li>
                </ul>
            </div>
            <div class="col-md-8 hidden-sm hidden-xs no-padding-pc">
                <nav class="hidden-sm hidden-xs">
                    <ul id="nav" class="nav">

                        @php
                            $i=0;
                        @endphp
                        @foreach($menus as $item)
                            @if($i<=3)
                                @php
                                    $childs = App\Menu::where('parent_id',$item->id)->get();
                                @endphp
                                @if(count($childs))
                                    <li  class='nav-item has-mega'><a title='{{$item->title}}' class='nav-link' href='{{$item->url}}'>{{$item->title}} <i class='fa fa-angle-right' data-toggle='dropdown'></i></a>
                                        <ul class='dropdown-menu'>
                                            @foreach($childs as $child)
                                                <li  class='nav-item-lv2'><a title='{{$child->title}}' class='nav-link' href='{{$child->url}}'>{{$child->title}}</a></li>
                                            @endforeach
                                        </ul>
                                    </li>
                                @else
                                    <li  class='nav-item '><a title='{{$item->title}}' class='nav-link' href='{{$item->url}}'>{{$item->title}}</a>
                                        
                                    </li>
                                @endif
                                @php
                                    $i++;
                                @endphp
                            @else
                                @php
                                    $childs = App\Menu::where('parent_id',$item->id)->get();
                                @endphp
                                @if(count($childs))
                                    <li  class='nav-item f-right has-mega'><a title='{{$item->title}}' class='nav-link' href='{{$item->url}}'>{{$item->title}} <i class='fa fa-angle-right' data-toggle='dropdown'></i></a>
                                        <ul class='dropdown-menu'>
                                            @foreach($childs as $child)
                                                <li  class='nav-item-lv2'><a title='{{$child->title}}' class='nav-link' href='{{$child->url}}'>{{$child->title}}</a></li>
                                            @endforeach
                                        </ul>
                                    </li>
                                @else
                                    <li  class='nav-item f-right'><a title='{{$item->title}}' class='nav-link' href='{{$item->url}}'>{{$item->title}}</a>
                                        
                                    </li>
                                @endif
                            @endif
                        @endforeach
                        
                        <li class="logo-pcs">
                            <a class='logo-wrapper'  href='/'><img  src="{{asset('uploads/images/systems/'.$system->logo)}}"  alt='{{$system->name}}'/></a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2 hidden-sm hidden-xs">
                
<div class="block block-search">
    <div class="form input-group search-bar search_form" id="voice-search">
        <input type="search" id="txt_search" onkeypress="return handleKeyPress(event);" value="" placeholder="Tìm kiếm sản phẩm..." class="input input-group-field st-default-search-input search-text search-voice" autocomplete="off">
        <span class="input-group-btn button-search-s">
            <a onclick="handleKeyPress2();" class="button  btn icon-fallback-text"></a>
        </span>
    </div>
</div>

<script>
    function handleKeyPress(e) {
        var key = e.keyCode || e.which;
        if (key == 13) {
            window.location = "/tim-kiem?key=" + $("#txt_search").val();
            return false;
        }

    }
    function handleKeyPress2() {
        location.replace("/tim-kiem?key=" + $("#txt_search").val());
        return false;

    }
    $(document).ready(function () {
        $("#txt_search").keypress(function (event) {
            if (event.which == 13) {
                SearchData();
            }
        });

    });
</script>

                <div class="carti-box">
                    <a href="/gio-hang" title="Giỏ hàng">
                        <img src="https://cuongluxury.vn/images/i-cart.png" />
                    </a>
                    <div class="counter">
                        0
                    </div>
                </div>
            </div>
            <div class="hidden-lg hidden-md col-sm-12 col-xs-12">
                <div class="block block-search block-search-mobi">
                    <div class="input-group search-bar search_form  " id="voice-search">
                        <input type="search" onkeypress="return handleKeyPress3(event);" name="q" id="txt_search2" value="" placeholder="Tìm kiếm... " class="input-group-field st-default-search-input search-text search-voice" autocomplete="off">
                        <span class="button input-group-btn">
                            <a onclick="handleKeyPress4();" class="btn icon-fallback-text">
                                <i class="fa fa-search"></i>
                            </a>
                        </span>

                        <script>
                            function handleKeyPress3(e) {
                                var key = e.keyCode || e.which;
                                if (key == 13) {
                                    window.location = "/tim-kiem?key=" + $("#txt_search2").val();
                                    return false;
                                }

                            }
                            function handleKeyPress4() {
                                location.replace("/tim-kiem?key=" + $("#txt_search2").val());
                                return false;

                            }
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</header>