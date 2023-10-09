<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/




Auth::routes();

Route::get('admin', 'Auth\LoginController@login')->name('login');
Route::post('login', 'Auth\LoginController@postLogin')->name('postLogin');
Route::get('admin/index', 'HomeController@index')->name('home');
Route::get('admin/logout', 'Auth\LoginController@logout')->name('logout');
// user route
Route::get('admin/users', 'HomeController@users')->name('users');
Route::get('admin/user/add', 'HomeController@addUser')->name('addUser');
Route::post('admin/user/add', 'HomeController@postAddUser')->name('postAddUser');
Route::get('admin/user/edit/{id}', 'HomeController@editUser')->name('editUser');
Route::post('admin/user/edit/{id}', 'HomeController@postEditUser')->name('postEditUser');
Route::post('admin/user/edit-password/{id}', 'HomeController@postEditPassword')->name('postEditPassword');
Route::post('admin/user/uploadExcel', 'HomeController@uploadExcel')->name('uploadExcel');
Route::get('admin/user/delete/{id}', 'HomeController@deleteUser')->name('deleteUser');
Route::get('admin/user/deleteAll/{id}', 'HomeController@deleteAllUser')->name('deleteAllUser');
Route::get('admin/user/deleteTimeOut/{dayNumber}', 'HomeController@deleteTimeOut')->name('deleteTimeOut');
// end user route
// chat route
Route::get('admin/chat/deleteGroup', 'HomeController@deleteGroup')->name('deleteGroup');
// end chat route

// blog route
Route::get('admin/blogs', 'HomeController@blogs')->name('blogs');
Route::get('admin/blog/add', 'HomeController@addBlog')->name('addBlog');
Route::post('admin/blog/add', 'HomeController@postAddBlog')->name('postAddBlog');
Route::get('admin/blog/edit/{id}', 'HomeController@editBlog')->name('editBlog');
Route::post('admin/blog/edit/{id}', 'HomeController@postEditBlog')->name('postEditBlog');
Route::get('admin/blog/delete/{id}', 'HomeController@deleteBlog')->name('deleteBlog');
Route::get('admin/blog/deleteBlogs', 'HomeController@deleteBlogs')->name('deleteBlogs');
Route::get('admin/blog/categories', 'HomeController@blogCategories')->name('blogCategories');
Route::get('admin/blog/categorie/add', 'HomeController@addBlogCategorie')->name('addBlogCategorie');
Route::post('admin/blog/categorie/add', 'HomeController@postAddBlogCategorie')->name('postAddBlogCategorie');
Route::get('admin/blog/categorie/edit/{id}', 'HomeController@editBlogCategorie')->name('editBlogCategorie');
Route::post('admin/blog/categorie/edit/{id}', 'HomeController@postEditBlogCategorie')->name('postEditBlogCategorie');
Route::get('admin/blog/categorie/delete/{id}', 'HomeController@deleteBlogCategorie')->name('deleteBlogCategorie');
Route::get('admin/blog/categorie/deleteBlogCategories', 'HomeController@deleteBlogCategories')->name('deleteBlogCategories');
// end blog route

// video route
Route::get('admin/videos', 'HomeController@videos')->name('videos');
Route::get('admin/video/add', 'HomeController@addVideo')->name('addVideo');
Route::post('admin/video/add', 'HomeController@postAddVideo')->name('postAddVideo');
Route::get('admin/video/edit/{id}', 'HomeController@editVideo')->name('editVideo');
Route::post('admin/video/edit/{id}', 'HomeController@postEditVideo')->name('postEditVideo');
Route::get('admin/video/delete/{id}', 'HomeController@deleteVideo')->name('deleteVideo');
Route::get('admin/video/deleteVideos', 'HomeController@deleteVideos')->name('deleteVideos');
Route::get('admin/video/categories', 'HomeController@videoCategories')->name('videoCategories');
Route::get('admin/video/categorie/add', 'HomeController@addVideoCategorie')->name('addVideoCategorie');
Route::post('admin/video/categorie/add', 'HomeController@postAddVideoCategorie')->name('postAddVideoCategorie');
Route::get('admin/video/categorie/edit/{id}', 'HomeController@editVideoCategorie')->name('editVideoCategorie');
Route::post('admin/video/categorie/edit/{id}', 'HomeController@postEditVideoCategorie')->name('postEditVideoCategorie');
Route::get('admin/video/categorie/delete/{id}', 'HomeController@deleteVideoCategorie')->name('deleteVideoCategorie');
Route::get('admin/video/categorie/deleteVideoCategories', 'HomeController@deleteVideoCategories')->name('deleteVideoCategories');
// end video route

