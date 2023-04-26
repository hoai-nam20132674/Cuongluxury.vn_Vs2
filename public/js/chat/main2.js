function chatNotification(userId){
    
    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = false;
    var pusher = new Pusher('ea290067b19ac27d819e', {
      cluster: 'ap1'
    });

    var channel = pusher.subscribe('chatNotification.'+userId);
    pusher.bind('chatNotification', (data) => {
        
      console.log(data.message);
      
    });
}
$(document).ready(function(){
	var authId = $('.open-chatbox').attr('auth-id');
	if(authId != 0){
		chatNotification(authId);
	}
	else{

	}
	$('#chatbox').hide();
  	var preloadbg = document.createElement("img");
  	preloadbg.src = "https://s3-us-west-2.amazonaws.com/s.cdpn.io/245657/timeline1.png";
  
	$("#searchfield").focus(function(){
		if($(this).val() == "Search contacts..."){
			$(this).val("");
		}
	});
	$("#searchfield").focusout(function(){
		if($(this).val() == ""){
			$(this).val("Search contacts...");
			
		}
	});
	
	$("#sendmessage input").focus(function(){
		if($(this).val() == "Send message..."){
			$(this).val("");
		}
	});
	$("#sendmessage input").focusout(function(){
		if($(this).val() == ""){
			$(this).val("Send message...");
			
		}
	});

	$('.open-chatbox').click(function(){
		$('#chatbox').fadeIn();
		$(this).hide();
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