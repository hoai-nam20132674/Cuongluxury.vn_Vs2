<div class="sidebar_feature_listing">
	<h4 class="title pb10">{{__('Cập nhật mới nhất')}}</h4>
	@foreach($blogNews as $item)
	<a href="{{$item->url}}">
		<div class="media">
			<img width="90px" height="70px" class="align-self-start mr-3" src="{{asset('uploads/images/blogs/'.$item->avata)}}" alt="fls1.jpg">
			<div class="media-body">
		    	<h5 class="mt-0 post_title" title="{{$item->name}}">{!! \Illuminate\Support\Str::words($item->name, 5,'...')  !!}</h5>
		    	<p>{!! \Illuminate\Support\Str::words($item->short_description, 10,'...')  !!}</p>
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