// Payment
Route::get('admin/payments', 'HomeController@payments')->name('payments');
Route::get('admin/payment/add', 'HomeController@addPayment')->name('addPayment');
Route::post('admin/payment/add', 'HomeController@postAddPayment')->name('postAddPayment');
Route::get('admin/payment/edit/{id}', 'HomeController@editPayment')->name('editPayment');
Route::post('admin/payment/edit/{id}', 'HomeController@postEditPayment')->name('postEditPayment');
Route::get('admin/payment/delete/{id}', 'HomeController@deletePayment')->name('deletePayment');
// End Payment

// page route
Route::get('admin/pages', 'HomeController@pages')->name('pages');
Route::get('admin/page/add', 'HomeController@addPage')->name('addPage');
Route::post('admin/page/add', 'HomeController@postAddPage')->name('postAddPage');
Route::get('admin/page/edit/{id}', 'HomeController@editPage')->name('editPage');
Route::post('admin/page/edit/{id}', 'HomeController@postEditPage')->name('postEditPage');
Route::get('admin/page/delete/{id}', 'HomeController@deletePage')->name('deletePage');

// end blog route
// Popup 
Route::get('admin/popups', 'HomeController@popups')->name('popups');
Route::get('admin/popup/add', 'HomeController@addPopup')->name('addPopup');
Route::post('admin/popup/add', 'HomeController@postAddPopup')->name('postAddPopup');
Route::get('admin/popup/edit/{id}', 'HomeController@editPopup')->name('editPopup');
Route::post('admin/popup/edit/{id}', 'HomeController@postEditPopup')->name('postEditPopup');
Route::get('admin/popup/delete/{id}', 'HomeController@deletePopup')->name('deletePopup');
// end popup

// service route
Route::get('admin/services', 'HomeController@services')->name('services');
Route::get('admin/service/add', 'HomeController@addService')->name('addService');
Route::post('admin/service/add', 'HomeController@postAddService')->name('postAddService');
Route::get('admin/service/edit/{id}', 'HomeController@editService')->name('editService');
Route::post('admin/service/edit/{id}', 'HomeController@postEditService')->name('postEditService');
Route::get('admin/service/delete/{id}', 'HomeController@deleteService')->name('deleteService');
Route::get('admin/service/categories', 'HomeController@serviceCategories')->name('serviceCategories');
Route::get('admin/service/categorie/add', 'HomeController@addServiceCategorie')->name('addServiceCategorie');
Route::post('admin/service/categorie/add', 'HomeController@postAddServiceCategorie')->name('postAddServiceCategorie');
Route::get('admin/service/categorie/edit/{id}', 'HomeController@editServiceCategorie')->name('editServiceCategorie');
Route::post('admin/service/categorie/edit/{id}', 'HomeController@postEditServiceCategorie')->name('postEditServiceCategorie');
Route::get('admin/service/categorie/delete/{id}', 'HomeController@deleteServiceCategorie')->name('deleteServiceCategorie');
// end service route

