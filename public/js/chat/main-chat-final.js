function chatNotification(userId){
    
    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = false;
    var pusher = new Pusher('0c94070af3648ccac056', {
      cluster: 'ap1'
    });

    var channel = pusher.subscribe('chatNotification.'+userId);
    pusher.bind('chatNotification', (data) => {
    	var roomId = $('#chat-messages').attr('room-id');
    	var now = new Date().toLocaleString();
      if(data.roomId != roomId){
      	if(data.typeMessage == 2){
      		var audio = new Audio('/music/message3.mp3');
        	audio.play();
        	$.ajax({
		        url: '/getPartnerRoomId/'+data.roomId,
		        type: 'get',
		        dataType: 'json',
		        success: function(data2) {
		        	var authId = $('#chat-messages').attr('auth-id');
		        	for(j=0;j<data2.length;j++){
		        		if(data2[j].user_id == authId){

		        		}
		        		else{
		        			var html = '<div class="friend" room-id="'+data2[j].room_id+'"><img src="uploads/images/users/avatars/'+data2[j].avatar+'" /><p><strong>'+data2[j].name+'</strong><br><span><i class="bx bx-check-shield" style="color:#00d25b" ></i> Tài khoản đã xác thực</span></p><div class="status available"></div></div>';
		          		$('#friends').prepend(html);
		        		}
		        	}
		          
		            
		        }
		    });
        	console.log('Có một kênh chat mới');
      	}
      	else{
      		var audio = new Audio('/music/message3.mp3');
	        audio.play();
	      	$('.friend[room-id='+data.roomId+']').addClass('new-message');
	      	$('.friend[room-id='+data.roomId+']').parent().prepend($('.friend[room-id='+data.roomId+']'));
	      	$(".new-message").each(function(){
	      		$(this).children('p').children('span').html('Bạn có tin nhắn mới');

	      	});
	      	var notification = '<div id="" check="0" class="nofifition-drop-item unread"><a href="#" onclick="chat('+data.partnerId+',1)"><div class="notification-image ng-scope"><i class="bx bxl-messenger bx-flashing" style="color:#1876f2;font-size: 58px;"></i></div><div class="notification-content-description"><h1 class="title ng-binding ng-scope">TIN NHẮN MỚI</h1><div class="summary ng-binding ng-scope">Bạn có tin nhắn mới</div><div class="date-submit ng-scope"><i class="far fa-clock"></i><span class="ng-binding">'+now+'</span></div></div></a></div>';
	      	$('.scroll-view').prepend(notification);
	      	$('.n-news').text($('n-news').text()+1);
	      	toastr.success('Bạn có tin nhắn mới');

      	}
      	
      }
      else{
      	var audio = new Audio('/music/message3.mp3');
        audio.play();
        if(data.typeMessage == 0){
      		$('#chat-messages').append('<br><div class="chats"><div class="chat-content"><div class="message-content">'+data.message+'</div><div class="chat-time"><div><div class="time">'+now+'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>');
      		var elem = document.getElementById('chat-messages');
  				elem.scrollTop = elem.scrollHeight;
      	}
      	else{
      		$('#chat-messages').append('<br><div class="chats"><div class="chat-content"><div class="message-content-img"><img width="100%" src="/uploads/images/chats/'+data.message+'"></div><div class="chat-time"><div><div class="time">'+now+'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>');
      		var elem = document.getElementById('chat-messages');
  				elem.scrollTop = elem.scrollHeight;
      	}

      }
      
      
    });
}

