<aside class="left left-content col-md-3 col-xs-12" id="right-sidebar">
    <aside class="aside-item collection-category">
        <div class="aside-title">
            <h3 class="title-head margin-top-0"><span>Danh mục sản phẩm</span></h3>
        </div>
        <div class="aside-content">
            <nav class="nav-category navbar-toggleable-md">
                <ul class="nav navbar-pills">
                    @foreach($product_cates as $item)
                        <li class='nav-item'><a class='' href='{{$item->url}}' title='{{$item->name}}'>{{$item->name}}</a></li>
                    @endforeach
                </ul>
            </nav>
        </div>
    </aside>
    <aside class="aside-item collection-category blog-category">
        <div class="heading">
            <h2 class="title-head"><span>Danh mục tin tức</span></h2>
        </div>
        <div class="aside-content">
            <nav class="nav-category  navbar-toggleable-md">
                <ul class="nav navbar-pills">
                    @foreach($blog_cates as $item)
                        <li class='nav-item'><a class='' href='{{$item->url}}' title='{{$item->name}}'>{{$item->name}}</a></li>
                    @endforeach
                </ul>
            </nav>
        </div>
    </aside>
    <div class="aside-item">
        <div class="heading">
            <h2 class="title-head">
                <a title="Tin nổi bật">
                    <i class="ion ion-ios-images"></i>
                    Tin mới nhất
                </a>
            </h2>
        </div>
        <div class="list-blogs list-aside-new-hot">
            @foreach($blogNews as $item)
                <article class="blog-item blog-item-list clearfix">
                    <a href="{{$item->url}}" class="panel-box-media">
                        <img src="{{asset('uploads/images/blogs/'.$item->avata)}}" width="70" alt="{{$item->name}}">
                    </a>
                    <div class="blogs-rights">
                        <h3 class="blog-item-name"><a href="{{$item->url}}" title="{{$item->name}}">
                            {!! \Illuminate\Support\Str::words($item->name,8,'...')  !!}
                        </a></h3>
                        <div class="post-time">{{ \Carbon\Carbon::parse($item->created_at)->format('d/m/Y')}}</div>
                    </div>
                </article>
            @endforeach
        </div>
    </div>
</aside>