// product route
Route::get('admin/convertProduct', 'HomeController@convertProduct')->name('convertProduct');
Route::get('admin/products', 'HomeController@products')->name('products');
Route::get('admin/products/{id}', 'HomeController@productsCate')->name('productsCate');
Route::get('admin/product/add', 'HomeController@addProduct')->name('addProduct');
Route::post('admin/product/add', 'HomeController@postAddProduct')->name('postAddProduct');
Route::get('admin/product/edit/{id}', 'HomeController@editProduct')->name('editProduct');
Route::post('admin/product/edit/{id}', 'HomeController@postEditProduct')->name('postEditProduct');
Route::get('admin/product/delete/{id}', 'HomeController@deleteProduct')->name('deleteProduct');
Route::get('admin/product/deleteProducts', 'HomeController@deleteProducts')->name('deleteProducts');
Route::get('admin/product/categories', 'HomeController@productCategories')->name('productCategories');
Route::get('admin/product/categorie/add', 'HomeController@addProductCategorie')->name('addProductCategorie');
Route::post('admin/product/categorie/add', 'HomeController@postAddProductCategorie')->name('postAddProductCategorie');
Route::get('admin/product/categorie/edit/{id}', 'HomeController@editProductCategorie')->name('editProductCategorie');
Route::post('admin/product/categorie/edit/{id}', 'HomeController@postEditProductCategorie')->name('postEditProductCategorie');
Route::get('admin/product/categorie/delete/{id}', 'HomeController@deleteProductCategorie')->name('deleteProductCategorie');
Route::get('admin/product/categorie/deleteProductCategories', 'HomeController@deleteProductCategories')->name('deleteProductCategories');
Route::get('admin/product/image/delete/{id}', 'HomeController@deleteProductImage')->name('deleteProductImage');
Route::get('admin/product/checkMa/{ma}', 'HomeController@checkProductMa')->name('checkProductMa');
Route::post('admin/product/postEditProductPropertiesVariation/{id}', 'HomeController@postEditProductPropertiesVariation')->name('postEditProductPropertiesVariation');
Route::post('admin/product/postAddProductVariation/{id}', 'HomeController@postAddProductVariation')->name('postAddProductVariation');
Route::post('admin/product/postEditProductVariation/{id}', 'HomeController@postEditProductVariation')->name('postEditProductVariation');
Route::get('admin/product/deleteProductVariation/{id}', 'HomeController@deleteProductVariation')->name('deleteProductVariation');
Route::get('admin/product/proVariation/checkSku', 'HomeController@checkProVariationSku')->name('checkProVariationSku');

// end product route

// system 
Route::get('admin/system/edit', 'HomeController@editSystem')->name('editSystem');
Route::post('admin/system/edit', 'HomeController@postEditSystem')->name('postEditSystem');
// end system

//menu
Route::get('admin/menu/edit', 'HomeController@editMenu')->name('editMenu');
Route::get('admin/menu/update', 'HomeController@updateMenu')->name('updateMenu');
Route::get('admin/menu/delete/{array}', 'HomeController@deleteMenu')->name('deleteMenu');
// end menu

// Banner Ads
Route::get('admin/adss', 'HomeController@adss')->name('adss');
Route::get('admin/ads/add', 'HomeController@addAds')->name('addAds');
Route::post('admin/ads/add', 'HomeController@postAddAds')->name('postAddAds');
Route::get('admin/ads/edit/{id}', 'HomeController@editAds')->name('editAds');
Route::post('admin/ads/edit/{id}', 'HomeController@postEditAds')->name('postEditAds');
Route::get('admin/ads/delete/{id}', 'HomeController@deleteAds')->name('deleteAds');
Route::get('admin/ads/deleteAdss', 'HomeController@deleteAdss')->name('deleteAdss');


// end ads

// yêu cầu bđs
Route::get('admin/yeucaus', 'HomeController@yeucaus')->name('yeucaus');
Route::get('admin/yeucau/{id}', 'HomeController@yeucau')->name('yeucau');
Route::post('admin/yeucau/{id}', 'HomeController@postEditYeucau')->name('postEditYeucau');
Route::get('admin/yeucau/delete/{id}', 'HomeController@deleteYeucau')->name('deleteYeucau');
Route::get('admin/yeucaus/deleteYeucaus', 'HomeController@deleteYeucaus')->name('deleteYeucaus');
// end

