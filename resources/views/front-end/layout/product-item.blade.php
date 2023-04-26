
<div class="item">
    
    <div class="feat_property home3">
        <div class="thumb">
            <a href="{{$item->url}}" >
                <img class="img-whp" src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt="fp1.jpg">
                <div class="thmb_cntnt">
                    
                    
                    <!-- <a class="fp_price badge badge-warning">{!!number_format($item->price)!!} VNĐ</a> -->
                </div>
            </a>
        </div>
        <div class="details">
            <a href="{{$item->url}}" >
                <div class="tc_content">
                    <h4 style="text-transform: capitalize;" title="{{$item->name}}">{!! \Illuminate\Support\Str::words($item->name, 10,'...')  !!}</h4>
                    <ul class="tag mb0">
                        <li class="list-inline-item badge badge-info mb10" ><a href="#">{{__('mới')}}</a></li>
                        @if($item->highlight == 1)
                        <li class="list-inline-item badge badge-danger mb10"><a href="#">{{__('nổi bật')}}</a></li>
                        @else
                        
                        @endif
                        <a class="fp_price badge badge-warning" >
                            @if($item->tiente == 0 && $item->price > 1000000000)
                                {{round($item->price/1000000000, 3)}} tỷ

                            @else
                                @if($item->tiente == 0)
                                    {!!number_format($item->price)!!} vnđ
                                @else
                                    {!!number_format($item->price)!!} $
                                @endif
                            @endif
                        </a>
                    </ul>
                    <p>
                        <span class="bx bx-category"></span>
                        @foreach($item->categories as $cate)
                            {{$cate->name}},
                        @endforeach
                    </p>
                    <!-- <ul class="blog_sp_post_meta">
                        @php
                            Carbon\Carbon::setLocale('vi');
                            $now = \Carbon\Carbon::now();
                            $date = $item->created_at->isoFormat('ll');
                        @endphp
                        <li class="list-inline-item"><span class="flaticon-calendar"></span></li>
                        <li class="list-inline-item">{{\Carbon\Carbon::createFromTimestamp(strtotime($item->created_at))->diffForHumans($now)}}</li>
                        <li class="list-inline-item"><span class="flaticon-view"></span></li>
                        <li class="list-inline-item">{{$item->view}} lượt xem</li>
                    </ul> -->
                    <ul class="blog_sp_post_meta">
                        <li class="list-inline-item" title="{{ __('phòng ngủ') }}"><span class="fa fa-bed"></span></li>
                        <li class="list-inline-item">{{$item->bed}}</li>
                        <li class="list-inline-item" title="{{ __('nhà vệ sinh') }}"><span class="fa fa-bath"></span></li>
                        <li class="list-inline-item">{{$item->bath}}</li>
                        <li class="list-inline-item" title="{{__('diện tích')}}"><span class="fa fa-object-group"></span></li>
                        <li class="list-inline-item">{{$item->area}} m2</li>
                        <li class="list-inline-item" title="{{ __('lượt xem') }}"><span class="flaticon-view"></span></li>
                        <li class="list-inline-item">{{$item->view}}</li>
                    </ul>
                </div>
            </a>
        </div>
    </div>
    </a>
</div>
