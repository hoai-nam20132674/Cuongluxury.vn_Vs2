@extends('front-end.layout.default')

@section('head')
    <title>{{$categorie->title}}</title>
    <meta name="description" content="{{$categorie->seo_description}}" />
    <meta name="keywords" content="{{$categorie->seo_keyword}}" />
    <meta name="DC.title" content="CuongLuxury" />
    <meta property="og:type" name="ogtype" content="Website" />
    <meta property="og:title" name="ogtitle" content="{{$categorie->title}}" />
    <meta property="og:description" name="ogdescription" content="{{$categorie->seo_description}}" />
    <meta property="og:url" name="ogurl" content="https://cuongluxury.vn/{{$categorie->url}}" />
    <meta property="og:image" name="ogimage" content="{{asset('uploads/images/blogs/categories/'.$categorie->avata)}}" />
    <meta property="og:image:alt" name="og:image:alt" content="Cuong Luxury" />
    <meta property="og:sitename" content="https://cuongluxury.vn/" />
    <link rel="canonical" href="https://cuongluxury.vn/{{$categorie->url}}" />
@endsection


@section('content')
    <section class="bread-crumb a-center">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="title-head margin-top-0">
                       {{$categorie->name}}
                    </div>
                    <ul class="breadcrumb" itemscope="">
                        <li class="home">
                            <a itemprop="url" href="/"><span itemprop="title">Trang chủ</span></a>
                           
                        </li>
                        <li ><span><i class='fa fa-angle-right'></i> </span><strong itemprop='title'><a itemprop='url' href='{{$categorie->url}}' title='{{$categorie->name}}'>{{$categorie->name}}</a></strong></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>


    <div class="container" itemscope="" itemtype="http://schema.org/Blog">
        <meta itemprop='name' content='Chuyên mục tin tức'><meta itemprop='description' content=''>
        <div class="row">
            <section class="right-content col-md-12 list-blog-page">
                <div class="box-heading hidden">
                    <h1 class="title-head">
                        {{$categorie->name}}
                    </h1>
                </div>
                <section class="list-blogs blog-main ">
                    <div class="row">
                        <div class="col-lg-12 col-xs-12">
                            <div class="headding-title-cates hidden">
                                {{$categorie->name}}
                            </div>
                        </div>
                                @foreach($blogs as $item)
                                <div class="col-xs-12 col-sm-6 col-md-3">
                                    <div class="news_i_h">
                                        <article class="blog-item">
                                            <div class="blog-item-thumbnail">
                                                <a href="/{{$item->url}}" title="{{$item->title}}">
                                                    <img src="{{asset('uploads/images/blogs/'.$item->avata)}}" alt="{{$item->title}}">
                                                </a>
                                            </div>
                                            <div class="blog-info">
                                                 <h3 class="blog-item-name">
                                                   <a href="/{{$item->url}}" title="{{$item->title}}">
                                                        {!! \Illuminate\Support\Str::words($item->name, 8,'...')  !!}</a></h3>
                                                <p style="text-align: justify;" class="blog-item-summary margin-bottom-5">
                                                    {!! \Illuminate\Support\Str::words($item->short_description, 18,'...')  !!}
                                                </p>
                                                <a href="/{{$item->url}}" title="Đọc tiếp" class="btn-new-h">Đọc tiếp <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                            
                                @endforeach
                            
                            @php
                                $items = $blogs;
                            @endphp
                            <div class="d_page">
                                @if($items->currentPage() != 1)
                                    
                                    <a href="{{$items->url($items->currentPage()-1)}}"><</a>
                                @else
                                    <b href="{{$items->url($items->currentPage()-1)}}"><</b>
                                @endif
                                @for($i =1; $i<=$items->lastPage();$i++)
                                    @if($request->page == $i)
                                        
                                        <b>{{$i}}</b>
                                    @else
                                        <a href="{{$items->url($i)}}">{{$i}}</a>
                                    @endif
                                @endfor
                                
                                @if( $items->currentPage() != $items->lastPage())
                                    <a href="{{$items->url($items->currentPage()+1)}}">></a>
                                @else
                                    <b href="{{$items->url($items->currentPage()+1)}}">></b>
                                @endif

                            </div>
                    </div>
                </section>
            </section>
            <aside class="left left-content  col-md-3 hidden ">

                
            </aside>
        </div>
    </div>

@endsection

@section('js')
    

@endsection