// ký gửi bđs
Route::get('admin/kyguis', 'HomeController@kyguis')->name('kyguis');
Route::get('admin/kygui/{id}', 'HomeController@kygui')->name('kygui');
Route::post('admin/kygui/{id}', 'HomeController@postEditKygui')->name('postEditKygui');
Route::get('admin/kygui/delete/{id}', 'HomeController@deleteKygui')->name('deleteKygui');
Route::get('admin/kyguis/deleteKyguis', 'HomeController@deleteKyguis')->name('deleteKyguis');
// end

// Slider 
Route::get('admin/sliders', 'HomeController@sliders')->name('sliders');
Route::get('admin/slider/add', 'HomeController@addSlider')->name('addSlider');
Route::post('admin/slider/add', 'HomeController@postAddSlider')->name('postAddSlider');
Route::get('admin/slider/edit/{id}', 'HomeController@editSlider')->name('editSlider');
Route::post('admin/slider/edit/{id}', 'HomeController@postEditSlider')->name('postEditSlider');
Route::get('admin/slider/delete/{id}', 'HomeController@deleteSlider')->name('deleteSlider');
Route::get('admin/slider/deleteSliders', 'HomeController@deleteSliders')->name('deleteSliders');
// end sliders
// Contact
Route::get('admin/contacts', 'HomeController@contacts')->name('contacts');
Route::get('admin/contact/delete/{id}', 'HomeController@deleteContact')->name('deleteContact');
Route::get('admin/contact/deleteContacts', 'HomeController@deleteContacts')->name('deleteContacts');
// End Contact
//properties
Route::get('admin/properties', 'HomeController@properties')->name('properties');
Route::get('admin/properties/add', 'HomeController@addProperties')->name('addProperties');
Route::post('admin/properties/add', 'HomeController@postAddProperties')->name('postAddProperties');
Route::get('admin/properties/edit/{id}', 'HomeController@editProperties')->name('editProperties');
Route::post('admin/properties/edit/{id}', 'HomeController@postEditProperties')->name('postEditProperties');
Route::get('admin/properties-value/delete/{id}', 'HomeController@deletePropertiesValue')->name('deletePropertiesValue');
//end properties

Route::get('admin/test', 'HomeController@test')->name('test');

//Merchant route
Route::get('/merchant-creator', 'MerchantController@index')->name('merchantIndex');
Route::get('/merchant-creator/info', 'MerchantController@info')->name('merchantInfo');
Route::post('/merchant-creator/info', 'MerchantController@postEditInfo')->name('merchantPostEditInfo');
Route::get('/merchant-creator/change-password', 'MerchantController@editPassword')->name('merchantEditPassword');
Route::post('/merchant-creator/change-password', 'MerchantController@postEditPassword')->name('merchantPostEditPassword');
Route::get('/merchant/product/edit/{id}', 'MerchantController@merchantEditProduct')->name('merchantEditProduct');
Route::post('merchant/product/edit/{id}', 'MerchantController@merchantPostEditProduct')->name('merchantPostEditProduct');
Route::post('merchant/product/add', 'MerchantController@merchantPostAddProduct')->name('merchantPostAddProduct');
Route::get('/don-hang-ban', 'MerchantController@salesOrder')->name('SO');
Route::get('/don-hang-mua', 'MerchantController@purchaseOrder')->name('PO');
Route::get('/xoa-don-hang/{id}', 'MerchantController@removeOrder')->name('removeOrder');
Route::get('/confirmNotification/{id}', 'MerchantController@confirmNotification')->name('confirmNotification');
Route::get('/merchantDeleteProduct/{id}', 'MerchantController@merchantDeleteProduct')->name('merchantDeleteProduct');
Route::get('/merchantDeleteAllProduct/{id}', 'MerchantController@merchantDeleteAllProduct')->name('merchantDeleteAllProduct');
Route::get('/merchantConfirmOrder/{id}', 'MerchantController@merchantConfirmOrder')->name('merchantConfirmOrder');
Route::get('/merchantUpdateView/{id}-{value}', 'MerchantController@merchantUpdateView')->name('merchantUpdateView');
Route::get('/merchantUpdatePoint/{id}-{value}', 'MerchantController@merchantUpdatePoint')->name('merchantUpdatePoint');
Route::get('/tao-gian-hang-doi-tac', 'MerchantController@merchantAddCTV')->name('merchantAddCTV');
Route::get('/danh-sach-gian-hang-doi-tac', 'MerchantController@listCTV')->name('listCTV');
Route::get('/danh-sach-gian-hang-vang-lai', 'MerchantController@listVL')->name('listVL');
Route::get('/deleteCTV/{id}', 'MerchantController@deleteCTV')->name('deleteCTV');
Route::post('/merchantPostAddCTV', 'MerchantController@merchantPostAddCTV')->name('merchantPostAddCTV');
Route::get('/thong-bao', 'MerchantController@notifications')->name('notifications');
Route::get('/updateVP/{id}', 'MerchantController@updateVP')->name('updateVP');
// end Merchant route



