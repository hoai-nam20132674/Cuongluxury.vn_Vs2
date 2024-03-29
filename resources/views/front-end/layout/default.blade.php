<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="vi-vn" lang="vi-vn">
<head>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="vi" />
    <meta name="geo.placename" content="{{$system->address}}" />
    <meta property="og:locale" content="vi_VN" />
    <link rel="icon" type="image/x-icon" href="{{asset('uploads/images/systems/'.$system->shortcut_logo)}}">
    {!!$system->script!!}
    @yield('head')
    <link href="{{asset('css/Roboto.css')}}" rel="stylesheet" />
    <link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}" />
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}" />
    <link href="{{asset('css/plugin.scss.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('css/base.scss.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('css/tn_websitenoname1.scss.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('css/StyleSheet1.css')}}" rel="stylesheet" />
    <link href="{{asset('css/call.css')}}" rel="stylesheet" />
    <link href="{{asset('css/popup.css')}}" rel="stylesheet" />
    <link href="{{asset('css/tn_responsive.css')}}" rel="stylesheet" />
    <link href="{{asset('css/jquery.fancybox.css')}}" rel="stylesheet" />
    <link href="{{asset('css/toastr.min.css')}}" rel="stylesheet">
    <script src="{{asset('js/jquery-2.2.3.min.js')}}" type="text/javascript"></script>
<style>
     body{
          -webkit-touch-callout: none;
          -webkit-user-select: none;
          -moz-user-select: none;
          -ms-user-select: none;
          -o-user-select: none;
           user-select: none;
         }
</style>
        
<script>
     function killCopy(e){
           return false;
     }

     function reEnable(){
           return true;
     }

     document.onselectstart=new Function ("return false");

     if (window.sidebar){
           document.onmousedown=killCopy;
           document.onclick=reEnable;
     }
</script>
<!-- <script type="text/JavaScript">
var message="NoRightClicking"; function defeatIE() {if (document.all) {(message);return false;}} function defeatNS(e) {if (document.layers||(document.getElementById&&!document.all)) { if (e.which==2||e.which==3) {(message);return false;}}} if (document.layers) {document.captureEvents(Event.MOUSEDOWN);document.onmousedown=defeatNS;} else{document.onmouseup=defeatNS;document.oncontextmenu=defeatIE;} document.oncontextmenu=new Function("return false") 
</script> -->
<script>
document.onkeydown = function(e) {
        if (e.ctrlKey && 
            (e.keyCode === 67 || 
             e.keyCode === 86 || 
             e.keyCode === 85 || 
             e.keyCode === 117)) {
            return false;
        } else {
            return true;
        }
};
$(document).keypress("u",function(e) {
  if(e.ctrlKey)
  {
return false;
}
else
{
return true;
}
});
</script>
<!-- Messenger Plugin chat Code -->
  


</head>
<body class="">


{!!$system->script_body!!}
        
@include('front-end.layout.header')
    <h1 class="hidden">{{$system->name}}</h1>
    <!-- <p>&nbsp;</p> -->
@yield('content')
        
@include('front-end.layout.footer')



<div class="backdrop__body-backdrop___1rvky"></div>

@include('front-end.layout.mobile_menu')

