@extends('front-end.layout.default')

@section('head')
    <title>{{$page->title}}</title>
    <meta name="description" content="{{$page->seo_description}}" />
    <meta name="keywords" content="{{$page->seo_keyword}}" />
    <meta name="DC.title" content="CuongLuxury" />
    <meta property="og:type" name="ogtype" content="Website" />
    <meta property="og:title" name="ogtitle" content="{{$page->title}}" />
    <meta property="og:description" name="ogdescription" content="{{$page->seo_description}}" />
    <meta property="og:url" name="ogurl" content="https://cuongluxury.vn/{{$page->url}}" />
    <meta property="og:image" name="ogimage" content="{{asset('uploads/images/pages/'.$page->avata)}}" />
    <meta property="og:image:alt" name="og:image:alt" content="Cuong Luxury" />
    <meta property="og:sitename" content="https://cuongluxury.vn/" />
    <link rel="canonical" href="https://cuongluxury.vn/{{$page->url}}" />
@endsection


@section('content')
    <section class="bread-crumb a-center">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="title-head margin-top-0">
                       {{$page->name}}
                    </div>
                    <ul class="breadcrumb" itemscope="">
                        <li class="home">
                            <a itemprop="url" href="/"><span itemprop="title">Trang chủ</span></a>
                           
                        </li>
                        
                        <li> <span><i class='fa fa-angle-right'></i> </span><strong itemprop='title'>{{$page->name}}</strong></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <div class="cates-images-ppp hidden">
        <img src='/uploads/independent/' alt='Ảnh nền trang tin tức' />
    </div>



    <div class="container article-wraper margin-top-30" itemscope="" itemtype="http://schema.org/Blog">

        <div class="row">
            <section class="right-content col-md-9 col-xs-12">
                <article class="article-main" itemscope="" itemtype="http://schema.org/Article">
                    <meta itemprop='mainEntityOfPage' content='rotor-la-gi-4-kieu-rotor-thuong-gap-tren-dong-ho-co-khi'><meta itemprop='description' content='Rotor hay củ văng hoặc quả nặng, là một thành phần đặc biệt quan trọng của bộ máy cơ học tự lên dây cót, với mục đích giúp đồng hồ tự động lên cót thông qua các chuyển động bằng tay của người sử dụng. '><meta itemprop='author' content='vietanh'><meta itemprop='headline' content='Rotor là gì? 4 kiểu Rotor thường gặp trên đồng hồ cơ khí'><meta itemprop='image' content='https://cuongluxury.vn/uploads/news/rotor-la-gi-4-kieu-rotor-thuong-gap-tren-dong-ho-co-khi--5.jpg'><meta itemprop='datePublished' content='01/04/2023 11:28:00'><meta itemprop='dateModified' content='01/04/2023 11:32:36'><div class='hidden' itemprop='publisher' itemscope itemtype='https://schema.org/Organization'><div itemprop='logo' itemscope itemtype='https://schema.org/ImageObject'><img src='https://cuongluxury.vn/uploads/banners/logo-w.png' alt='Cuong Luxury'/><meta itemprop='url' content='https://cuongluxury.vn/uploads/banners/logo-w.png'><meta itemprop='width' content='173'><meta itemprop='height' content='74'></div><meta itemprop='name' content='Rotor là gì? 4 kiểu Rotor thường gặp trên đồng hồ cơ khí'></div>

                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="title-head">
                                {{$page->title}}
                            </h1>
                            @php
                                $locale = config('app.locale');
                                Carbon\Carbon::setLocale($locale);
                                $now = \Carbon\Carbon::now();
                            @endphp
                            <div class="postby">
                                <span>Đã đăng: 
                                    {{ \Carbon\Carbon::parse($page->created_at)->format('d/m/Y')}}</span>
                            </div>
                            <div class="article-details">
                                <div class="article-content">
                                    <div class="rte">
                                        <div class="caption" id="fancy-image-view">
                                            {!!$page->content!!}

                                           
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        

                        <div id="p2">
        
                            <div class="col-lg-12">

                                <div class="info-title-related-article"><span>Tin cùng chuyên mục</span></div>
                                <div class="info-related-articles">
                                    <ul>
                                        @foreach($blogs as $item)
                                        <li class="item">
                                            <a href="/{{$item->url}}" title="{{$item->name}}">
                                                <i class="fa fa-angle-double-right"></i>{{$item->name}}<span class="nd-info">({{ \Carbon\Carbon::parse($item->created_at)->format('d/m/Y')}})</span>
                                            </a>
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        
    </div>
                    </div>
                </article>
            </section>
            @include('front-end.layout.sidebar')
        </div>
    </div>

@endsection

@section('js')
    

@endsection