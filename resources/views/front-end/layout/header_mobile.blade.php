<div id="page" class="stylehome1 h0">
    <div class="mobile-menu">
        <div class="header stylehome1">
            <div class="main_logo_home2 text-center">
                <div>
                    <img class="nav_logo_img mt20" src="{{asset('uploads/images/systems/'.$system->logo)}}" alt="header-logo2.png">
                </div>
                <!-- <span class="mt20">ThuVienBanVe</span> -->
            </div>
            <ul class="menu_bar_home2">
                <li class="list-inline-item list_s" style="display: none;"><a href="page-register.html"><span class="flaticon-user"></span></a></li>
                <li class="list-inline-item">
                    <div class="search_overlay">
                        <div id="search-button-listener2" class="mk-search-trigger style2 mk-fullscreen-trigger">
                            <div id="search-button2"><i class="flaticon-magnifying-glass"></i></div>
                            
                        </div>
                        <div class="mk-fullscreen-search-overlay" id="mk-search-overlay2">
                            <button class="mk-fullscreen-close" id="mk-fullscreen-close-button2"><i class="fa fa-times"></i></button>
                            <div id="mk-fullscreen-search-wrapper2">
                                <form action="search" id="mk-fullscreen-searchform2">
                                    <input type="text" name="keyword" placeholder="Tìm kiếm ..." id="mk-fullscreen-search-input2">
                                    <i class="flaticon-magnifying-glass fullscreen-search-icon"><input value="" type="submit"></i>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="list-inline-item"><a href="#menu"><span></span></a></li>
            </ul>
        </div>
    </div><!-- /.mobile-menu -->
    <nav id="menu" class="stylehome1">
        <ul>
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
            <!-- <li class="list-inline-item list_s language">
                    @php
                    $locale = config('app.locale');
                @endphp
                <a href="javascript:;" class="dropdown-header-name lang-active" locale="{{$locale}}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <img class="img-locale-active" src="uploads/images/systems/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
                </a>
                
                <ul class="dropdown-menu dropdown-menu-right icons-right" locale="{{$locale}}">
                    
                    <li class="active lang-item">
                        <a href="change-language/vi">
                            <img src="uploads/images/systems/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
                            <span>Việt Nam</span>
                        </a>
                    </li>
                    <li class="lang-item">
                        <a href="change-language/ko">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="Hàn Quốc" width="16" alt="Hàn Quốc">
                            <span>Hàn Quốc</span>
                        </a>
                    </li>
                </ul>

            </li> -->
            <div class="nav-item dropdown">
                <a href="javascript:;" class="dropdown-header-name lang-active" locale="{{$locale}}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    
                        <span>{{__('Ngôn ngữ')}}</span>
                </a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="/?locale=vi">
                        <img src="uploads/images/systems/vn.svg" title="Tiếng Việt" width="16" alt="Tiếng Việt">
                        <span>{{__('VN')}}</span>
                    </a>
                    <a class="dropdown-item" href="/?locale=ko">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/225px-Flag_of_South_Korea.svg.png" title="{{__('KOR')}}" width="16" alt="{{__('KOR')}}">
                        <span>{{__('KOR')}}</span>
                    </a>
                    <a class="dropdown-item" href="/?locale=en">
                        <img src="https://cms.botble.com/vendor/core/core/base/images/flags/us.svg" title="{{__('EN')}}" width="16" alt="{{__('EN')}}">
                        <span>{{__('EN')}}</span>
                    </a>
                    <a class="dropdown-item update" href="#">
                        <img src="https://upload.wikimedia.org/wikipedia/commons/9/9e/Flag_of_Japan.svg" title="{{__('JA')}}" width="16" alt="{{__('JA')}}">
                        <span>{{__('JA')}}</span>
                    </a>
                </div>
            </div>
            <!-- <li><a href="page-login.html"><span class="flaticon-user"></span> Đăng nhập</a></li> -->
            <!-- <li class="cl_btn"><a class="btn btn-block btn-lg btn-thm circle" href="#"><span class="flaticon-telephone"></span> {{$system->phone}}</a></li> -->
        </ul>
    </nav>
</div>