<link href="{{asset('css/social.css')}}" rel="stylesheet" />
<script src="{{asset('js/social.js')}}"></script>
<div class="autoAdsMaxLead-widget show_pc" style="display: block;">
    <div id="aml_dk_wrap" class="aml_dk-wrap aml_dk-desktop aml_dk-style-main-button aml_dk-style-default aml_dk-bottom-right aml_dk-md aml_dk-channel-4 aml-hide" style="z-index: 2147483647;">
        <div class="aml_dk-flex-container aml-flc-style-main-button aml_dk-style-default" style="background: unset;width:50px">
            <a href="javascript:void(0)" class="hidden aml_dk-flex-item aml_dk-channel-contact_form aml-tooltip"><span class="aml-text-content aml-tooltiptext">Form liên hệ</span>
            </a>
            <a c class="aml_dk-flex-item aml_dk-channel-click_to_call aml_click_to_call aml-tooltip"><span class="aml-text-content aml-tooltiptext">Gọi ngay</span>
            </a>
            <a target="_blank" href="https://zalo.me/0987565656" class="aml_dk-flex-item aml_dk-channel-zalo aml-tooltip"><span class="aml-text-content aml-tooltiptext">Chat Zalo</span>
            </a>
            <a target="_blank" href="https://www.facebook.com/profile.php?id=100086472821714" class="aml_dk-flex-item aml_dk-channel-facebook aml-tooltip"><span class="aml-text-content aml-tooltiptext">Facebook Messenger</span>
            </a>
            <div class="aml_dk-flex-item aml_dk-main-button-close aml_dk-color">
                <svg style="width: 100%;" xmlns="http://www.w3.org/2000/svg" width="44" height="44" viewBox="0 0 44 44" fill="none">
                    <circle cx="22" cy="22" r="22" fill="currentColor"></circle>
                    <path d="M28.2997 15.7107C27.9097 15.3207 27.2797 15.3207 26.8897 15.7107L21.9997 20.5907L17.1097 15.7007C16.7197 15.3107 16.0897 15.3107 15.6997 15.7007C15.3097 16.0907 15.3097 16.7207 15.6997 17.1107L20.5897 22.0007L15.6997 26.8907C15.3097 27.2807 15.3097 27.9107 15.6997 28.3007C16.0897 28.6907 16.7197 28.6907 17.1097 28.3007L21.9997 23.4107L26.8897 28.3007C27.2797 28.6907 27.9097 28.6907 28.2997 28.3007C28.6897 27.9107 28.6897 27.2807 28.2997 26.8907L23.4097 22.0007L28.2997 17.1107C28.6797 16.7307 28.6797 16.0907 28.2997 15.7107Z" fill="white"></path>
                </svg>
            </div>
        </div>
        <div id="aml_dk-main-button" class="aml_dk-main-button aml_dk-background-color">
            <div class="animated infinite pulse kenit-alo-circle-fill"></div>
            <div class="aml_dk-icons-line owl-social owl-carousel">
                <span>
                    <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M2 13.1619C2 6.96726 7.42345 1.94556 14.1136 1.94556C20.8038 1.94556 26.2273 6.96726 26.2273 13.1619C26.2273 19.3565 20.8038 24.3782 14.1136 24.3782C12.9059 24.3782 11.7397 24.2138 10.639 23.9091L6.5144 26.1728V21.8962C3.76152 19.8402 2 16.6917 2 13.1619ZM12.6498 13.8316L15.7604 17.1491L22.4367 10.0616L16.4432 13.3792L13.2568 10.0616L6.58048 17.1491L12.6498 13.8316Z" fill="currentColor"></path></svg></span>
                <span>
                    <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path opacity="0.24" fill-rule="evenodd" clip-rule="evenodd" d="M22.47 3.05H5.5C3.73269 3.05 2.3 4.48269 2.3 6.25V22.12C2.3 23.8873 3.73269 25.32 5.5 25.32H22.47C24.2373 25.32 25.67 23.8873 25.67 22.12V6.25C25.67 4.48269 24.2373 3.05 22.47 3.05ZM5.5 2.75C3.567 2.75 2 4.317 2 6.25V22.12C2 24.053 3.56701 25.62 5.5 25.62H22.47C24.403 25.62 25.97 24.053 25.97 22.12V6.25C25.97 4.317 24.403 2.75 22.47 2.75H5.5Z" fill="currentColor"></path><path fill-rule="evenodd" clip-rule="evenodd" d="M7.89621 25.608H7.89625H7.89629C8.35601 25.6031 8.81555 25.5983 9.27454 25.5983L9.27245 25.5853L9.27456 25.598C9.37923 25.598 9.48389 25.6033 9.58856 25.6137H17.1506C17.7786 25.6137 18.4065 25.6149 19.0345 25.616H19.0353C20.291 25.6184 21.5467 25.6207 22.8025 25.6137H22.8286C24.5765 25.598 25.979 24.1746 25.9686 22.4267V19.3653C25.9686 19.3462 25.9699 19.3227 25.9713 19.298C25.9757 19.2211 25.9807 19.1332 25.9476 19.135C25.8534 19.1403 25.7049 19.1739 25.6525 19.2262C25.2512 19.4938 24.862 19.786 24.4728 20.0782L24.4728 20.0782C23.6944 20.6627 22.916 21.2471 22.0403 21.6344C18.6326 22.784 15.6187 22.8384 12.4197 22.0656C12.2447 22.002 12.1613 22.0091 12.0134 22.0218H12.0133H12.0133C11.918 22.0299 11.7959 22.0404 11.6051 22.0357C11.582 22.0366 11.558 22.0373 11.533 22.0381L11.5327 22.0381C11.2171 22.0479 10.759 22.0622 10.2113 22.3953C8.92917 22.7878 7.19024 22.8384 6.29163 22.7041C6.29543 22.7126 6.29786 22.7201 6.29974 22.727L6.29703 22.7213L6.29161 22.7095C6.27912 22.6954 6.26335 22.683 6.24808 22.671C6.19934 22.6325 6.1556 22.5981 6.23928 22.5264C6.2637 22.5107 6.28813 22.4944 6.31255 22.4781C6.36139 22.4455 6.41023 22.413 6.45907 22.3851C7.14462 21.9402 7.78831 21.4535 8.2122 20.7366C8.78846 20.0379 8.52135 19.7654 8.01214 19.246L7.99295 19.2264C5.51211 16.695 4.78212 14.0088 5.04087 10.3957C5.34963 8.41234 6.26021 6.70631 7.57375 5.22007C8.36919 4.31995 9.31641 3.59254 10.3526 2.98548C10.3675 2.97597 10.385 2.96821 10.4028 2.9603C10.4534 2.93776 10.5071 2.91391 10.5148 2.84418C10.5209 2.78911 10.4325 2.77092 10.4011 2.77092C9.81054 2.77092 9.22761 2.76564 8.64739 2.76039C7.49486 2.74995 6.35304 2.73961 5.18348 2.77094C3.50361 2.81804 1.97264 3.97498 2.00037 6.03645C2.00735 9.67897 2.00502 13.3192 2.0027 16.9586C2.00153 18.778 2.00037 20.5972 2.00037 22.4165C2.00037 24.1068 3.29298 25.525 4.9833 25.593C5.95293 25.6285 6.92498 25.6183 7.89615 25.608H7.89618H7.89621ZM6.35804 22.8239L6.37011 22.8403C6.45785 22.9182 6.54493 22.9968 6.6315 23.076C6.54752 22.9956 6.46077 22.9153 6.37012 22.8349L6.35804 22.8239ZM9.03696 25.3377C9.00782 25.3185 8.97977 25.298 8.95534 25.2736L8.9484 25.2721L8.95532 25.279C8.97975 25.3011 9.00781 25.3199 9.03696 25.3377ZM10.091 13.8868C10.3582 13.8868 10.62 13.8862 10.878 13.8856C11.3831 13.8845 11.8738 13.8833 12.3622 13.8868C12.7756 13.892 13.0006 14.0647 13.0425 14.3944C13.0896 14.8078 12.8489 15.0852 12.3988 15.0904C11.7631 15.0983 11.1304 15.0973 10.4962 15.0963C10.2846 15.096 10.0728 15.0957 9.8607 15.0957C9.7903 15.0957 9.72032 15.0965 9.65052 15.0974L9.65037 15.0974H9.65035C9.47638 15.0995 9.30355 15.1016 9.12806 15.0904C8.82453 15.0747 8.52624 15.0119 8.37971 14.6979C8.23318 14.384 8.33784 14.1014 8.53671 13.8449C9.34262 12.8192 10.1538 11.7883 10.9649 10.7626C11.012 10.6998 11.0591 10.637 11.1062 10.5794C11.0677 10.5139 11.0177 10.5193 10.969 10.5247C10.9516 10.5266 10.9343 10.5285 10.9178 10.5271C10.6352 10.5245 10.3513 10.5245 10.0674 10.5245C9.78351 10.5245 9.49961 10.5245 9.21702 10.5219C9.08619 10.5219 8.95536 10.5062 8.82976 10.48C8.53147 10.412 8.34831 10.1137 8.41634 9.8206C8.46344 9.62174 8.62044 9.45951 8.8193 9.41241C8.94489 9.38101 9.07572 9.36531 9.20655 9.36531C10.1381 9.36008 11.0748 9.36008 12.0063 9.36531C12.1738 9.36008 12.336 9.38101 12.4982 9.42288C12.8541 9.54324 13.0059 9.87293 12.8646 10.2183C12.739 10.5166 12.5401 10.773 12.3413 11.0295L12.3412 11.0295C11.6557 11.9034 10.9701 12.7721 10.2846 13.6356C10.227 13.7036 10.1747 13.7717 10.091 13.8868ZM16.1615 11.1338C16.2871 10.9716 16.418 10.8198 16.6325 10.7779C17.0459 10.6942 17.4332 10.9611 17.4384 11.3798C17.4541 12.4264 17.4489 13.4731 17.4384 14.5197C17.4384 14.7919 17.2605 15.0326 17.0041 15.1111C16.7424 15.2105 16.4441 15.132 16.2714 14.907C16.1825 14.7971 16.1458 14.7762 16.0202 14.8756C15.544 15.2628 15.005 15.3309 14.4241 15.1425C13.4926 14.8389 13.1105 14.1115 13.0059 13.2271C12.896 12.2694 13.2152 11.453 14.0735 10.9506C14.7852 10.5267 15.5074 10.5634 16.1615 11.1338ZM15.2771 11.8926C15.3559 11.8959 15.433 11.9105 15.5063 11.9356C15.6641 11.9865 15.8044 12.0873 15.9051 12.2276C16.1982 12.6253 16.1982 13.2794 15.9051 13.6772C15.8528 13.7452 15.7952 13.8028 15.7324 13.8499C15.5719 13.9686 15.3837 14.0236 15.1984 14.0195C15.0235 14.017 14.8475 13.9617 14.6962 13.8497C14.6334 13.8026 14.5758 13.7451 14.5235 13.6771C14.3927 13.4939 14.3194 13.2741 14.3089 13.0438C14.3037 12.306 14.7067 11.8612 15.2771 11.8926ZM19.7882 13.0753C19.7463 11.7304 20.6307 10.7256 21.8867 10.689C23.2212 10.6471 24.1945 11.542 24.2364 12.8503C24.2783 14.1743 23.4671 15.1111 22.2164 15.2367C20.8505 15.3727 19.7672 14.3837 19.7882 13.0753ZM21.1017 12.9504C21.0914 13.2118 21.1699 13.468 21.3267 13.6824L21.3282 13.6843C21.3697 13.7411 21.4164 13.7927 21.4732 13.834C21.5503 13.8948 21.6348 13.9403 21.7229 13.9709C21.9086 14.0362 22.1142 14.0366 22.303 13.9664C22.4475 13.914 22.5795 13.8225 22.6813 13.6938L22.6821 13.6929L22.6897 13.6828C22.836 13.4881 22.9094 13.2266 22.9104 12.9643C22.9117 12.7304 22.8551 12.4963 22.7413 12.3077C22.7246 12.2799 22.7066 12.2531 22.6874 12.2275C22.5408 12.0286 22.3106 11.903 22.0646 11.8978C22.0238 11.8955 21.9838 11.8957 21.9448 11.8982C21.4598 11.9287 21.1234 12.3172 21.1027 12.893C21.102 12.9117 21.1017 12.9306 21.1017 12.9496L21.1017 12.9504ZM19.3276 12.0339C19.3276 12.3043 19.3282 12.5747 19.3288 12.8451C19.33 13.3858 19.3311 13.9266 19.3276 14.4674C19.3329 14.8389 19.0398 15.1477 18.6682 15.1582C18.6054 15.1582 18.5374 15.1529 18.4746 15.1372C18.213 15.0692 18.0141 14.7919 18.0141 14.4622V10.3017C18.0141 10.2195 18.0135 10.1379 18.0129 10.0565C18.0118 9.8943 18.0106 9.73284 18.0141 9.56906C18.0193 9.1661 18.2758 8.90443 18.663 8.90443C19.0607 8.8992 19.3276 9.16086 19.3276 9.57952C19.3311 10.1239 19.33 10.6707 19.3288 11.2167V11.2168L19.3288 11.22C19.3282 11.4916 19.3276 11.7631 19.3276 12.0339Z" fill="currentColor"></path></svg></span>
                <span>
                    <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M6.84191 2.11467C6.98073 2.16191 7.19487 2.27215 7.31783 2.35092C8.07127 2.84709 10.1692 5.51291 10.8553 6.8439C11.2479 7.60387 11.3787 8.16697 11.2558 8.58438C11.1289 9.03328 10.9187 9.26957 9.97885 10.0217C9.60207 10.3248 9.2491 10.6359 9.19363 10.7187C9.05085 10.9235 8.9358 11.325 8.9358 11.6086C8.93983 12.2662 9.3681 13.4594 9.93123 14.3768C10.3674 15.0895 11.1487 16.0031 11.9221 16.7041C12.8302 17.531 13.6313 18.0941 14.5355 18.539C15.6974 19.1139 16.4073 19.2597 16.9268 19.0195C17.0577 18.9604 17.1965 18.8816 17.2401 18.8462C17.2798 18.8108 17.5851 18.4406 17.9183 18.0311C18.5607 17.2277 18.7074 17.0978 19.1476 16.9482C19.7068 16.7592 20.2779 16.8104 20.8529 17.1018C21.2892 17.3263 22.2409 17.913 22.8556 18.3382C23.6646 18.9013 25.3936 20.3032 25.6277 20.5828C26.0401 21.0868 26.1115 21.7325 25.8339 22.4453C25.5404 23.1974 24.3983 24.6071 23.6012 25.2096C22.8794 25.753 22.3678 25.9617 21.6937 25.9932C21.1385 26.0207 20.9085 25.9735 20.1986 25.6821C14.6307 23.4022 10.185 20 6.6555 15.3258C4.81146 12.8845 3.40756 10.3524 2.44782 7.72597C1.88869 6.1942 1.86094 5.5287 2.32091 4.74509C2.51924 4.41434 3.36394 3.59527 3.97862 3.13851C5.00182 2.38244 5.47371 2.10284 5.85047 2.02411C6.10823 1.96897 6.55634 2.01228 6.84191 2.11467Z" fill="currentColor"></path></svg></span>
                <span>
                    <svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M3.45895 3.66675H24.5414C25.1621 3.66675 25.6993 3.88606 26.153 4.32447C26.6062 4.76342 26.8332 5.29044 26.8332 5.90636C26.8332 6.64355 26.599 7.34808 26.1319 8.01974C25.6639 8.69139 25.0816 9.26551 24.3846 9.74125C22.0672 11.3131 20.3185 12.4998 19.1311 13.3061C18.4785 13.7489 17.9931 14.0787 17.6817 14.2905C17.6355 14.3222 17.5634 14.3723 17.4675 14.4396C17.3643 14.5117 17.2337 14.6037 17.0729 14.7174C16.7625 14.9368 16.5048 15.114 16.2994 15.2495C16.0938 15.3846 15.8457 15.5363 15.5545 15.7043C15.2631 15.8724 14.9887 15.9983 14.7309 16.0823C14.4731 16.1661 14.2344 16.2082 14.0148 16.2082H14.0006H13.9863C13.7667 16.2082 13.5281 16.1661 13.2702 16.0823C13.0125 15.9983 12.7378 15.8721 12.4466 15.7043C12.1552 15.5363 11.9068 15.385 11.7017 15.2495C11.4964 15.114 11.2386 14.9368 10.9284 14.7174C10.7672 14.6037 10.6366 14.5118 10.5334 14.4393L10.5233 14.4323C10.4325 14.3688 10.3638 14.3208 10.3195 14.2905C9.91969 14.0157 9.43544 13.6846 8.87393 13.3022C8.21517 12.8532 7.44859 12.3329 6.56709 11.7359C4.93415 10.6303 3.9554 9.96535 3.63085 9.74125C3.03882 9.34939 2.48015 8.81066 1.95513 8.1248C1.43011 7.43866 1.16748 6.8018 1.16748 6.21402C1.16748 5.48635 1.36539 4.87959 1.76184 4.39442C2.15797 3.90947 2.72344 3.66675 3.45895 3.66675ZM25.4002 11.2392C23.4494 12.5296 21.7913 13.6405 20.4258 14.5725L26.8324 20.8337V10.0213C26.4217 10.4695 25.9443 10.8752 25.4002 11.2392ZM1.1665 10.0214C1.58659 10.4788 2.06911 10.8848 2.61324 11.2393C4.64142 12.5863 6.29346 13.6952 7.57566 14.5701L1.1665 20.8335V10.0214ZM26.0421 22.8208C25.6172 23.1883 25.1173 23.3745 24.5403 23.3745H3.45779C2.88091 23.3745 2.38067 23.1883 1.95575 22.8208L9.22874 15.7122C9.41066 15.8399 9.57892 15.9592 9.73065 16.0679C10.2751 16.4597 10.7165 16.7654 11.0556 16.9845C11.3944 17.2041 11.8455 17.4279 12.4091 17.6564C12.9726 17.8853 13.4976 17.9993 13.9847 17.9993H13.9989H14.0132C14.5002 17.9993 15.0253 17.8852 15.5888 17.6564C16.152 17.4279 16.6032 17.2041 16.9423 16.9845C17.2814 16.7654 17.7231 16.4597 18.2672 16.0679C18.427 15.955 18.5961 15.8362 18.7705 15.7141L26.0421 22.8208Z" fill="currentColor"></path></svg></span>
            </div>
        </div>
        <div class="aml_dk-hightlight aml_dk-background-color aml_phone">0987565656</div>
    </div>
