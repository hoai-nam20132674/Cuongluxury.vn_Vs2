<div class='item'>
    <div class='prdboxsli-item'>
       <div class='prdboxsli-thumb'><a href='/{{$item->url}}' title='{{$item->name}}'><img loading='lazy' src="{{asset('uploads/images/products/details/'.$item->avata)}}" alt='{{$item->name}}' /></a></div>
       <div class='prdboxsli-ccname'>Patek Philippe</div>
       <div class='prdboxsli-key'>MSP: {{$item->ma}}</div>
       <div class='prdboxsli-title'><a href='/{{$item->url}}' title='Patek Philippe Complications 5905R-001 Like New 2020'>{{$item->name}}</a></div>
       <div class='prdboxsli-price'>
          <div class='item-price'><span class='special-price'><span class='price-container'><span class='price-wrapper'><span class='price'>{!!number_format($item->price)!!}<span class='dvtt'>@if($item->tiente == 0) đ @else $ @endif </span></span></span></span></span></div>
       </div>
    </div>
 </div>