function chat(id,check){
    if(check){
        $.ajax({
            type: 'GET',
            url: '/chat/checkChatRoomExist/'+id,
            dataType: 'json',
            success: function(data) {
                if(data.check == 1){
                	setTimeout(function(){
			
										$('#chatbox').fadeIn();
										$('.open-chatbox').fadeOut();
										$('.friend[room-id='+data.roomId+']').click();

									}, 50);
                	// console.log('đã có chatroom');
                }
                else{
                	var html = '<div class="friend" room-id="'+data.roomId+'"><img src="uploads/images/users/avatars/'+data.avatar+'" /><p><strong>'+data.name+'</strong><br><span><i class="bx bx-check-shield" style="color:#00d25b" ></i> Tài khoản đã xác thực</span></p><div class="status available"></div></div>';
				          $('#friends').prepend(html);
				          $('#chatbox').fadeIn();
				          $('.open-chatbox').fadeOut();
				          $('.friend[room-id='+data.roomId+']').click();
                	console.log('chưa có chatroom');
                }

            }
        });
    }
    else{
        swal("Vui lòng đăng nhập để sử dụng chức năng này",);
        swal({
          title: "ĐĂNG NHẬP ?",
          text: "Vui lòng đăng nhập để sử dụng chức năng chat này",
          icon: "warning",
          buttons: ["Đóng", "Đăng nhập"],
          dangerMode: true,
        })
        .then((willDelete) => {
          if (willDelete) {
                $('.close[ng-click="cancel()"]').click();
                $('.login_none[ng-click="signin()"]').click();
          } else {
            
          }
        });
    }
    
}

$('#message-value').submit (function(event) {
    event.preventDefault();
    if($('input[name="message"]').val() == ''){

    }
    else{
        var message = $( "#message-value" ).serialize();
        var roomId = $('#chat-messages').attr('room-id');
        $.ajax({
            url: '/newMessage/'+roomId,
            type: "post",
            data: message,
            success: function(d) {
               	if(d){
               
                	var now = new Date().toLocaleString();
                	$('#chat-messages').append('<br><div class="chats chats-right"><div class="chat-content"><div class="message-content">'+$('input[name="message"]').val()+'</div><div class="chat-time"><div><div class="time">'+now+'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>');
				    var elem = document.getElementById('chat-messages');
				  	elem.scrollTop = elem.scrollHeight;
				  	$('input[name="message"]').val('');

               	}

            }
        });

    }
    // return false;

});


