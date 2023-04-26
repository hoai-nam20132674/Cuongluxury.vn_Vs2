function connect(localUserId,roomId){
    
    // Enable pusher logging - don't include this in production
    Pusher.logToConsole = false;
    var pusher = new Pusher('4771e033aa7203857725', {
      cluster: 'ap1'
    });

    var channel = pusher.subscribe('chat.'+roomId);
    pusher.bind('message', (data) => {
        if(data.message ==''){

        }
        else{
            if(data.userId == localUserId){
                var now = new Date().toLocaleString();
                if(data.typeMessage == 0){
                    var html = '<div class="chats chats-right"><div class="chat-content"><div class="message-content">'+data.message+'</div><div class="chat-time"><div><div class="time">'+now+'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>';
                    $('.user-list-item[room-id='+data.roomId+']').children('.users-list-body').children().children('p').text('Bạn:' + data.message);
                }
                else{
                    var html = '<div class="chats chats-right"><div class="chat-content"><div class="message-content-img"><img width="100%" src="/uploads/images/chats/'+data.message+'"></div><div class="chat-time"><div><div class="time">'+now+'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>';
                    $('.user-list-item[room-id='+data.roomId+']').children('.users-list-body').children().children('p').text('Bạn: hình ảnh');
                }
                $('.messages').append(html);
                var heightScroll = $('#mCSB_2_container').height();
                var heightScroll2 = $('#mCSB_2_scrollbar_vertical').height();
                $('#mCSB_2_container').css('top',-(heightScroll-heightScroll2));
                $('.mCSB_dragger').css('top',heightScroll2);
                $('.user-list-item[room-id='+data.roomId+']').children('.users-list-body').children().children('p').css('color','#181C2F');
            }
            else{

                var audio = new Audio('/music/message3.mp3');
                audio.play();
                var now = new Date().toLocaleString();
                if(data.typeMessage == 0){
                    var html = '<div class="chats"><div class="chat-content"><div class="message-content">'+data.message+'</div><div class="chat-time"><div><div class="time">'+now+'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>';
                    $('.user-list-item[room-id='+data.roomId+']').children('.users-list-body').children().children('p').text(data.message);
                }
                else{
                    var html = '<div class="chats"><div class="chat-content"><div class="message-content-img"><img width="100%" src="/uploads/images/chats/'+data.message+'"></div><div class="chat-time"><div><div class="time">'+now+'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>';
                    $('.user-list-item[room-id='+data.roomId+']').children('.users-list-body').children().children('p').text('Hình ảnh');
                }
                
                $('.messages').append(html);
                var heightScroll = $('#mCSB_2_container').height();
                var heightScroll2 = $('#mCSB_2_scrollbar_vertical').height();
                $('#mCSB_2_container').css('top',-(heightScroll-heightScroll2));
                $('.mCSB_dragger').css('top',heightScroll2);
                $('.user-list-item[room-id='+data.roomId+']').children('.users-list-body').children().children('p').css('color','#1876f2');
            }
            
        }
      // console.log(data.message);
      
    });
}

$('#message-value').submit (function(event) {
    event.preventDefault();
    if($('input[name="message"]').val() == ''){

    }
    else{
        var message = $( "#message-value" ).serialize();
        var roomId = $('.chat').attr('room-id');
        $.ajax({
            url: '/newMessage/'+roomId,
            type: "post",
            data: message,
            success: function(d) {
               if(d){
                
                $('input[name="message"]').val('');
               }

            }
        });

    }
    // return false;

});

$(document).ready(function(){
    
    // var localUserId = $('li.user-list-item.active').attr('auth-id');
    $('li.user-list-item').each(function(){
        var localUserId = $(this).attr('auth-id');
        var roomId = $(this).attr('room-id');
        connect(localUserId, roomId);
    });
    // $('#mCSB_2_dragger_vertical').css('top',100);
    
    
});

document.getElementById('input-image').addEventListener('click', inputImage);
function inputImage() {
  document.getElementById('file').click();
}
function newMessageImg(){
    if(document.getElementById('file').files.length){
        
            var formData = new FormData($('#message-value')[0]);
            var roomId = $('.chat').attr('room-id');
            $.ajax({
                url: '/newMessage/'+roomId,
                type: "post",
                data: formData,
                contentType: false,
                processData: false,
                headers: { "X-CSRF-Token": $("input[name='_token']").attr("value") },
                success: function(d) {
                   if(d){
                    
                   }

                }
            });
            console.log(roomId);
            
        console.log('có file');
    }
    else{
        console.log('Không có file');
    }
}
$(document).on('click', '.user-list-item', function(event) {
    event.preventDefault();
    var roomId = $(this).attr('room-id');
    var authId = $(this).attr('auth-id');
    var partnerId = $(this).attr('partner-id');
    $('li.user-list-item.active').removeClass('active');
    $('.chat').attr('room-id',roomId);
    $(this).addClass('active');
    
    $.ajax({
        url: '/getPartner/'+partnerId,
        type: 'get',
        dataType: 'json',
        success: function(data) {
            $('.partner-name').each(function(){
                $(this).text(data.name);
            });
            $('.partner-address').text(data.address);
            $('.partner-phone').text('0'+data.phone);
            $('.partner-fb').attr('href',data.fb);
            $('.partner-ava').each(function(){
                $(this).attr('src','/uploads/images/users/avatars/'+data.avatar);
            });
            
        }
    });
    $.ajax({
        url: '/getChatMessage/'+roomId,
        type: 'get',
        dataType: 'json',
        success: function(data) {
            $('.messages').html(data.messages);
        }
    });
    $(document).ajaxStop(function(){
        var heightScroll = $('#mCSB_2_container').height();
        var heightScroll2 = $('#mCSB_2_scrollbar_vertical').height();
        $('#mCSB_2_container').css('top',-(heightScroll-heightScroll2));
        $('.mCSB_dragger').css('top',heightScroll2);
    });
    
    console.log(roomId);
});