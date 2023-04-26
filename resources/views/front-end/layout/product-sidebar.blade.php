<div class="sidebar_feature_listing">
	<h4 class="title pb10">{{__('Cập nhật mới nhất')}}</h4>
	@foreach($products as $item)
	<a href="{{$item->url}}">
		<div class="media">
			<img width="90px" height="60px" class="align-self-start mr-3" src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt="fls1.jpg">
			<div class="media-body">
		    	<h5 class="mt-0 post_title">{{__($item->da)}}</h5>
		    	<a class="number-format" href="{{$item->url}}">
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
		    	<!-- <ul class="mb0">
		    		<li class="list-inline-item">Beds: 4</li>
		    		<li class="list-inline-item">Baths: 2</li>
		    		<li class="list-inline-item">Sq Ft: 5280</li>
		    	</ul> -->
			</div>
		</div>
	</a>
	@endforeach
</div>