</div>
<div class="autoAdsMaxLead-widget show_tablet_mb" style="display: block;">
    <div id="aml_dk_wrap_mobile" class="aml_dk-wrap aml_dk-mobile aml_dk-style-horizontal-default aml_dk-style-default aml_dk-bottom-center aml_dk-md aml_dk-channel-3" style="z-index: 2147483647;">
        <div class="aml_dk-flex-container aml-flc-style-horizontal-default aml_dk-style-default" >
            <a href="javascript:void(0)" class="hidden aml_dk-flex-item aml_dk-channel-contact_form "><span class="aml-text-content ">Form liên hệ</span></a>
            <a href="tel:0987565656" class="aml_dk-flex-item aml_dk-channel-click_to_call "><span class="aml-text-content ">Gọi ngay</span></a>
            <a target="_blank" href="https://zalo.me/0987565656" class="aml_dk-flex-item aml_dk-channel-zalo "><span class="aml-text-content ">Zalo</span></a>
            <a target="_blank" href="https://www.facebook.com/profile.php?id=100086472821714" class="aml_dk-flex-item aml_dk-channel-facebook"><span class="aml-text-content ">facebook</span>
            </a>
        </div>
    </div>
</div>
<div id="autoAdsMaxLead_widget_click_to_call_popup" class="aml-modal aml_dk-desktop open" data-channel="click_to_call">
    <div class="aml-modal-content aml-modal-content-one-phone">
        <div class="aml-modal-header">
            <div class="aml-close aml-btn autoAdsMaxLead-widget-icon-close-container"></div>
        </div>
        <div class="aml-modal-body">
            <div class="aml-head-body">
                <p class="aml-modal-title aml-line-clamp-2 aml-modal-title-desktop-one-phone" style="text-align: center;"></p>
                <div class="aml-input-phone">
                    <img class="aml-input-icon" src="{{asset('uploads/images/systems/gray-calls.svg')}}">
                    <input class="aml-input-field" id="autoAdsMaxLead_widget_form_CallbackPhone" data-required="phone" style="border: none" placeholder="Số điện thoại của bạn...">
                    <button type="button" class="aml-btn-require-callback aml-btn" onclick="sendphone()">Yêu cầu gọi lại</button>
                </div>
            </div>
            <label class="autoAdsMaxLead-widget-form-label" id="autoAdsMaxLead_widget_form_CallbackPhone_label">
                <div class="autoAdsMaxLead-widget-form-error-message" id="autoAdsMaxLead_widget_form_CallbackPhone_error"></div>
            </label>
            <div style="padding: 16px 32px 32px 32px;">
                <div class="aml-desktop-devider">
                    <span class="aml-desktop-devider-bar"></span><span class="aml-desktop-devider-text">Hoặc</span><span class="aml-desktop-devider-bar"></span>
                </div>
                <div class="aml-bold-contact-title">Hoặc liên hệ với chúng tôi theo hotline:</div>
                <div class="aml-bold-phone-number">{{$system->phone}}</div>
            </div>
            <div class="aml-modal-footer"></div>
        </div>
    </div>