$(document).ready(function(){
	var authId = $('.open-chatbox').attr('auth-id');
	if(authId != 0){
		chatNotification(authId);
		$.ajax({
	        url: '/getChatRooms',
	        type: 'get',
	        dataType: 'json',
	        success: function(data) {
	            for(i=0;i<data.length;i++){
	            	$.ajax({
				        url: '/getPartnerRoomId/'+data[i].room_id,
				        type: 'get',
				        dataType: 'json',
				        success: function(data2) {
				        	var authId = $('#chat-messages').attr('auth-id');
				        	for(j=0;j<data2.length;j++){
				        		if(data2[j].user_id == authId){

				        		}
				        		else{
				        			var html = '<div class="friend" room-id="'+data2[j].room_id+'"><img src="uploads/images/users/avatars/'+data2[j].avatar+'" /><p><strong>'+data2[j].name+'</strong><br><span><i class="bx bx-check-shield" style="color:#00d25b" ></i> Tài khoản đã xác thực</span></p><div class="status available"></div></div>';
				          		$('#friends').append(html);
				        		}
				        	}
				          
				            
				        }
				    });
	            }
	            
	        }
	    });
	}
	else{

	}
	$('#chatbox').hide();
  	var preloadbg = document.createElement("img");
  	preloadbg.src = "https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/timeline1.png";
  
	

	$('.open-chatbox').click(function(){
		if($(this).attr('auth-id') == 0){
			swal("Vui lòng đăng nhập để chat");
		}
		else{
			$('#chatbox').fadeIn();
			$(this).hide();
			
		}
		
	});
		
	
	$(".friend").each(function(){		
		$(this).click(function(){
			var childOffset = $(this).offset();
			var parentOffset = $(this).parent().parent().offset();
			var childTop = childOffset.top - parentOffset.top;
			var clone = $(this).find('img').eq(0).clone();
			var top = childTop+12+"px";
			
			// $(clone).css({'top': top}).addClass("floatingImg").appendTo("#chatbox");									
			
			setTimeout(function(){$("#profile p").addClass("animate");$("#profile").addClass("animate");}, 100);
			setTimeout(function(){
				$("#chat-messages").addClass("animate");
				$('.cx, .cy').addClass('s1');
				setTimeout(function(){$('.cx, .cy').addClass('s2');}, 100);
				setTimeout(function(){$('.cx, .cy').addClass('s3');}, 200);			
			}, 150);														
			
			// $('.floatingImg').animate({
			// 	'width': "68px",
			// 	'left':'108px',
			// 	'top':'20px'
			// }, 200);
			
			var name = $(this).find("p strong").html();
			var email = $(this).find("p span").html();														
			$("#profile p").html(name);
			$("#profile span").html(email);			
			
			$(".message").not(".right").find("img").attr("src", $(clone).attr("src"));									
			$('#friendslist').fadeOut();
			$('#chatview').fadeIn();
		
			
			$('#close').click(function(){				
				$("#chat-messages, #profile, #profile p").removeClass("animate");
				$("#chat-messages").attr('room-id',0);
				$('.cx, .cy').removeClass("s1 s2 s3");
				$('.floatingImg').animate({
					'width': "40px",
					'top':top,
					'left': '12px'
				}, 200, function(){$('.floatingImg').remove()});				
				
				setTimeout(function(){
					$('#chatview').fadeOut();
					$('#friendslist').fadeIn();
					// $('#chatbox').hide();
					// $('.open-chatbox').show();

				}, 50);
			});
			
		});
	});
	$(document).on('click', '.friend', function(event) {
		event.preventDefault();
		var roomId = $(this).attr('room-id');
		$('#chat-messages').attr('room-id',roomId);
		if($(this).hasClass('new-message')){
			$(this).removeClass('new-message');
		}
		$(this).children('p').children('span').html('<i class="bx bx-check-shield" style="color:#00d25b" ></i> Tài khoản đã xác thực');
		$.ajax({
      url: '/getPartnerRoomId/'+roomId,
      type: 'get',
      dataType: 'json',
      success: function(data) {
      	var authId = $('#chat-messages').attr('auth-id');
      	for(j=0;j<data.length;j++){
      		if(data[j].user_id == authId){

      			if(data[j].messages == null){
      				$('#chat-messages').html('<label>Nhắn tin an toàn</label>');
      			}
      			else{
      				$('#chat-messages').html(data[j].messages);
      			}
      			
      		}
      		else{
      			
      		}
      	}
        
          
      }
  	});
  	
		var childOffset = $(this).offset();
		var parentOffset = $(this).parent().parent().offset();
		var childTop = childOffset.top - parentOffset.top;
		var clone = $(this).find('img').eq(0).clone();
		var top = childTop+12+"px";
		
		// $(clone).css({'top': top}).addClass("floatingImg").appendTo("#chatbox");									
		
		setTimeout(function(){$("#profile p").addClass("animate");$("#profile").addClass("animate");}, 100);
		setTimeout(function(){
			$("#chat-messages").addClass("animate");
			$('.cx, .cy').addClass('s1');
			setTimeout(function(){$('.cx, .cy').addClass('s2');}, 100);
			setTimeout(function(){$('.cx, .cy').addClass('s3');}, 200);			
		}, 150);														
		
		// $('.floatingImg').animate({
		// 	'width': "68px",
		// 	'left':'108px',
		// 	'top':'20px'
		// }, 200);
		
		var name = $(this).find("p strong").html();
		var email = $(this).find("p span").html();														
		$("#profile p").html(name);
		$("#profile span").html(email);			
		
		$(".message").not(".right").find("img").attr("src", $(clone).attr("src"));									
		$('#friendslist').fadeOut();
		$('#chatview').fadeIn();
	
		
		$('#close').click(function(){				
			$("#chat-messages, #profile, #profile p").removeClass("animate");
			$("#chat-messages").attr('room-id',0);
			$('.cx, .cy').removeClass("s1 s2 s3");
			$('.floatingImg').animate({
				'width': "40px",
				'top':top,
				'left': '12px'
			}, 200, function(){$('.floatingImg').remove()});				
			
			setTimeout(function(){
				$('#chatview').fadeOut();
				$('#friendslist').fadeIn();
				// $('#chatbox').hide();
				// $('.open-chatbox').show();

			}, 50);
		});
		// $(document).ajaxStop(function(){
  //     var elem = document.getElementById('chat-messages');
  // 		elem.scrollTop = elem.scrollHeight;
  //   });
    setTimeout(function(){
    	var elem = document.getElementById('chat-messages');
  		elem.scrollTop = elem.scrollHeight;
    },1000);

	});
	$('#close-chatbox').click(function(){								
		
		setTimeout(function(){
			
			$('#chatbox').fadeOut();
			$('.open-chatbox').fadeIn();

		}, 50);
	});
	$("#searchfield").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#friends .friend").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	});			
});