<div class="mobile-main-menu" id="mobile-main-menu">
    <div class="la-scroll-fix-infor-user">
        <div class="la-nav-menu-items">
            <div class="la-title-nav-items"><strong>Menu</strong></div>
            <ul class="la-nav-list-items">
            	@foreach($menus as $item)
            		@php
                        $childs = App\Menu::where('parent_id',$item->id)->get();
                    @endphp
                    @if(count($childs))
                    	<li  class='ng-scope ng-has-child1 @if($item->title == "Đồng Hồ") open @endif'><a title='{{$item->title}}' class='' href='{{$item->url}}' style='float: left;width: 90%;'>{{$item->title}}</a>
                    		<i class='fa fa-sort-desc fa1' ></i>
		                	<ul class='ul-has-child1'>
		                		@foreach($childs as $child)
		                			<li class='ng-scope' ><a class='' title='{{$child->title}}' href='{{$child->url}}'>{{$child->title}}</a></li>
		                		@endforeach
		                		
		                	</ul>
		                </li>
                    @else
                    	<li  class='ng-scope'><a class='' title='{{$item->title}}' href='{{$item->url}}'>{{$item->title}}</a></li>
                    @endif
            	@endforeach
                
          
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript">
	// if($('#mobile-main-menu').hasClass('active')){
	// 	window.addEventListener('click', function(e){   
	// 	  if (document.getElementById('mobile-main-menu').contains(e.target)){
		    
	// 	  } else{
		    
	// 	    $('#mobile-main-menu').removeClass('active');
	// 	  }
	// 	});
	// }
	
</script>