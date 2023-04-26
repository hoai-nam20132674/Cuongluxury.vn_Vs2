<div class="col-md-3 col-sm-12">
	<div class="l-sidebar is-normal">
		<div class="accordion-2 hidden-xs">
			@if(Auth::user()->role == 3)
			<a href="{{URL::route('merchantAddCTV')}}">
			<button id="addCTV" class="accordion">Tạo gian hàng đối tác</button>
			</a>
			<div class="panel"></div>

			<a href="{{URL::route('listCTV')}}">
			<button id="addCTV" class="accordion">Danh sách đối tác</button>
			</a>
			<div class="panel"></div>
			<a href="{{URL::route('listVL')}}">
			<button id="addCTV" class="accordion">Khách hàng vãng lai</button>
			</a>
			<div class="panel"></div>
			@endif
			<button id="gh" class="accordion">Gian hàng của tôi</button>
			<div class="panel">
				<ul>
					<li class="">
						<a id="gh" class="sidebar" href="{{URL::route('merchantIndex')}}">Danh sách sản phẩm</a>
					</li>
					
					<li class="">
						<a id="gh" class="sidebar" href="{{URL::route('SO')}}">Đơn hàng đã bán</a>
					</li>
					<li class="">
						<a id="gh" class="sidebar" href="{{URL::route('PO')}}">Đơn hàng đã mua</a>
					</li>
					
				</ul>
			</div>

			<button id="tk" class="accordion">Tài khoản</button>
			<div class="panel">
				<ul>
					<li class="">
						<a id="tk" class="sidebar" href="{{URL::route('merchantInfo')}}">Thông tin cá nhân </a>
					</li>
					<li class="">
						<a id="tk" class="sidebar" href="{{URL::route('merchantEditPassword')}}">Thay đổi mật khẩu </a>
					</li>
					
				</ul>
			</div>
			
			<a href="{{URL::route('notifications')}}">
			<button class="accordion">
				Thông báo</button>
				<div class="panel">
					
				</div>
			</div>
			</a>
			<!-- <script data-cfasync="false" src="https://voso.vn/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script> -->
			<script>
				var acc = document.getElementsByClassName("accordion");
				var i;

				for (i = 0; i < acc.length; i++) {
					acc[i].addEventListener("click", function() {
						this.classList.toggle("active");
						var panel = this.nextElementSibling;
						if (panel.style.maxHeight) {
							panel.style.maxHeight = null;
						} else {
							panel.style.maxHeight = panel.scrollHeight + "px";
						}
					});
				}
			</script> </div>
		</div>