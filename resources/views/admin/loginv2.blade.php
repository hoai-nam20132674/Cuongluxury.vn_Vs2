
<!doctype html>
<html lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none" data-preloader="disable">

    <head>

        <meta charset="utf-8" />
        <title>CuongLuxury Admin | Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="CuongLuxury Admin | Dashboard" name="description" />
        <meta content="Themesbrand" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- Layout config Js -->
        <script src="{{asset('js/admin/loginv2/layout.js')}}"></script>
        <!-- Bootstrap Css -->
        <link href="{{asset('css/admin/loginv2/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="{{asset('css/admin/loginv2/icons.min.css')}}" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="{{asset('css/admin/loginv2/app.min.css')}}" rel="stylesheet" type="text/css" />
        <!-- custom Css-->
        <link href="{{asset('css/admin/loginv2/custom.min.css')}}" rel="stylesheet" type="text/css" />

    </head>

    <body>

        <div class="auth-page-wrapper pt-5">
            <!-- auth page bg -->
            <div class="auth-one-bg-position auth-one-bg" id="auth-particles">
                <div class="bg-overlay"></div>

                <div class="shape">
                    <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1440 120">
                        <path d="M 0,36 C 144,53.6 432,123.2 720,124 C 1008,124.8 1296,56.8 1440,40L1440 140L0 140z"></path>
                    </svg>
                </div>
            </div>

            <!-- auth page content -->
            <div class="auth-page-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center mt-sm-5 mb-4 text-white-50">
                                <!-- <div>
                                    <a href="index.html" class="d-inline-block auth-logo">
                                        <img src="https://cuongluxury.vn/uploads/banners/logo-w.png" alt="" height="100">
                                    </a>
                                </div> -->
                                <p class="mt-3 fs-15 fw-medium">QUẢN TRỊ NỘI DUNG WEBSITE CUONGLUXURY.VN</p>
                            </div>
                        </div>
                    </div>
                    <!-- end row -->

                    <div class="row justify-content-center">
                        <div class="col-md-8 col-lg-6 col-xl-5">
                            <div class="card mt-4">

                                <div class="card-body p-4">
                                    <div class="text-center mt-2">
                                        <h5 class="text-primary">XIN CHÀO !</h5>
                                        <p class="text-muted">Vui lòng đăng nhập để tiếp tục phiên làm việc</p>
                                    </div>
                                    <div class="p-2 mt-4">
                                        @if( count($errors) > 0)
                                        <div class="alert alert-danger">
                                            <ul>
                                                @foreach($errors->all() as $error)
                                                    <li>{{$error}}</li>
                                                @endforeach
                                            </ul>
                                        </div>
                                        @endif
                                        @if( Session::has('flash_message'))
                                            <div class="alert alert-{{ Session::get('flash_level')}}">
                                                {{ Session::get('flash_message')}}
                                            </div>
                                        @endif
                                        <form action="{{URL::route('postLogin')}}" method="post">
                                            @csrf
                                            <div class="mb-3">
                                                <label for="email" class="form-label">Tài khoản</label>
                                                <input type="text" name="email" required value="{{old('email')}}" class="form-control" id="email" placeholder="Nhập email">
                                            </div>

                                            <div class="mb-3">
                                                <div class="float-end">
                                                    <a href="#" class="text-muted">Quên mật khẩu?</a>
                                                </div>
                                                <label class="form-label" for="password">Mật khẩu</label>
                                                <div class="position-relative auth-pass-inputgroup mb-3">
                                                    <input type="password" value="{{old('password')}}" name="password" class="form-control pe-5 password-input" placeholder="Nhập mật khẩu" id="password">
                                                    <button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted password-addon" type="button" id="password-addon"><i class="ri-eye-fill align-middle"></i></button>
                                                </div>
                                            </div>

                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" value="" id="auth-remember-check">
                                                <label class="form-check-label" for="auth-remember-check">Duy trì đăng nhập</label>
                                            </div>

                                            <div class="mt-4">
                                                <button class="btn btn-success w-100" type="submit">ĐĂNG NHẬP</button>
                                            </div>

                                            <div class="mt-4 text-center">
                                                <div class="signin-other-title">
                                                    <h5 class="fs-13 mb-4 title">Đăng Nhập Với</h5>
                                                </div>
                                                <div>
                                                    <button type="button" class="btn btn-primary btn-icon waves-effect waves-light"><i class="ri-facebook-fill fs-16"></i></button>
                                                    <button type="button" class="btn btn-danger btn-icon waves-effect waves-light"><i class="ri-google-fill fs-16"></i></button>
                                                    <button type="button" class="btn btn-dark btn-icon waves-effect waves-light"><i class="ri-github-fill fs-16"></i></button>
                                                    <button type="button" class="btn btn-info btn-icon waves-effect waves-light"><i class="ri-twitter-fill fs-16"></i></button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- end card body -->
                            </div>
                            <!-- end card -->

                            <div class="mt-4 text-center">
                                <p class="mb-0">Bạn chưa có tài khoản ? <a href="#" class="fw-semibold text-primary text-decoration-underline"> Vui lòng liên lệ Admin </a> </p>
                            </div>

                        </div>
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
            </div>
            <!-- end auth page content -->

            <!-- footer -->
            <footer class="footer">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <p class="mb-0 text-muted">&copy;
                                    <script>document.write(new Date().getFullYear())</script> CuongLuxury CMS <i class="mdi mdi-heart text-danger"></i> Design by NN
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- end Footer -->
        </div>
        <!-- end auth-page-wrapper -->

        <!-- JAVASCRIPT -->
        <script src="{{asset('js/admin/loginv2/bootstrap.bundle.min.js')}}"></script>
        <script src="{{asset('js/admin/loginv2/simplebar.min.js')}}"></script>
        <script src="{{asset('js/admin/loginv2/waves.min.js')}}"></script>
        <script src="{{asset('js/admin/loginv2/feather.min.js')}}"></script>
        <script src="{{asset('js/admin/loginv2/lord-icon-2.1.0.js')}}"></script>
        <script src="{{asset('js/admin/loginv2/plugins.js')}}"></script>

        <!-- particles js -->
        <script src="{{asset('js/admin/loginv2/particles.js')}}"></script>
        <!-- particles app js -->
        <script src="{{asset('js/admin/loginv2/particles.app.js')}}"></script>
        <!-- password-addon init -->
        <script src="{{asset('js/admin/loginv2/password-addon.init.js')}}"></script>
    </body>

</html>