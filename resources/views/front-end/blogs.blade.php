@extends('front-end.layout.default')
@section('head')
    
        <meta name="robots" content="noodp,index,follow" />
        <meta name="google" content="notranslate" />
        <meta name="keywords" content="{{$categorie->seo_keyword}}" />
        <meta name="description" content="{{$categorie->seo_description}}" />
        <meta property="og:type" content="website" />
        <meta property="og:title" content="{{$categorie->title}}" />
        <meta property="og:title" content="{{$categorie->title}}" />
        <meta property="og:description" content="{{$categorie->seo_description}}" />
        <meta property="og:site_name" content="{{$categorie->title}}" />
        <meta property="og:url" content="{{$system->website}}/{{$categorie->url}}" />
        <meta property="og:image" content="" />
        <meta property="og:locale" content="vi_VN" />
        <link rel="canonical" href="" /> 
        <title>{{$categorie->name}}</title>
        <style type="text/css">
            .list-inline-item a {
                /*color: #484848 !important;*/
            }
        </style>
    
@endsection

@section('content')
    <!-- Inner Page Breadcrumb -->
    <section class="inner_page_breadcrumb">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="breadcrumb_content">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/">{{__('trang chủ')}}</a></li>
                            @if($categorie->parent_id != null)
                                @php
                                    $cate_parent = App\BlogCate::where('id',$categorie->parent_id)->get()->first();
                                @endphp
                                <li class="breadcrumb-item active" aria-current="page"><a href="{{$cate_parent->url}}">{{__($cate_parent->name)}}</a></li>
                            @endif
                            <li class="breadcrumb-item active" aria-current="page"><a href="{{$categorie->url}}">{{__($categorie->name)}}</a></li>
                            
                        </ol>
                        <h1 class="breadcrumb_title">{{__($categorie->name)}}</h1>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Main Blog Post Content -->
    <section class="blog_post_container bgc-f7">
        <div class="container">
            
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        @foreach($blogs as $item)
                            <div class="col-lg-12">
                                <div class="feat_property list style2 hvr-bxshd bdrrn mb10 mt20">
                                    <a href="{{$item->url}}">
                                    <div class="thumb">
                                        <img class="img-whp" src="{{asset('uploads/images/blogs/'.$item->avata)}}" alt="fp1.jpg">
                                        
                                    </div>
                                    </a>
                                    <div class="details">
                                        <div class="tc_content">
                                            <div class="dtls_headr">
                                                <ul class="tag">
                                                    @foreach($item->categories as $cate)
                                                        @if($cate->parent_id == null)
                                                        <li class="list-inline-item" style="background: #2d4571;"><a href="{{$cate->url}}">{{$cate->name}}</a></li>
                                                        @endif
                                                    @endforeach
                                                    @foreach($item->categories as $cate)
                                                        @if($cate->parent_id != null)
                                                        <li class="list-inline-item" style="background: #2d4571;"><a href="{{$cate->url}}">{{$cate->name}}</a></li>
                                                        @endif
                                                    @endforeach
                                                </ul>
                                                
                                            </div>
                                            <a href="{{$item->url}}">
                                                <h4 style="text-transform: capitalize;">{{$item->name}}</h4>
                                            </a>
                                            <p>
                                                
                                                {!! \Illuminate\Support\Str::words($item->short_description, 40,'...')  !!}
                                            </p>
                                            <!-- <ul class="blog_sp_post_meta">
                                                @php
                                                    Carbon\Carbon::setLocale('en');
                                                    $date = $item->created_at->isoFormat('ll');
                                                @endphp
                                                <li class="list-inline-item"><span class="flaticon-calendar"></span></li>
                                                <li class="list-inline-item">{{$date}}</li>
                                                <li class="list-inline-item"><span class="flaticon-view"></span></li>
                                                <li class="list-inline-item">100 views</li>
                                            </ul> -->
                                        </div>
                                        <div class="fp_footer">
                                            <ul class="fp_meta float-left mb0">
                                                
                                                <li class="list-inline-item"><a href="#">{{$item->user->name}}</a></li>
                                            </ul>
                                            
                                            <div class="fp_pdate float-right">
                                                @php
                                                    Carbon\Carbon::setLocale('vi');
                                                    $date = $item->created_at->isoFormat('ll');
                                                @endphp
                                                <li class="list-inline-item"><span class="flaticon-calendar"></span></li>
                                                <li class="list-inline-item">{{$date}}</li>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        @endforeach
                    </div>
                    <div class="row">
                        <div class="col-lg-12 mt20">
                            <div class="mbp_pagination">
                                @php
                                    $items = $blogs;
                                @endphp
                                <ul class="page_navigation">
                                    @if($items->currentPage() != 1)
                                        <li class="page-item">
                                            <a class="page-link" href="{{$items->url($items->currentPage()-1)}}" tabindex="-1" aria-disabled="true"> <span class="flaticon-left-arrow"></span> Prev</a>
                                        </li>
                                    @else
                                        <li class="page-item disabled">
                                            <a class="page-link" href="{{$items->url($items->currentPage()-1)}}" tabindex="-1" aria-disabled="true"> <span class="flaticon-left-arrow"></span> Prev</a>
                                        </li>
                                    @endif
                                    @for($i =1; $i<=$items->lastPage();$i++)
                                        @if($request->page == $i)
                                            <li class="page-item active" aria-current="page">
                                                <a class="page-link" href="{{$items->url($i)}}">{{$i}}<span class="sr-only">(current)</span></a>
                                            </li>
                                        @else
                                            <li class="page-item"><a class="page-link" href="{{$items->url($i)}}">{{$i}}</a></li>
                                        @endif
                                    @endfor
                                    @if( $items->currentPage() != $items->lastPage())
                                        <li class="page-item">
                                            <a class="page-link" href="#"><span class="flaticon-right-arrow"></span></a>
                                        </li>
                                    @else
                                        <li class="page-item disabled">
                                            <a class="page-link" href="#"><span class="flaticon-right-arrow"></span></a>
                                        </li>
                                    @endif
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    @include('front-end.layout.blog-sidebar')
                    @include('front-end.layout.contact-sidebar')
                </div>
                
            </div>
        </div>
    </section>

@endsection
@section('js')

@endsection