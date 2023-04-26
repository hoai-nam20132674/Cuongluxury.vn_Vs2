<div class="banner-ads">
    <div class="banner-style-one" >
        @foreach($adss as $ads)
            
            <div class="item">
                <a href="{{$ads->href}}" target="{{$ads->target}}">
                    <img class="pb20" src="{{asset('uploads/images/adss/'.$ads->url)}}" alt="">
                </a>
            </div>
            
            @if(count($adss) == 1)
                <div class="item">
                    <a href="{{$ads->href}}" target="{{$ads->target}}">
                        <img class="pb20" src="{{asset('uploads/images/adss/'.$ads->url)}}" alt="">
                    </a>
                </div>
            @endif
        @endforeach
    </div>
</div>