</div>
<div id="autoAdsMaxLead_widget_contact_form_popup" class="autoAdsMaxLead_widget_contact_form_container autoAdsMaxLead-widget-popup-container aml-form-not-overflow" style="z-index: 2147483647;">
    <div class="aml-contact_form-popup contact_form-one aml-pu-desktop">
        <div class="close-wrap">
            <div class="close-btn"></div>
        </div>
        <div class="main_form">
            <div class="head_form">
                <h3 class="font-weight-bold mb-1 title_form">Để lại lời nhắn cho chúng tôi</h3>
                <span class="d-block small-title_form">Chào bạn. 👋 Hãy để lại lời nhắn. Chúng tôi sẽ liên hệ cho bạn trong thời gian sớm nhất.</span>
            </div>
            <div class="form-group mb-0 mt-14px name_form">
                <div class="w-100 ng-scope">
                    <label class="form-label font-weight-bold mb-1 ng-binding">Họ và tên <span class="red">*</span></label>
                    <div class="position-relative">
                        <input type="text" id="name_popup" class="input-field form-control pr-4 ng-pristine ng-valid ng-empty ng-touched" placeholder="Nhập họ và tên">
                    </div>
                </div>
            </div>
            <div class="form-group mb-0 mt-14px phone_form">
                <div class="w-100 ng-scope">
                    <label class="form-label font-weight-bold mb-1 ng-binding">Số điện thoại <span class="red">*</span></label>
                    <div class="position-relative">
                        <input type="text" id="phone_popup" class="input-field form-control pr-4 ng-pristine ng-untouched ng-valid ng-empty" placeholder="Nhập số điện thoại">
                    </div>
                </div>
            </div>
            <div class="form-group mb-0 mt-14px email_form">
                <div class="w-100 ng-scope">
                    <label class="form-label font-weight-bold mb-1 ng-binding">Email</label>
                    <div class="position-relative">
                        <input type="text" id="email_popup" class="input-field form-control pr-4 ng-pristine ng-untouched ng-valid ng-empty" placeholder="Nhập email">
                    </div>
                </div>
            </div>
            <div class="form-group mb-0 mt-14px content_form">
                <div class="ng-scope">
                    <div class="mb-0">
                        <label class="form-label font-weight-bold mb-1 ng-binding">Lời nhắn</label>
                        <div class="position-relative">
                            <textarea id="content_popup" class="input-field form-control ng-pristine ng-untouched ng-valid ng-empty" placeholder="Nhập lời nhắn"></textarea>

                        </div>
                    </div>
                </div>
            </div>
            <button type="button" onclick="checkemail();" class="btn w-100 mt-3 font-weight-bold font-13px ng-binding">Tư vấn cho tôi ngay</button>
        </div>
    </div>
