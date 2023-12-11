<footer class="footer-container">
    <div class="footer-top">
        <div class="container">
            <div class="footer-static">
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        
                                <div class="footer-content">
                                    <div class="footer-title footer-widget ft-infocompany">
                                        @php
                                            $htch = App\Nddl::where('keyword','htch')->get()->first();
                                        @endphp
                                        <h3>{{$htch->name}}</h3>
                                        {!!$htch->content!!}

                                    </div>
                                </div>
                            
                        <div class="social-icons">
                            <ul>
                                <li class="facebook"><a class="" href="https://www.facebook.com/profile.php?id=100086472821714"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                     
                                <li class="youtube"><a class="" href="https://www.youtube.com/channel/UCQQ_yRl1uJ5MypEvyG8hhTg"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                              
                            </ul>
                        </div>
                    </div>
                    
                            <div class="col-md-3 col-sm-12 col-xs-12">
                                <div class="footer-content">
                                    <div class="footer-title footer-widget ft-infocompany">
                                        @php
                                            $danhchonguoidung = App\Nddl::where('keyword','danhchonguoidung')->get()->first();
                                        @endphp
                                        <h3>{{$danhchonguoidung->name}}</h3>
                                        {!!$danhchonguoidung->content!!}
                                            
                                    </div>
                                </div>
                            </div>
                        
                            <div class="col-md-3 col-sm-12 col-xs-12">
                                <div class="footer-content">
                                    <div class="footer-title footer-widget ft-infocompany">
                                        @php
                                            $lienketnhanh = App\Nddl::where('keyword','lienketnhanh')->get()->first();
                                        @endphp
                                        <h3>{{$lienketnhanh->name}}</h3>
                                        {!!$lienketnhanh->content!!}
                                            
                                    </div>
                                </div>
                            </div>
                        
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        
                                <div class="footer-content">
                                    <div class="footer-title footer-widget ft-infocompany">
                                        @php
                                            $cuongluxury = App\Nddl::where('keyword','cuongluxury')->get()->first();
                                        @endphp
                                        <h3>{{$cuongluxury->name}}</h3>
                                        {!!$cuongluxury->content!!}

                                    </div>
                                </div>
                            

                        
                                <div class="thongbao-bct">
                                    <img src="https://cuongluxury.vn/images/icon-bct.png" alt="Thông báo Bộ Công Thương" />
                                </div>
                            
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>