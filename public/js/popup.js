
$(document).on('click', '.quickview-close, #quick-view-product .quickview-overlay, .fancybox-overlay', function (e) {
    $("#quick-view-product").fadeOut(0);
    awe_hidePopup();
    $('#quick-view-product').modal('hide');
});