
function readURL(input) {
  if (input.files && input.files[0]) {

    var reader = new FileReader();

    reader.onload = function(e) {
      $('.image-upload-wrap0').hide();

      $('.file-upload-image0').attr('src', e.target.result);
      $('.file-upload-content0').show();

      $('.image-title0').html(input.files[0].name);
    };

    reader.readAsDataURL(input.files[0]);

  } else {
    removeUpload();
  }
}

function removeUpload() {
  $('.file-upload-input0').replaceWith($('.file-upload-input0').clone());
  $('.file-upload-content0').hide();
  $('.image-upload-wrap0').show();
}
$('.image-upload-wrap0').bind('dragover', function () {
		$('.image-upload-wrap0').addClass('image-dropping');
	});
	$('.image-upload-wrap0').bind('dragleave', function () {
		$('.image-upload-wrap0').removeClass('image-dropping');
});



function readURL1(input) {
  if (input.files && input.files[0]) {

    var reader = new FileReader();

    reader.onload = function(e) {
      $('.image-upload-wrap1').hide();

      $('.file-upload-image1').attr('src', e.target.result);
      $('.file-upload-content1').show();

      $('.image-title1').html(input.files[0].name);
    };

    reader.readAsDataURL(input.files[0]);

  } else {
    removeUpload1();
  }
}

function removeUpload1() {
  $('.file-upload-input1').replaceWith($('.file-upload-input1').clone());
  $('.file-upload-content1').hide();
  $('.image-upload-wrap1').show();
}
$('.image-upload-wrap1').bind('dragover', function () {
    $('.image-upload-wrap1').addClass('image-dropping');
  });
  $('.image-upload-wrap1').bind('dragleave', function () {
    $('.image-upload-wrap1').removeClass('image-dropping');
});

function readURL2(input) {
  if (input.files && input.files[0]) {

    var reader = new FileReader();

    reader.onload = function(e) {
      $('.image-upload-wrap2').hide();

      $('.file-upload-image2').attr('src', e.target.result);
      $('.file-upload-content2').show();

      $('.image-title2').html(input.files[0].name);
    };

    reader.readAsDataURL(input.files[0]);

  } else {
    removeUpload2();
  }
}

function removeUpload2() {
  $('.file-upload-input2').replaceWith($('.file-upload-input2').clone());
  $('.file-upload-content2').hide();
  $('.image-upload-wrap2').show();
}
$('.image-upload-wrap2').bind('dragover', function () {
    $('.image-upload-wrap2').addClass('image-dropping');
  });
  $('.image-upload-wrap2').bind('dragleave', function () {
    $('.image-upload-wrap2').removeClass('image-dropping');
});

function readURL3(input) {
  if (input.files && input.files[0]) {

    var reader = new FileReader();

    reader.onload = function(e) {
      $('.image-upload-wrap3').hide();

      $('.file-upload-image3').attr('src', e.target.result);
      $('.file-upload-content3').show();

      $('.image-title3').html(input.files[0].name);
    };

    reader.readAsDataURL(input.files[0]);

  } else {
    removeUpload3();
  }
}

function removeUpload3() {
  $('.file-upload-input3').replaceWith($('.file-upload-input3').clone());
  $('.file-upload-content3').hide();
  $('.image-upload-wrap3').show();
}
$('.image-upload-wrap3').bind('dragover', function () {
    $('.image-upload-wrap3').addClass('image-dropping');
  });
  $('.image-upload-wrap3').bind('dragleave', function () {
    $('.image-upload-wrap3').removeClass('image-dropping');
});

function readURLTest(input,i) {
  if (input.files && input.files[0]) {

    var reader = new FileReader();

    reader.onload = function(e) {
      $(".image-upload-wrap"+i+"").hide();

      $(".file-upload-image"+i+"").attr('src', e.target.result);
      $(".file-upload-content"+i+"").show();

      $(".image-title"+i+"").html(input.files[0].name);
    };

    reader.readAsDataURL(input.files[0]);

  } else {
    // removeUploadTest(i);
  }
}