</div>
<style>
#modal{display:none !important}
.backdrop__body-backdrop___1rvky{
    opacity:0 !important;
    display:none !important
}
.backdrop__body-backdrop___1rvky.active{
    opacity:0 !important;
    display:block !important
}
</style>

<div class="modal" id="modal">
    <div class="modal_box">
        <div class="remove_popup">
            <i class="fa fa-remove"></i>
    
        </div>
         
        <div class="modal_form">
            <div class="form_content">
<div id="popup_footer"></div>
                <div class="form_input">
                    <input type="text" id="pop_name" name="name" class="input__form_fields" placeholder="Họ và tên" />
                </div>
                <div class="form_input">
                    <input type="text" id="pop_phone" name="phone" class="input__form_fields" placeholder="Số điện thoại" />
                </div>
                <button id="btn_popup" type="button">Đăng ký</button>
            </div>
        </div>
    </div>
</div>

<script>

                                          
                                                $(document).on("click", "#btn_popup", function (event) {
                                                    var name = $("#pop_name").val();    
                                                    var phone = $("#pop_phone").val();
                                                    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
                                                    if (name.lenght == "") {

                                                        $("#popup_footer").html("<p class='no-sucess-email'>Xin  mời nhập tên</p>");
                                                        $('#pop_name').focus();return;
                                                    }
                                                    else if (!vnf_regex.test(phone)) {

                                                        $("#popup_footer").html("<p class='no-sucess-email'>Xin  mời nhập đúng định dạng điện thoại</p>");
                                                        $('#pop_phone').focus();return;
                                                    }
$.ajax({
                                                type: "POST",
                                                url: "webservices/SearchAirport.asmx/signupephonepopup",
                                                data: "{  name: '" + name + "', phone: '" + phone + "'}",
                                                contentType: "application/json; charset=utf-8",
                                                dataType: "json",
                                                success: function (data) {
                                                    if (data.d == "1") {
                                                        $("#popup_footer").html("<p class='sucess-email'>Đăng ký tư vấn thành công</p>");
                                                        setCookie("popup_modal_l","2",60*60);
   $("#modal").hide();
                                                    $(".backdrop__body-backdrop___1rvky").css("opacity", "0");
$(".backdrop__body-backdrop___1rvky").css("visibility", "hidden");

location.href="https://cuongluxury.vn/dang-ky-tu-van-thanh-cong";
                                                    }
                                                    else {
                                                        $("#popup_footer").html("<p class='no-sucess-email'>Đăng ký tư vấn không thành công</p>");
                                                    }
                                                },
                                                error: function (data) {
                                                }
                                            });
                                                });