// Feedback
Route::get('/checkCreateFeedback/{product_id}', 'MerchantController@checkCreateFeedback')->name('checkCreateFeedback');
Route::post('/postAddFeedback/{product_id}', 'MerchantController@postAddFeedback')->name('postAddFeedback');
// end feedback


Route::get('/clear', function() {

   Artisan::call('cache:clear');
   Artisan::call('config:clear');
   Artisan::call('config:cache');
   Artisan::call('view:clear');

   return "Cleared!";

});
// add to cart

Route::get('/gio-hang', 'Controller@cart')->name('cart');
Route::get('/dat-hang', 'Controller@order')->name('order');
Route::post('/dat-hang', 'Controller@postAddOrder')->name('postAddOrder');
Route::get('/add-to-cart/{id}-{qty}', 'Controller@addToCart')->name('addToCart');
Route::get('/remove-item-cart/{id}', 'Controller@removeItemCart')->name('removeItemCart');
// end add to cart

// Chat
Route::get('/chat/{room_id}', 'MerchantController@chat')->name('chat');
Route::get('/getChatRooms', 'MerchantController@getChatRooms')->name('getChatRooms');
Route::get('/getPartnerRoomId/{roomId}', 'MerchantController@getPartnerRoomId')->name('getPartnerRoomId');
Route::get('/getChatMessage/{room_id}', 'MerchantController@getChatMessage')->name('getChatMessage');
Route::get('/getPartner/{partner_id}', 'MerchantController@getPartner')->name('getPartner');
Route::post('/newMessage/{room_id}', 'MerchantController@newMessage')->name('newMessage');
Route::get('/chat/checkChatRoomExist/{partnerId}', 'MerchantController@checkChatRoomExist')->name('checkChatRoomExist');
// End Chat



Route::get('/test', 'Controller@resize');
Route::get('/resizes/{size}/{imagePath}', 'Controller@flyResize')->where('imagePath', '(.*)');


Route::group(['middleware' => 'locale'], function() {
   Route::get('/san-pham-noi-bat', 'Controller@productsHot')->name('productsHot');
   Route::post('/addContact', 'Controller@addContact')->name('addContact');
   Route::get('/lien-he', 'Controller@contact')->name('contact');
   Route::get('/ky-gui-bat-dong-san', 'Controller@exchange')->name('exchange');
   Route::post('addKygui', 'Controller@addKygui')->name('addKygui');
   Route::post('addYeucau', 'Controller@addYeucau')->name('addYeucau');
   Route::get('search', 'Controller@search')->name('search');
   Route::get('search-b', 'Controller@searchBan')->name('searchBan');
   Route::get('search-t', 'Controller@searchThue')->name('searchThue');
   Route::get('change-language/{language}', 'Controller@changeLanguage')->name('change-language');
   Route::get('/{url}', 'Controller@page')->name('page');
   Route::get('/', 'Controller@index')->name('index');

});