function renderImageUpload(input,i) {
 
  if (input.files && input.files[0]) {

    var count = input.files.length;
    for(var j=0;j<count;j++){
        var file = input.files[j];
        var reader = new FileReader();
        var x = 0;
        reader.onload = function(e) {
          // console.log(e.target.result);
          var more_image = $("#more_image");
          more_image.append('<div class="col-md-3 style="position: relative;" file="'+i+'" img="'+x+'" col-xs-3" style="width:33%" ><a title="Xóa ảnh" class="btn btn-icon btn-sm btn-danger deleteDialog delete delete-image-upload" file="'+i+'" img="'+x+'" data-toggle="tooltip" role="button" data-original-title="Xóa ảnh" style="position: absolute; top: 0px; right: 15px; z-index: 10000;"><i class="fa fa-times"></i></a><img width="100%" src="'+e.target.result+'"></div>');
          
          x=x+1;
        }
        reader.readAsDataURL(input.files[j]);
    }
    $('.file[file="'+i+'"]').addClass('hidden');

    

  } else {
    // removeUploadTest(i);
  }
  
}

function renderImageUploads(input,i){
  renderImageUpload(input,i);
  
  // $('.add-more-image').click();
}

function removeUploadTest(i) {
  $(".file-upload-input"+i+"").replaceWith($(".file-upload-input"+i+"").clone());
  $(".file-upload-content"+i+"").hide();
  $(".image-upload-wrap"+i+"").show();
  $(".image-upload-wrap"+i+"").bind('dragover', function () {
    $(".image-upload-wrap"+i+"").addClass('image-dropping');
  });
  $(".image-upload-wrap"+i+"").bind('dragleave', function () {
    $(".image-upload-wrap"+i+"").removeClass('image-dropping');
});
}



$(document).ready(function(){
  $('.edit-image').addClass('display-none');
  $('.edit-image1').addClass('display-none');
  $('.edit-image2').addClass('display-none');
  $('.edit-image3').addClass('display-none');
  $('.image-product0').click(function(){
      $('.edit-image').removeClass('display-none');
  });
  $('.image-product1').click(function(){
      $('.edit-image1').removeClass('display-none');
  });
  $('.image-product2').click(function(){
      $('.edit-image2').removeClass('display-none');
  });
  $('.image-product3').click(function(){
      $('.edit-image3').removeClass('display-none');
  });
});
function FileListItems(files) {
  var b = new ClipboardEvent("").clipboardData || new DataTransfer()
  for (var i = 0, len = files.length; i<len; i++) b.items.add(files[i])
  return b.files
  
}
$(document).on('click', '.delete-image-upload', function(event) {
  event.preventDefault();

  file = $(this).attr('file');
  img = $(this).attr('img');
  $(this).parent().remove();
  var inputs = document.querySelector('input[file="'+file+'"]');
  var files = [];

  for(var a = 0;a<inputs.files.length;a++){
    files[a] = inputs.files[a];

  }
  files.splice(img,1);
  inputs.files = FileListItems(files);
  console.log(inputs.files);

});
$(document).on('click', '.delete-image', function(event) {
  event.preventDefault();

  file = $(this).attr('file');
  url= $(this).attr('data-section');
  if(file == 0){

  }
  else{
    
    swal({
      title: "XÓA ẢNH SẢN PHẨM !",
      text: "Bạn có chắc muốn xóa bỏ ảnh sản phẩm này",
      icon: "warning",
      buttons: ["HỦY BỎ", "XÓA ẢNH"],
      dangerMode: true,
    })
    .then((willDelete) => {
      if (willDelete) {
        
        $.ajax({
            type: 'GET',
            url: url,
            dataType: 'html',
            success: function(data) {
                if(data ==1 ){
                  toastr.success('Xóa ảnh sản phẩm thành công');
                  $('.file[file="'+file+'"]').children().remove();
                  $('.file[file="'+file+'"]').addClass('hidden');
                }
                else{
                  toastr.warning('Xóa không thành công');
                }
            }
        });
      } else {
        
      }
    });
      

  }
  
  console.log(url);

});