$(document).on("click", ".remove_popup", function (event) {
setCookie("popup_modal","1",30);
var has_cookie_popup_l = getCookie('popup_modal_l');
if (!has_cookie_popup_l ){
    setCookie("popup_modal_l","1",60*60);
}
else
{
setCookie("popup_modal_l","2",60*60);
}
                                                    $("#modal").hide();
                                                    $(".backdrop__body-backdrop___1rvky").css("opacity", "0");
$(".backdrop__body-backdrop___1rvky").css("visibility", "hidden");
                                                });

    var has_cookie_popup = getCookie('popup_modal');
var has_cookie_popup_l = getCookie('popup_modal_l');
    if (!has_cookie_popup && has_cookie_popup_l !="2") {
        $("#modal").show();
        $(".backdrop__body-backdrop___1rvky").css("opacity", "1");
        $(".backdrop__body-backdrop___1rvky").css("visibility", "visible");
    }
    else
    {
        $("#modal").hide();
        $(".backdrop__body-backdrop___1rvky").css("opacity", "0");
        $(".backdrop__body-backdrop___1rvky").css("visibility", "hidden");
    }
    

    
function setCookie(cname, cvalue, exdays) {
                                    var d = new Date();
                                    d.setTime(d.getTime() + (exdays  * 1000));
                                    var expires = "expires=" + d.toUTCString();
                                    document.cookie = cname + "=" + cvalue + "; " + expires;
                                }

                                function getCookie(cname) {
                                    var name = cname + "=";
                                    var ca = document.cookie.split(';');
                                    for (var i = 0; i < ca.length; i++) {
                                        var c = ca[i];
                                        while (c.charAt(0) == ' ')
                                            c = c.substring(1);
                                        if (c.indexOf(name) == 0)
                                            return c.substring(name.length, c.length);
                                    }
                                    return "";
                                }
                                            </script>

        
        
    
    <script src="{{asset('js/jquery.fancybox.min.js')}}"></script>
    <script src="{{asset('js/owl.carousel.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="{{asset('js/main.js')}}" type="text/javascript"></script>
    <script src="{{asset('js/JavaScript.js')}}"></script>
    <script src="{{asset('js/clipboard.min.js')}}"></script>
    <script src="{{asset('js/toastr.min.js')}}" rel="stylesheet"></script>
    <script>
    
        var clipboard = new ClipboardJS('.btn-copy');

        clipboard.on('success', function (e) {
            console.log(e);
            alert("Bạn copy nội dung thành công");
        });

        clipboard.on('error', function (e) {
            console.log(e);
            alert("Bạn copy nội dung thất bại");
        });
    </script>
    <script type="text/javascript">
        
    </script>

    @yield('js')
</body>
</html>