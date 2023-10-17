<div class="page-sidebar-wrapper">
    <div class="page-sidebar navbar-collapse collapse">
        <div class="sidebar">
            <div class="sidebar-content">
                <ul class="page-sidebar-menu page-header-fixed" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                    <li class="nav-item " id="cms-core-dashboard">
                        <a href="{{URL::route('home')}}" class="nav-link nav-toggle">
                            <i class="fa fa-home"></i>
                            <span class="title">Bảng điều khiển </span>
                        </a>
                    </li>
                    <!-- <li class="nav-item " id="cms-core-page">
                        <a href="#" class="nav-link nav-toggle">
                            <i class="fa fa-book"></i>
                            <span class="title">Trang </span>
                        </a>
                    </li> -->
                    <li class="nav-item" id="cms-plugins-blog">
                        <a href="#" class="nav-link nav-toggle">
                            <i class="fa fa-file-contract"></i>
                            <span class="title">Tin tức</span>
                            <span class="arrow "></span>
                        </a>
                        <ul class="sub-menu ">
                            <li class="nav-item  active " id="cms-plugins-blog-post">
                                <a href="{{URL::route('blogs')}}" class="nav-link">
                                    <i class="fa fa-list-ol"></i>
                                    Tất cả bài viết
                                </a>
                            </li>
                            <li class="nav-item " id="cms-plugins-blog-categories">
                                <a href="{{URL::route('blogCategories')}}" class="nav-link">
                                    <i class="fa fa-list"></i>
                                    Danh mục bài viết
                                </a>
                            </li>
                            
                        </ul>
                    </li>
                    <li class="nav-item" id="cms-plugins-newsletter">
                        <a href="" class="nav-link nav-toggle">
                            <i class="fa fa-newspaper"></i>
                            <span class="title">Trang</span>
                            <span class="arrow "></span>
                        </a>
                        <ul class="sub-menu ">
                            <li class="nav-item  active " id="cms-plugins-blog-post">
                                <a href="{{URL::route('pages')}}" class="nav-link">
                                    <i class="fa fa-newspaper"></i>
                                    Tất cả các trang
                                </a>
                            </li>
                            
                            
                        </ul>
                    </li>
                    
                    <li class="nav-item " id="cms-plugins-ecommerce">
                        <a href="#" class="nav-link nav-toggle">
                            <i class="fa fa-cube"></i>
                            <span class="title">Sản phẩm</span>
                            <span class="arrow "></span>
                        </a>
                        <ul class="sub-menu  hidden-ul ">
                            <li class="nav-item " id="cms-plugins-ecommerce-customer">
                                <a href="{{URL::route('products')}}" class="nav-link">
                                    <i class="fa fa-cubes"></i>
                                    Tất cả sản phẩm
                                </a>
                            </li>
                            <li class="nav-item " id="cms-plugins-product-categories">
                                <a href="{{URL::route('productCategories')}}" class="nav-link">
                                    <i class="fa fa-list"></i>
                                    Danh mục sản phẩm
                                </a>
                            </li>
                            <li class="nav-item " id="cms-plugins-product-categories">
                                <a href="{{URL::route('properties')}}" class="nav-link">
                                    <i class="fas fa-glass-martini"></i>
                                    Thuộc tính sản phẩm
                                </a>
                            </li>
                            
                        </ul>
                    </li>
                    <li class="nav-item " id="cms-plugins-ecommerce">
                        <a href="#" class="nav-link nav-toggle">
                            <i class="fa fa-cube"></i>
                            <span class="title">Video</span>
                            <span class="arrow "></span>
                        </a>
                        <ul class="sub-menu  hidden-ul ">
                            <li class="nav-item " id="cms-plugins-ecommerce-customer">
                                <a href="{{URL::route('videos')}}" class="nav-link">
                                    <i class="fa fa-cubes"></i>
                                    Danh sách video
                                </a>
                            </li>
                            <li class="nav-item " id="cms-plugins-product-categories">
                                <a href="{{URL::route('videoCategories')}}" class="nav-link">
                                    <i class="fa fa-list"></i>
                                    Danh mục video
                                </a>
                            </li>
                            
                            
                        </ul>
                    </li>
                    @if(Auth::user()->role ==1)
                    <li class="nav-item " id="cms-plugins-simple-slider">
                        <a href="{{URL::route('users')}}" class="nav-link nav-toggle">
                            <i class="fa fa-users"></i>
                            <span class="title">Thành viên</span>
                        </a>
                        
                    </li>
                    @endif

                    <li class="nav-item " id="cms-plugins-contact">
                        <a href="{{URL::route('contacts')}}" class="nav-link nav-toggle">
                            <i class="far fa-envelope"></i>
                            <span class="title">Liên hệ </span>
                        </a>
                    </li>
                    
                    <!-- <li class="nav-item " id="cms-plugins-simple-slider">
                        <a href="{{URL::route('yeucaus')}}" class="nav-link nav-toggle">
                            <i class="fa fa-retweet"></i>
                            <span class="title">Yêu cầu BĐS</span>
                        </a>
                        
                    </li>
                    <li class="nav-item " id="cms-plugins-simple-slider">
                        <a href="{{URL::route('kyguis')}}" class="nav-link nav-toggle">
                            <i class="fa fa-share-square"></i>
                            <span class="title">Ký gửi BĐS</span>
                        </a>
                        
                    </li> -->
                    @if(Auth::user()->role ==1)
                    <li class="nav-item " id="cms-core-appearance">
                        <a href="#" class="nav-link nav-toggle">
                            <i class="fa fa-television"></i>
                            <span class="title">Hiển thị </span>
                            <span class="arrow "></span>
                        </a>
                        <ul class="sub-menu  hidden-ul ">
                            
                            <li class="nav-item " id="cms-core-menu">
                                <a href="{{URL::route('editMenu')}}" class="nav-link">
                                    <i class="fa fa-bars"></i>
                                    Menu
                                </a>
                            </li>
                            <li class="nav-item " id="cms-core-menu">
                                <a href="{{URL::route('adss')}}" class="nav-link">
                                    <i class="fa fa-id-card"></i>
                                    Quảng cáo
                                </a>
                            </li>
                            <li class="nav-item " id="cms-core-appearance-custom-css">
                                <a href="{{URL::route('popups')}}" class="nav-link">
                                    <i class="fa fa-window-restore"></i>
                                    Popup
                                </a>
                            </li>
                            <li class="nav-item " id="cms-core-appearance-custom-css">
                                <a href="{{URL::route('sliders')}}" class="nav-link">
                                    <i class="fa fa-window-restore"></i>
                                    Slider
                                </a>
                            </li>
                        </ul>
                    </li>
                    
                    
                    <li class="nav-item " id="cms-core-platform-administration">
                        <a href="#" class="nav-link nav-toggle">
                            <i class="fa fa-user-shield"></i>
                            <span class="title">Quản trị hệ thống </span>
                            <span class="arrow "></span>
                        </a>
                        <ul class="sub-menu  hidden-ul ">
                            <li class="nav-item " id="cms-core-system-information">
                                <a href="{{URL::route('editSystem')}}" class="nav-link">
                                    <i class="fa fa-cog fa-spin fa-3x fa-fw"></i>
                                    Cài đặt hệ thống
                                </a>
                            </li>
                            <li class="nav-item " id="cms-core-user">
                                <a href="{{URL::route('payments')}}" class="nav-link">
                                    <i class="fas fa-credit-card"></i>
                                    Phương thức thanh toán
                                </a>
                            </li>
                        </ul>
                    </li>
                    @endif
                </ul>
            </div>
        </div>
    </div>
</div>