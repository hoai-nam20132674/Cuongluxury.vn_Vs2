$(document).ready(function () {
    $(".owl-social").owlCarousel({
        loop: true,
        navigation: false,
        items: 1,
        autoplay: true,
        autoplayTimeout: 1000,
        animateIn: true,
		dots: false
    });
    $('#aml_dk-main-button').click(function (e) {
        e.stopPropagation();
        $('.aml-flc-style-main-button').slideToggle();
        $('#aml_dk-main-button').css("opacity","0");
		$('#aml_dk-main-button').css("pointer-events","none");
        $('.aml_phone').css("opacity", "0");
    });
    $(".aml_dk-main-button-close").click(function (e) {
        e.stopPropagation();
        $('.aml-flc-style-main-button').slideUp();
        $('#aml_dk-main-button').css("opacity", "1");
		$('#aml_dk-main-button').css("pointer-events","auto");
        $('.aml_phone').css("opacity", "1");
    });
    $('.aml_click_to_call').click(function (e) {
        e.stopPropagation();
        $('#autoAdsMaxLead_widget_click_to_call_popup').show();
    });
    $('.autoAdsMaxLead-widget-icon-close-container').click(function (e) {
        e.stopPropagation();
        $('#autoAdsMaxLead_widget_click_to_call_popup').hide();
    });
    $('.aml_dk-channel-contact_form').click(function (e) {
        e.stopPropagation();
        $('#autoAdsMaxLead_widget_contact_form_popup').addClass("show");
    });
    $('.close-wrap').click(function (e) {
        e.stopPropagation();
        $('#autoAdsMaxLead_widget_contact_form_popup').removeClass("show");
    });
});
function sendphone() {
    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
    var phone = jQuery('#autoAdsMaxLead_widget_form_CallbackPhone').val();
    if (!vnf_regex.test(phone)) {
        alert("vui lòng nhập đúng số điện thoại và có đủ 10 số");
        $('#autoAdsMaxLead_widget_form_CallbackPhone').focus();
        return;
    }
    $.ajax({
        type: "POST",
        url: "webservices/SearchAirport.asmx/sendphone",
        data: "{phone1: '" + phone + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            if (data.d == "1") {
                alert("Đăng ký thành công");
                $('#autoAdsMaxLead_widget_form_CallbackPhone').val("");
location.href="https://cuongluxury.vn/gui-yeu-cau-tu-van-thanh-cong";
            }

            else {
                $("#widget-subscribe-form-result1").html("Vui lòng nhập đầy đủ thông tin");
            }
        },
        error: function (data) {
        }
    })
}
function checkemail() {
    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
    var name = $('#name_popup').val();
    var phone = $('#phone_popup').val();
    var email = $('#email_popup').val();
    var content = $('#content_popup').val();
    if (name.length == 0) {
        alert("vui lòng nhập họ tên");
        $('#name_popup').focus();
        return;
    }
    else if (!vnf_regex.test(phone)) {
        alert("vui lòng nhập đúng số điện thoại và có đủ 10 số");
        $('#phone_popup').focus();
        return;
    }
    else if (validateEmail(email) == false) {
        alert("Vui lòng nhập đúng địa chỉ email");
    }
    $.ajax({
        type: "POST",
        url: "webservices/SearchAirport.asmx/sendemailpopup",
        data: "{name1:'" + name + "',email1: '" + email + "',phone1:'" + phone + "',content1:'" + content + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            if (data.d == "1") {
                alert("Để lại lời nhắn thành công");
            }
            else {
                alert("Vui lòng nhập đầy đủ thông tin");
            }
        },
        error: function (data) {
        }
    })
}
function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}