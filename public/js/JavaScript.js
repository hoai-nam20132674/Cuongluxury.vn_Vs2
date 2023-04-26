function loaditems(id, pg, classifys) {
    $.ajax({
        type: "POST",
        url: "webservices/SearchAirport.asmx/loaditemsindex",
        data: "{ icid: '" + id + "',page:'" + pg + "',classify:'" + classifys + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (data) {
            $('.container-p').html(data.d);
        },
        error: function (data) {
        }
    });
}
var ww = $(window).width();
if(ww < 768){
	$(window).scroll(function() {
		var scrollmenu = 110;
		if ($(this).scrollTop() > scrollmenu){  
			$('.header-fixed').addClass("sticky");
		}
		else{
			$('.header-fixed').removeClass("sticky");
		}
	});
}
$(document).on("keypress keyup keydown", '#txt_search', function (e) {
    var key = $(this).val();
    if (key.length > 0) {
        var keycode = e.keyCode;
        if (keycode == 13) {
            location.href = "tim-kiem?key=" + key;
        }
        else {
            $.ajax({
                type: "POST",
                url: "/webservices/SearchAirport.asmx/SearchbyChar",
                data: "{key: '" + key + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (data) {
                    $("#result-search").html(data.d);
                    $("#result-search").show();
                },
                error: function (data) {
                }
            })
        }
    }
    else
        $("#result-search").hide();
})

$('body').click(function (e) {
    $("#result-search").hide();
});

$(document).mouseup(function (e) {
    var container = new Array();
    container.push($('.filter-box .aside-item'));
    $.each(container, function (key, value) {
        if (!$(value).is(e.target)  && $(value).has(e.target).length === 0) // ... nor a descendant of the container
        {
            $('.filter-box .aside-item').removeClass('active');
        }
    });
});



$(document).on('click', function (event) {
    $topCart = $('#top-cart');
    if (!$(event.target).closest('#top-cart').length) { $topCart.toggleClass('top-cart-open', false); }

});

$("#top-cart-trigger").click(function (e) {
    $topCart = $('#top-cart');
    $topCart.toggleClass('top-cart-open');
    e.stopPropagation();
    e.preventDefault();
});

$('.filter-bar').click(function (e) {
    $(this).toggleClass('active');
    $('.filter-bar-box').toggleClass('active');
});