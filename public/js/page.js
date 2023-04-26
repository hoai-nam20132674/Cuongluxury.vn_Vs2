function goToByScroll(id) {
    $('html,body').animate({
        scrollTop: ($(".container-p").offset().top - 70)
    }, 500);
}
$('body').on('click', '.pagination-home a', function (event) {
    var page = $(this).attr('p');
    var classify = $('input[name="trang-thai-hang"]:checked').val();
    if (classify == null) {
        classify = 0;
    }
    goToByScroll(0);
    alert(classify)
    // loaditems(-1, page);
});

$(".classify-filters input:checkbox").on('click', function () {
    var $box = $(this);
    if ($box.is(":checked")) {
        var classify = $('input[name="trang-thai-hang"]:checked').val();
        var page = 1;
        // alert(classify + "-" + page);
        loaditems(-1, 1, classify);
        $box.prop("checked", true);
    } else {
        $box.prop("checked", false);
        var page = 1;
        var classify = 0;
        //  alert(classify + "-" + page);
        loaditems(-1, 1, classify);
        // $('#kk').html("");
    }
});