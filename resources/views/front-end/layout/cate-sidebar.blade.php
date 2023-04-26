<div class="terms_condition_widget">
    <h4 class="title">{{__('danh mục')}}</h4>
    <div class="widget_list">
        <ul class="list_details">
            @foreach($categories as $cate)
                @if($cate->parent_id == null)
                    @php
                        $cate_children = App\ProductCate::where('parent_id',$cate->id)->get();
                    @endphp
                    <li class="mb10 cate-parent" cate-id="{{$cate->id}}">
                        <a href="{{$cate->url}}" class="badge badge-light" style="border: 1px solid #b80000;"><i class='bx bxs-chevron-right-circle' style='color:#fff'  ></i>{{$cate->name}}</a>
                        <span class="float-right">{{count($cate_children)}} {{__('dự án')}}</span>
                    </li>
                    <div class="list_cate_children" cate-parent-id="{{$cate->id}}">
                        @foreach($cate_children as $cate_child)
                            <li class="mb10" >
                                <a href="{{$cate_child->url}}" class="badge badge-light">{{$cate_child->name}}</a>
                                <span class="float-right">{{count($cate_child->products)}} {{__('sản phẩm')}}</span>
                            </li>
                        @endforeach
                    </div>
                @else
                @endif
            @endforeach
        </ul>
    </div>
</div>