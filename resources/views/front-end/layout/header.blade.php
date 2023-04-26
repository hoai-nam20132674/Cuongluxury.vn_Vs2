<header class="header-nav menu_style_home_one style2 home3 style3 navbar-scrolltofixed stricky main-menu">
    <div class="container-fluid p0 maxw1600 m0a">
        <!-- Ace Responsive Menu -->
        <nav>
            <!-- Menu Toggle btn-->
            <div class="menu-toggle">
                <img class="nav_logo_img img-fluid" src="https://creativelayers.net/themes/findhouse-html/images/header-logo.png" alt="header-logo.png">
                <button type="button" id="menu-btn">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <a href="/" class="navbar_brand float-left dn-smd">
                <img class="logo1 img-fluid" src="{{asset('uploads/images/systems/'.$system->logo)}}" alt="header-logo.png">
                <img class="logo2 img-fluid" src="{{asset('uploads/images/systems/'.$system->logo)}}" alt="header-logo2.png">
                <!-- <span>ThuVienBanVe</span> -->
            </a>
            <!-- Responsive Menu Structure-->
            
            <ul id="respMenu" class="ace-responsive-menu text-right" data-menu-style="horizontal">
                @foreach($menus as $menu)
                    <li>
                        <a href="{{$menu->url}}"><span class="title">{{__($menu->title)}}</span></a>
                        <!-- Level Two-->
                        @php
                            $menus2 = App\Menu::where('parent_id',$menu->id)->get();
                        @endphp
                        @if(count($menus2))
                            <ul>
                                @foreach($menus2 as $menu2)
                                    <li><a href="{{$menu2->url}}">{{__($menu2->title)}}</a>
                                        @php
                                            $menus3 = App\Menu::where('parent_id',$menu2->id)->get();
                                        @endphp
                                        @if(count($menus3))
                                            <ul>
                                                @foreach($menus3 as $menu3)
                                                    <li><a href="{{$menu3->url}}">{{__($menu3->title)}}</a></li>
                                                @endforeach
                                            </ul>
                                        @endif
                                        
                                    </li>
                                @endforeach
                                
                            </ul>
                        @endif
                    </li>
                @endforeach

                
                <li class="list-inline-item list_s language">
                    @php
                        $locale = config('app.locale');
                    @endphp
                    <a href="javascript:;" class="dropdown-header-name lang-active" locale="{{$locale}}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img class="img-locale-active" src="uploads/images/systems/vn.svg" title="{{__('VN')}}" width="16" alt="{{__('VN')}}">
                        <span class="name-active">{{__('VN')}}</span>
                    </a>
                    
                    <ul class="dropdown-menu dropdown-menu-right icons-right" locale="{{$locale}}">
                        
                        <li class="active lang-item">
                            <a href="/?locale=vi">
                                <img src="uploads/images/systems/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
                                <span>{{__('VN')}}</span>
                            </a>
                        </li>
                        <li class="lang-item">
                            <a href="/?locale=ko">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="{{__('KOR')}}" width="16" alt="{{__('KOR')}}">
                                <span>{{__('KOR')}}</span>
                            </a>
                        </li>
                        <li class="lang-item">
                            <a href="/?locale=en">
                                <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="{{__('EN')}}" width="16" alt="{{__('EN')}}">
                                <span>{{__('EN')}}</span>
                            </a>
                        </li>
                        <li class="lang-item update">
                            <a href="#">
                                <img src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="{{__('JA')}}" width="16" alt="{{__('JA')}}">
                                <span>{{__('JA')}}</span>
                            </a>
                        <li>
                    </ul>

                </li>
                <!-- <li class="list-inline-item add_listing home6"><a href="#"><span class="flaticon-telephone"></span><span class="dn-lg"> {{$system->phone}}</span></a></li> -->
                
            </ul>
        </nav>
    </div>
</header>