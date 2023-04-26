
<div class="item" href="{{$item->url}}">
	<div class="properti_city home6">
		<div class="thumb">
			<img class="img-fluid w100" style="height: 100%" src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt="fp10.jpg">
			<div class="thmb_cntnt">
				<ul class="tag mb0">
					@if($item->lbds == 1)
						<li class="list-inline-item" style="background: #3e4c66"><a href="#">{{__('Cho thuê')}}</a></li>
					@else
						<li class="list-inline-item"><a href="#">{{__('Đang bán')}}</a></li>
					@endif
				</ul>
			</div>
		</div>
		
		<div class="overlay">
			
			<div class="details">
				
				
				<a href="{{$item->url}}"><h4 title="{{$item->name}}">{{__($item->da)}}</h4></a>
				<a class="fp_price number-format" href="{{$item->url}}">
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
				<!-- <p>
                    <span class="bx bx-category"></span>
                    @foreach($item->categories as $cate)
                        {{$cate->name}},
                    @endforeach
                </p> -->
				<ul class="prop_details mb0">
					<li class="list-inline-item" style="margin-right: 1.5rem;"><a href="#"><span class="fa fa-bed color-red" style="margin-right: 5px;"></span>{{__($item->bed)}}</a></li>
					<li class="list-inline-item" style="margin-right: 1.5rem;"><a href="#"><span class="fa fa-bath color-red" style="margin-right: 5px;"></span>{{$item->bath}}</a></li>
					<li class="list-inline-item" style="margin-right: 1.5rem;"><a href="#"><span class="fa fa-object-group color-red" style="margin-right: 5px;"></span>{{$item->area}} m2</a></li>
					<li class="list-inline-item" style="margin-right: 1.5rem;"><a href="#"><span class="flaticon-view color-red" style="margin-right: 5px;"></span>{{$item->view}}</a></li>
				</ul>

				<a href="{{$item->url}}" class="read-more mt10">{{__('xem chi tiết')}}</a>
				
			</div>
		
		</div>

	</div>
</div>