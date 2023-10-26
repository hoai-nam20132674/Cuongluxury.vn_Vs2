<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\addUserRequest;
use App\Http\Requests\editUserRequest;
use App\Http\Requests\editPasswordRequest;
use App\Http\Requests\addBlogCategorieRequest;
use App\Http\Requests\editBlogCategorieRequest;
use App\Http\Requests\addBlogRequest;
use App\Http\Requests\editBlogRequest;
use App\Http\Requests\addServiceCategorieRequest;
use App\Http\Requests\editServiceCategorieRequest;
use App\Http\Requests\addServiceRequest;
use App\Http\Requests\editServiceRequest;
use App\Http\Requests\addProductCategorieRequest;
use App\Http\Requests\editProductCategorieRequest;
use App\Http\Requests\addProductRequest;
use App\Http\Requests\editProductRequest;
use App\Http\Requests\addCardRequest;
use App\Http\Requests\editCardRequest;
use App\Http\Requests\ImportExcelRequest;
use App\Http\Requests\addSliderRequest;
use App\Http\Requests\editSliderRequest;
use App\Http\Requests\addAdsRequest;
use App\Http\Requests\editAdsRequest;
use Illuminate\Support\Facades\Auth;
use App\Http\Middleware\CheckAdmin;
use App\User;
use App\Popup;
use App\Page;
use App\Payment;
use App\BlogCate;
use App\VideoCate;
use App\Blog;
use App\Order;
use App\Video;
use App\Service;
use App\ServiceCate;
use App\Product;
use App\Properties;
use App\PropertiesValue;
use App\ProductPropertiesVariation;
use App\ProductVariations;
use App\ProductVariationsPropertiesValue;
use App\ProductCate;
use App\ProductImage;
use App\System;
use App\Menu;
use App\Kygui;
use App\KyguiImage;
use App\Yeucau;
use App\Card;
use App\Slider;
use App\Ads;
use App\Contact;
use App\ChatRoom;
use App\ChatMessage;
use App\ProductLang;
use Excel;
use App\Imports\UsersImport;
use App\Imports\UserImport;
use Maatwebsite\Excel\HeadingRowImport;
use Carbon\Carbon;
use Illuminate\Support\Str;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware(CheckAdmin::class);
        
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        return view('admin.index');
    }

    // User custom
    public function users(Request $request){
        if(Auth::user()->role == 1){
            
            $users = User::orderBy('name')->paginate(50);
            return view('admin.users',['users'=>$users,'request'=>$request]);
        }
        else{
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền truy cập chức năng này']);
        }
        
    }
    public function addUser(){
        return view('admin.addUser');
    }
    public function postAddUser(addUserRequest $request){
        $item = new User;
        
        if($item-> add($request)){
            return redirect()->route('users')->with(['flash_level'=>'success','flash_message'=>'Thêm thành công']);
        }
        else{
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Thêm không thành công']);
        }

    }
    public function editUser($id){
        $user = User::where('id',$id)->get()->first();
        if(Auth::user()->role == 1 || Auth::user()->id == $user->id){
            return view('admin.editUser',['user'=>$user]);
        }
        else{
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền sửa tài khoản này']);
        }
    }
    public function postEditUser(editUserRequest $request, $id){
        
        $item = new User;
        $item->edit($request,$id);
        if($item-> edit($request,$id)){
            return redirect()->route('editUser',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa thông tin tài khoản thành công']);
        }
        else{
            return redirect()->route('editUser',$id)->with(['flash_level'=>'danger','flash_message'=>'Sửa thông tin tài khoản không thành công vui lòng liên hệ quản trị viên hệ thống để biết chi tiết']);
        }

    }
    public function postEditPassword(editPasswordRequest $request, $id){
        $item = new User;
        // $item->editPassword($request,$id);
        if($item-> editPassword($request,$id)){
            return redirect()->route('editUser',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa mật khẩu thành công']);
        }
        else{
            return redirect()->route('editUser',$id)->with(['flash_level'=>'danger','flash_message'=>'Sửa mật khẩu không thành công']);
        }

    }
    public function deleteUser($id){
        $item = User::where('id',$id)->get()->first();
        if(Auth::user()->role == 1){
            $item = User::where('id',$id)->get()->first();
            $item->delete();
            
            return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Xóa tài khoản thành công']);
        }
        else{
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền xóa tài khoản này']);
        } 
    }
    public function deleteAllUser($role){
        if(Auth::user()->role == 1 && $role == 4){
            $users = User::where('role',$role)->get();
            foreach($users as $user){
                $user->delete();
            }
            $groups = ChatRoom::select()->get();
            foreach($groups as $group){
                $chatMessage = ChatMessage::where('room_id',$group->id)->get();
                if(count($chatMessage) == 2){

                }
                else{
                    $group->delete();
                }
            }
            return "OK!";
        }
    }
    public function deleteTimeOut($dayNumber){
        if(Auth::user()->role == 1){
            $timeOut = Carbon::now()->subDays($dayNumber);
            $users = User::where('role',4)->where('created_at','<=',$timeOut)->orderBy('id','DESC')->get();
            foreach($users as $user){
                $user->delete();

            }
            return 'Success';
        }
        
    }
    // End User Custom
    // Contact 
    public function contacts(Request $request){
        $contacts = Contact::select()->orderBy('created_at','DESC')->paginate(500);
        return view('admin.contacts',compact('contacts','request'));
    }
    public function deleteContact($id){
        $item = Contact::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('contacts')->with(['flash_level'=>'success','flash_message'=>'Xóa liên hệ thành công']); 
    }
    public function deleteContacts(Request $request){
        if(isset($request->contacts_id)){
            $str_ids = $request->contacts_id;
            $ids = array();
            $ids = explode(",",$str_ids);
            $count = count($ids);
            for($j=0;$j<$count;$j++){
                $item = Contact::where('id',$ids[$j])->get()->first();
                $item->delete();
            }
        }
        return redirect()->route('contacts')->with(['flash_level'=>'success','flash_message'=>'Xóa liên hệ thành công']); 
    }
    // End Contact

    // blog
    public function blogCategories(Request $request){
        $categories = BlogCate::where('lang','vi')->where('parent_id',null)->with('langs')->paginate(15);
        return view('admin.blogCategories',['categories'=>$categories,'request'=>$request]);
    }
    public function addBlogCategorie(Request $request){
        if(isset($request->blog_cate_id)){
            $categories = BlogCate::where('lang',$request->lang)->where('parent_id',null)->get();
        }
        else{
            $categories = BlogCate::where('lang','vi')->where('parent_id',null)->get();
        }
        return view('admin.addBlogCategorie',compact('categories','request'));
    }
    public function postAddBlogCategorie(addBlogCategorieRequest $request){
        $item = new BlogCate;
        $item -> add($request);
        return redirect()->route('blogCategories')->with(['flash_level'=>'success','flash_message'=>'Thêm thành công']); 
    }
    public function editBlogCategorie($id){
        
        $cate = BlogCate::where('id',$id)->get()->first();
        $categories = BlogCate::where('id','!=',$id)->where('lang',$cate->lang)->where('parent_id',null)->get();
        if($cate->parent_id != ''){
            $parent = BlogCate::where('id',$cate->parent_id)->get()->first();
            return view('admin.editBlogCategorie',['cate'=>$cate, 'categories'=>$categories,'parent'=>$parent]);
        }
        else{
            return view('admin.editBlogCategorie',['cate'=>$cate, 'categories'=>$categories]);
        }
        
    }
    public function postEditBlogCategorie(editBlogCategorieRequest $request, $id){
        $item = new BlogCate;
        $item->edit($request,$id);
        return redirect()->route('editBlogCategorie',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa thành công']);
    }
    public function deleteBlogCategorie($id){
        $item = BlogCate::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('blogCategories')->with(['flash_level'=>'success','flash_message'=>'Xóa tin tức thành công']); 
    }
    public function blogs(Request $request){
        $categories = BlogCate::select()->get();
        $blogs = Blog::where('lang','vi')->with('langs')->paginate(15);
        return view('admin.blogs',compact('blogs','request','categories'));
    }
    public function blogsCate(Request $request, $id){
        $cate = BlogCate::where('id',$id)->get()->first();
        $categories = BlogCate::select()->get();
        $blogs = $cate->blogs()->paginate(15);
        return view('admin.blogs',compact('blogs','request','categories'));
    }
    public function addBlog(Request $request){
        if(isset($request->blog_id)){
            $categories = BlogCate::where('lang',$request->lang)->where('parent_id',null)->get();
        }
        else{
            $categories = BlogCate::where('lang','vi')->where('parent_id',null)->get();
        }
        return view('admin.addBlog',compact('categories','request'));
    }
    public function postAddBlog(addBlogRequest $request){
        $item = new Blog;
        $item -> add($request);
        return redirect()->route('blogs')->with(['flash_level'=>'success','flash_message'=>'Thêm thành công']); 
        // dd($request->blog_id);
    }
    public function editBlog($id){
        $blog = Blog::where('id',$id)->get()->first();
        $categories = BlogCate::where('lang',$blog->lang)->where('parent_id',null)->get();
        return view('admin.editBlog',['blog'=>$blog,'categories'=>$categories]);
    }
    public function postEditBlog(editBlogRequest $request, $id){
        $item = new Blog;
        $item->edit($request,$id);
        return redirect()->route('editBlog',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa thành công']);
    }
    public function deleteBlog($id){
        $item = Blog::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('blogs')->with(['flash_level'=>'success','flash_message'=>'Xóa tin tức thành công']); 
    }
    public function deleteBlogs(Request $request){
        if(Auth::user()->role == 1){
            if(isset($request->blogs_id)){
                $str_ids = $request->blogs_id;
                $ids = array();
                $ids = explode(",",$str_ids);
                $count = count($ids);
                for($j=0;$j<$count;$j++){
                    $item = Blog::where('id',$ids[$j])->with('langs')->get()->first();
                    foreach($item->langs as $blogLang){
                        $blogLang = Blog::where('id',$blogLang->blog_lang_id)->get()->first();
                        $blogLang->delete();
                    }
                    $item->delete();
                }
            }
            return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Xóa thành công']);
        }
        else{
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền xóa sản phẩm']);
        }
    }
    // end blog

    // Video
    public function videoCategories(Request $request){
        $categories = VideoCate::where('parent_id',null)->paginate(15);
        return view('admin.videoCategories',['categories'=>$categories,'request'=>$request]);
    }
    public function addVideoCategorie(Request $request){
        if(isset($request->video_cate_id)){
            $categories = VideoCate::where('parent_id',null)->get();
        }
        else{
            $categories = VideoCate::where('parent_id',null)->get();
        }
        return view('admin.addVideoCategorie',compact('categories','request'));
    }
    public function postAddVideoCategorie(Request $request){
        $item = new VideoCate;
        $item -> add($request);
        return redirect()->route('videoCategories')->with(['flash_level'=>'success','flash_message'=>'Thêm thành công']); 
    }
    public function editVideoCategorie($id){
        
        $cate = VideoCate::where('id',$id)->get()->first();
        $categories = VideoCate::where('id','!=',$id)->where('parent_id',null)->get();
        if($cate->parent_id != ''){
            $parent = VideoCate::where('id',$cate->parent_id)->get()->first();
            return view('admin.editVideoCategorie',['cate'=>$cate, 'categories'=>$categories,'parent'=>$parent]);
        }
        else{
            return view('admin.editVideoCategorie',['cate'=>$cate, 'categories'=>$categories]);
        }
        
    }
    public function postEditVideoCategorie(Request $request, $id){
        $item = new VideoCate;
        $item->edit($request,$id);
        return redirect()->route('editVideoCategorie',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa thành công']);
    }
    public function deleteVideoCategorie($id){
        $item = VideoCate::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('videoCategories')->with(['flash_level'=>'success','flash_message'=>'Xóa danh mục video thành công']); 
    }
    public function videos(Request $request){
        $videos = Video::select()->paginate(15);
        return view('admin.videos',['videos'=>$videos,'request'=>$request]);
    }
    public function addVideo(Request $request){
        if(isset($request->blog_id)){
            $categories = VideoCate::where('parent_id',null)->get();
        }
        else{
            $categories = VideoCate::where('parent_id',null)->get();
        }
        return view('admin.addVideo',compact('categories','request'));
    }
    public function postAddVideo(Request $request){
        $item = new Video;
        $item -> add($request);
        return redirect()->route('videos')->with(['flash_level'=>'success','flash_message'=>'Thêm thành công']); 
        // dd($request->blog_id);
    }
    public function editVideo($id){
        $video = Video::where('id',$id)->get()->first();
        $categories = VideoCate::where('parent_id',null)->get();
        return view('admin.editVideo',['video'=>$video,'categories'=>$categories]);
    }
    public function postEditVideo(Request $request, $id){
        $item = new Video;
        $item->edit($request,$id);
        return redirect()->route('editVideo',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa thành công']);
    }
    public function deleteVideo($id){
        $item = Video::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('videos')->with(['flash_level'=>'success','flash_message'=>'Xóa video thành công']); 
    }
    public function deleteVideos(Request $request){
        if(Auth::user()->role == 1){
            if(isset($request->videos_id)){
                $str_ids = $request->videos_id;
                $ids = array();
                $ids = explode(",",$str_ids);
                $count = count($ids);
                for($j=0;$j<$count;$j++){
                    $item = Video::where('id',$ids[$j])->get()->first();
                    
                    $item->delete();
                }
            }
            return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Xóa thành công']);
        }
        else{
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền xóa sản phẩm']);
        }
    }
    // End Video

    // yêu cầu bds
    public function yeucaus(Request $request){
        if(isset($request->keyword)){
            $yeucaus = Yeucau::orWhere('name', 'like', '%' .$request->keyword.'%')->orWhere('phone', 'like', '%' .$request->keyword.'%')->orWhere('email', 'like', '%' .$request->keyword.'%')->orWhere('da', 'like', '%' .$request->keyword.'%')->orWhere('lyc', 'like', '%' .$request->keyword.'%')->orWhere('lbds', 'like', '%' .$request->keyword.'%')->orderBy('id','DESC')->paginate(50);
        }
        else{
            $yeucaus = Yeucau::orderBy('id','DESC')->paginate(50);
        }
        return view('admin.yeucaus',compact('yeucaus','request'));
    }
    public function yeucau($id){
        $yeucau = Yeucau::where('id',$id)->get()->first();
        return view('admin.yeucau',compact('yeucau'));
    }
    public function postEditYeucau(Request $request,$id){
        $item = Yeucau::where('id',$id)->get()->first();
        $item->status = $request->status;
        $item->save();
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Cập nhật trạng thái thành công']);
    }
    public function deleteYeucau($id){
        $yeucau = Yeucau::where('id',$id)->get()->first();
        $yeucau->delete();
        return redirect()->route('yeucaus')->with(['flash_level'=>'success','flash_message'=>'Xóa yêu cầu thành công']); 
    }

    
    public function deleteYeucaus(Request $request){
        if(isset($request->yeucaus_id)){
            $str_ids = $request->yeucaus_id;
            $ids = array();
            $ids = explode(",",$str_ids);
            $count = count($ids);
            for($j=0;$j<$count;$j++){
                $item = Yeucau::where('id',$ids[$j])->get()->first();
                $item->delete();
            }
        }
        return redirect()->route('yeucaus')->with(['flash_level'=>'success','flash_message'=>'Xóa yêu cầu bđs thành công']);
       
       
    }
    // end
    // ký gửi bds
    public function kyguis(Request $request){
        if(isset($request->keyword)){
            $kyguis = Kygui::orWhere('name', 'like', '%' .$request->keyword.'%')->orWhere('phone', 'like', '%' .$request->keyword.'%')->orWhere('email', 'like', '%' .$request->keyword.'%')->orWhere('da', 'like', '%' .$request->keyword.'%')->orWhere('lkg', 'like', '%' .$request->keyword.'%')->orWhere('lbds', 'like', '%' .$request->keyword.'%')->orderBy('id','DESC')->paginate(50);
        }
        else{
            $kyguis = Kygui::orderBy('id','DESC')->paginate(50);
        }
        return view('admin.kyguis',compact('kyguis','request'));
    }
    public function kygui($id){
        $kygui = Kygui::where('id',$id)->with('images')->get()->first();
        return view('admin.kygui',compact('kygui'));
    }
    public function postEditKygui(Request $request,$id){
        $item = Kygui::where('id',$id)->get()->first();
        $item->status = $request->status;
        $item->save();
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Cập nhật trạng thái thành công']);
    }
    public function deleteKygui($id){
        $kygui = Kygui::where('id',$id)->get()->first();
        $kygui->delete();
        return redirect()->route('kyguis')->with(['flash_level'=>'success','flash_message'=>'Xóa thành công']);
    }
    
    public function deleteKyguis(Request $request){
        if(isset($request->kyguis_id)){
            $str_ids = $request->kyguis_id;
            $ids = array();
            $ids = explode(",",$str_ids);
            $count = count($ids);
            for($j=0;$j<$count;$j++){
                $item = Kygui::where('id',$ids[$j])->get()->first();
                $item->delete();
            }
        }
        return redirect()->route('kyguis')->with(['flash_level'=>'success','flash_message'=>'Xóa ký gửi bđs thành công']);
       
       
    }
    // end

    // Page

    public function pages(Request $request){
        $pages = Page::where('lang','vi')->with('langs')->paginate(15);
        return view('admin.pages',['pages'=>$pages,'request'=>$request]);
    }
    public function addPage(Request $request){
        return view('admin.addPage',compact('request'));
    }
    public function postAddPage(Request $request){
        $item = new Page;
        $item -> add($request);
        return redirect()->route('pages')->with(['flash_level'=>'success','flash_message'=>'Thêm thành công']); 
        // dd($request->blog_id);
    }
    public function editPage(Request $request, $id){
        $page = Page::where('id',$id)->get()->first();
        return view('admin.editPage',compact('page','request'));
    }
    public function postEditPage(Request $request, $id){
        $item = new Page;
        $item->edit($request,$id);
        return redirect()->route('editPage',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa thành công']);
    }
    public function deletePage($id){
        $item = Page::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('pages')->with(['flash_level'=>'success','flash_message'=>'Xóa tin tức thành công']); 
    }

    // Payment
    public function payments(Request $request){
        $payments = Payment::paginate(15);
        return view('admin.payments',compact('payments','request'));
    }
    public function addPayment(Request $request){
        return view('admin.addPayment',compact('request'));
    }
    public function postAddPayment(Request $request){
        $item = new Payment;
        $item -> add($request);
        return redirect()->route('payments')->with(['flash_level'=>'success','flash_message'=>'Thêm thành công']); 
        // dd($request->blog_id);
    }
    public function editPayment(Request $request, $id){
        $payment = Payment::where('id',$id)->get()->first();
        return view('admin.editPayment',compact('payment','request'));
    }
    public function postEditPayment(Request $request, $id){
        $item = new Payment;
        $item->edit($request,$id);
        return redirect()->route('editPayment',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa thành công']);
    }
    public function deletePayment($id){
        $item = Payment::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('payments')->with(['flash_level'=>'success','flash_message'=>'Xóa phương thức thanh toán thành công']); 
    }
    // End Payment

    //Popups
    public function popups(Request $request){
        $popups = Popup::orderBy('id','DESC')->paginate(10);
        return view('admin.popups',compact('popups','request'));
    }
    public function addPopup(){
        
        return view('admin.addPopup');
    }
    public function postAddPopup(Request $request){
        $item = new Popup;
        $item -> add($request);
        return redirect()->route('popups')->with(['flash_level'=>'success','flash_message'=>'Thêm popup thành công']); 
    }
    public function editPopup($id){
        
        $popup = Popup::where('id',$id)->get()->first();
        return view('admin.editPopup',compact('popup'));
    }
    public function postEditPopup(Request $request, $id){
        $item = new Popup;
        $item->edit($request,$id);
        return redirect()->route('editPopup',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa popup thành công']);
    }
    public function deletePopup($id){
        $item = Popup::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('popups')->with(['flash_level'=>'success','flash_message'=>'Xóa popup thành công']); 
    }
    // end popups

    // service
    public function serviceCategories(Request $request){
        $categories = ServiceCate::select()->paginate(15);
        return view('admin.serviceCategories',['categories'=>$categories,'request'=>$request]);
    }
    public function addServiceCategorie(){
        $categories = ServiceCate::select()->get();
        return view('admin.addServiceCategorie',['categories'=>$categories]);
    }
    public function postAddServiceCategorie(addServiceCategorieRequest $request){
        $item = new ServiceCate;
        $item -> add($request);
        return redirect()->route('serviceCategories')->with(['flash_level'=>'success','flash_message'=>'Thêm danh mục dịch vụ thành công']); 
    }
    public function editServiceCategorie($id){
        $categories = ServiceCate::where('id','!=',$id)->get();
        $cate = ServiceCate::where('id',$id)->get()->first();
        if($cate->parent_id != ''){
            $parent = ServiceCate::where('id',$cate->parent_id)->get()->first();
            return view('admin.editServiceCategorie',['cate'=>$cate, 'categories'=>$categories,'parent'=>$parent]);
        }
        else{
            return view('admin.editServiceCategorie',['cate'=>$cate, 'categories'=>$categories]);
        }
        
    }
    public function postEditServiceCategorie(editServiceCategorieRequest $request, $id){
        $item = new ServiceCate;
        $item->edit($request,$id);
        return redirect()->route('editServiceCategorie',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa danh mục dịch vụ thành công']);
    }
    public function deleteServiceCategorie($id){
        $item = ServiceCate::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('serviceCategories')->with(['flash_level'=>'success','flash_message'=>'Xóa danh mục dịch vụ thành công']); 
    }
    public function services(Request $request){
        $services = Service::select()->paginate(15);
        return view('admin.services',['services'=>$services,'request'=>$request]);
    }
    public function addService(){
        $categories = ServiceCate::select()->get();
        return view('admin.addService',['categories'=>$categories]);
    }
    public function postAddService(addServiceRequest $request){
        $item = new Service;
        $item -> add($request);
        return redirect()->route('services')->with(['flash_level'=>'success','flash_message'=>'Thêm dịch vụ thành công']); 
    }
    public function editService($id){
        $categories = ServiceCate::select()->get();
        $service = Service::where('id',$id)->get()->first();
        return view('admin.editService',['service'=>$service,'categories'=>$categories]);
    }
    public function postEditService(editServiceRequest $request, $id){
        $item = new Service;
        $item->edit($request,$id);
        return redirect()->route('editService',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa dịch vụ thành công']);
    }
    public function deleteService($id){
        $item = Service::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('services')->with(['flash_level'=>'success','flash_message'=>'Xóa dịch vụ thành công']); 
    }
    // end service

    // product
    public function productCategories(Request $request){
        $categories = ProductCate::where('lang','vi')->where('parent_id',null)->with('langs')->orderBy('id','DESC')->paginate(15);
        return view('admin.productCategories',compact('categories','request'));
    }
    public function addProductCategorie(Request $request){
        if(isset($request->product_cate_id)){
            $categories = ProductCate::where('lang',$request->lang)->where('parent_id',null)->get();
        }
        else{
            $categories = ProductCate::where('lang','vi')->where('parent_id',null)->get();
        }
        $properties = Properties::where('status',1)->with('propertie_values')->get();
        return view('admin.addProductCategorie',compact('categories','request','properties'));
    }
    public function postAddProductCategorie(addProductCategorieRequest $request){
        $item = new ProductCate;
        $item -> add($request);
        return redirect()->route('productCategories')->with(['flash_level'=>'success','flash_message'=>'Thêm danh mục sản phẩm thành công']); 
    }
    public function editProductCategorie($id){
        $cate = ProductCate::where('id',$id)->with('properties')->get()->first();
        $categories = ProductCate::where('lang',$cate->lang)->where('parent_id',null)->get();
        $properties = Properties::with('propertie_values')->get();
        if($cate->parent_id != ''){
            $parent = ProductCate::where('id',$cate->parent_id)->get()->first();
            return view('admin.editProductCategorie',['cate'=>$cate, 'categories'=>$categories,'parent'=>$parent,'properties'=>$properties]);
        }
        else{
            return view('admin.editProductCategorie',['cate'=>$cate, 'categories'=>$categories,'properties'=>$properties]);
        }
        
    }
    public function postEditProductCategorie(editProductCategorieRequest $request, $id){
        $item = new ProductCate;
        $item->edit($request,$id);
        return redirect()->route('editProductCategorie',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa danh mục sản phẩm thành công']);
    }
    public function deleteProductCategorie($id){
        if(Auth::user()->role == 1){
            $item = ProductCate::where('id',$id)->get()->first();
            $item->delete();
            return redirect()->route('productCategories')->with(['flash_level'=>'success','flash_message'=>'Xóa danh mục sản phẩm thành công']);
        }
        else{
            return redirect()->route('productCategories')->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền xóa danh mục sản phẩm này']);
        }
    }
    public function products(Request $request){

        if(isset($request->name)){
            $products = Product::where('name', 'like', '%' .$request->name.'%')->orWhere('ma', 'like', '%' .$request->name.'%')->where('lang','vi')->orderBy('id','DESC')->with('user','categories','langs')->paginate(50);
        }
        else{
            $products = Product::orderBy('id','DESC')->where('lang','vi')->with('user','categories','langs')->paginate(50);
        }
        $categories = ProductCate::select()->get();
        return view('admin.products',compact('products','request','categories'));
    }

    public function productsCate(Request $request,$id){
        $categorie = ProductCate::where('id',$id)->with(['products' => function ($query) {
                $query->where('display',1)->where('lang','vi')->with(['images' => function ($query) {
                $query->where('role',0);}])->orderBy('id','DESC');
            }])->get()->first();
        if(isset($request->name)){
            $products = $categorie->products()->where('name', 'like', '%' .$request->name.'%')->orderBy('id','DESC')->paginate(50);
        }
        else{
            $products = $categorie->products()->orderBy('id','DESC')->paginate(50);
        }
        $categories = ProductCate::select()->get();
        return view('admin.productsCate',compact('products','request','categorie','categories'));
    }

    public function addProduct(Request $request){
        if(isset($request->product_id)){
            $categories = ProductCate::where('lang',$request->lang)->where('parent_id',null)->get();
        }
        else{
            $categories = ProductCate::where('lang','vi')->where('parent_id',null)->get();
        }
        $properties = Properties::with('propertie_values')->get();
        $users = User::where('role',3)->get();
        return view('admin.addProduct',compact('categories','users','request','properties'));
    }
    public function postAddProduct(addProductRequest $request){
        $item = new Product;
        $check = $item -> add($request);
        if($check){
            return redirect()->route('products')->with(['flash_level'=>'success','flash_message'=>'Thêm sản phẩm thành công']);
        }
        else{
            return redirect()->route('products')->with(['flash_level'=>'success','flash_message'=>'Thêm sản phẩm thành công']);
        }

    }
    public function editProduct($id){
        
        $product = Product::where('id',$id)->with('user','images','properties_value_filter')->get()->first();
        $categories = ProductCate::where('lang',$product->lang)->where('parent_id',null)->get();
        $properties = Properties::with('propertie_values')->get();
        return view('admin.editProduct',compact('categories','product','properties'));
        
    }
    public function postEditProductPropertiesVariation(Request $request,$id){
        $properties_variation = $request->properties_variation;
        if(isset($properties_variation)){
            $itemDeletes = ProductPropertiesVariation::where('product_id',$id)->whereNotIn('propertie_id',$properties_variation)->get();
            foreach($itemDeletes as $itemDelete){
                $itemDelete->delete();
            }
            $count = count($properties_variation);
            for($j=0;$j<$count;$j++){
                $item = ProductPropertiesVariation::where('propertie_id',$properties_variation[$j])->where('product_id',$id)->get();
                if(count($item)==0){
                    $a = new ProductPropertiesVariation;
                    $a->product_id = $id;
                    $a->propertie_id = $properties_variation[$j];
                    $a->save();
                }
                
            }
        }
        return redirect()->route('editProduct',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa thuộc tính thành công hãy tạo phiên bản sản phẩm mới với thuộc tính đã được cập nhật']);
    }
    public function postAddProductVariation(Request $request,$id){
        $productVariation = new ProductVariations;
        $productVariation->product_id = $id;
        $productVariation->sku = $request->product_variation_ma;
        if(isset($request->product_variation_price)){
            $productVariation->price = preg_replace( '/\D/', '',$request->product_variation_price);
        }
        if(isset($request->product_variation_sale)){
            $productVariation->sale = preg_replace( '/\D/', '',$request->product_variation_sale);
        }
        $productVariation->tiente = $request->product_variation_tiente;
        $productVariation->stock = $request->product_variation_stock;
        $productVariation->save();
        $product_variation_properties_value = $request->product_variation_properties_value;
        if(isset($product_variation_properties_value)){
            $count = count($product_variation_properties_value);
            for($j=0;$j<$count;$j++){
                if($product_variation_properties_value[$j]){
                    $item = new ProductVariationsPropertiesValue;
                    $item->pro_var_id = $productVariation->id;
                    $item->propertie_value_id = $product_variation_properties_value[$j];
                    $item->save();
                }
            }
        }
        return redirect()->route('editProduct',$id)->with(['flash_level'=>'success','flash_message'=>'Thêm phiên bản sản phẩm thành công']);
        
    }
    public function postEditProductVariation(Request $request,$id){
        $productVariation = ProductVariations::where('id',$id)->get()->first();
        $productVariation->sku = $request->product_variation_ma;
        if(isset($request->product_variation_price)){
            $productVariation->price = preg_replace( '/\D/', '',$request->product_variation_price);
        }
        if(isset($request->product_variation_sale)){
            $productVariation->sale = preg_replace( '/\D/', '',$request->product_variation_sale);
        }
        $productVariation->tiente = $request->product_variation_tiente;
        $productVariation->stock = $request->product_variation_stock;
        $productVariation->save();
        $product_variation_properties_value = $request->product_variation_properties_value;
        if(isset($product_variation_properties_value)){
            foreach($product_variation_properties_value as $item){
                if($item == null){

                }
                else{
                    $ids = explode('-',$item);
                    if(count($ids) == 1){
                        $pro_var_pro_val = new ProductVariationsPropertiesValue;
                        $pro_var_pro_val->pro_var_id = $id;
                        $pro_var_pro_val->propertie_value_id = $ids[0];
                        $pro_var_pro_val->save();
                    }
                    else{
                        $pro_var_pro_val = ProductVariationsPropertiesValue::where('id',$ids[1])->get()->first();
                        if(isset($pro_var_pro_val)){
                            $pro_var_pro_val->propertie_value_id = $ids[0];
                            $pro_var_pro_val->save();
                        }
                    }
                }
                
            }
            
        }
        
        return redirect()->route('editProduct',$productVariation->product_id)->with(['flash_level'=>'success','flash_message'=>'Sửa phiên bản sản phẩm thành công']);
        // dd($product_variation_properties_value);
    }
    public function checkProVariationSku(Request $request){
        if(isset($request->pro_var_id) && isset($request->sku)){
            $productVariation = ProductVariations::where('id','!=',$request->pro_var_id)->where('sku',$request->sku)->get()->first();
            if(isset($productVariation)){
                return 0;
            }
            else{
                return 1;
            }
        }
    }
    public function deleteProductVariation($id){
        $item = ProductVariations::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Xóa biến thể sản phẩm thành công']);
    }
    public function postEditProduct(editProductRequest $request, $id){
        $item = new Product;
        $item->edit($request,$id);
        return redirect()->route('editProduct',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa sản phẩm thành công']);
    }
    public function deleteProduct($id){
        $item = Product::where('id',$id)->with('langs')->get()->first();
        if(Auth::user()->role == 1){
            
            foreach($item->langs as $productLang){
                $productLang = Product::where('id',$productLang->product_lang_id)->get()->first();
                $productLang->delete();
            }
            $item->delete();
            return redirect()->route('products')->with(['flash_level'=>'success','flash_message'=>'Xóa sản phẩm thành công']);
        }
        else{
            return redirect()->route('products')->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền xóa sản phẩm này']);
        }
         
    }
    public function deleteProducts(Request $request){
        if(Auth::user()->role == 1){
            if(isset($request->products_id)){
                $str_ids = $request->products_id;
                $ids = array();
                $ids = explode(",",$str_ids);
                $count = count($ids);
                for($j=0;$j<$count;$j++){
                    $item = Product::where('id',$ids[$j])->with('langs')->get()->first();
                    foreach($item->langs as $productLang){
                        $productLang = Product::where('id',$productLang->product_lang_id)->get()->first();
                        $productLang->delete();
                    }
                    $item->delete();
                }
            }
            return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Xóa thành công']);
        }
        else{
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền xóa sản phẩm']);
        }
    }
    public function checkProductMa(Request $request,$ma){
        $product = Product::where('ma',$ma)->where('lang',$request->lang)->get()->first();
        if(isset($product)){
            return 1;
        }
        else{
            return 0;
        }
    }
    public function deleteProductImage($id){
        if(Auth::check()){
            $item = ProductImage::where('id',$id)->with('product')->get()->first();
            // $product = Product::where('id',$item->product_id)->get()->first();
            if($item->product->lang == 'vi'){
                $pr_langs = ProductLang::where('product_id',$item->product_id)->get();
                if(isset($pr_langs)){
                    foreach($pr_langs as $pr_lang){
                        $image_lang = ProductImage::where('product_id',$pr_lang->product_lang_id)->where('url',$item->url)->get()->first();
                        if(isset($image_lang)){
                            $image_lang->delete();
                        }
                    }
                }
                $item->delete();
                return 1; 
            }
            else{
                return 0;
            }
        }
        else{
            return 0;
        }
    }

    
    // end product

    // Order

    // End order
    public function orders(Request $request){
        $orders = Order::orderBy('created_at','DESC')->paginate(500);
        // dd($properties);
        return view('admin.orders',compact('orders','request'));
    }
    public function orderDetail(Request $request, $id){
        $order = Order::where('id',$id)->get()->first();
        // dd($properties);
        return view('admin.order',compact('order','request'));
    }
    // properties

    public function properties(Request $request){
        $properties = Properties::orderBy('created_at','DESC')->with('propertie_values')->paginate(500);
        // dd($properties);
        return view('admin.properties',compact('properties','request'));
    }
    public function addProperties(){
        return view('admin.addProperties');
    }
    public function postAddProperties(Request $request){
        $pp = new Properties;
        $pp->add($request);
        return redirect()->route('properties')->with(['flash_level'=>'success','flash_message'=>'Thêm thuộc tính thành công']);
    }
    public function editProperties($id){
        $pp = Properties::where('id',$id)->with('propertie_values')->get()->first();
        return view('admin.editProperties',compact('pp'));
    }
    public function postEditProperties(Request $request, $id){
        $pp = new Properties;
        $pp->edit($request,$id);
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Sửa thuộc tính thành công']);
    }
    public function deletePropertiesValue($id){
        $item = PropertiesValue::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Xóa giá trị thuộc tính thành công']);
    }

    // public function deleteContact($id){
    //     $item = Contact::where('id',$id)->get()->first();
    //     $item->delete();
    //     return redirect()->route('contacts')->with(['flash_level'=>'success','flash_message'=>'Xóa liên hệ thành công']); 
    // }
    // public function deleteContacts(Request $request){
    //     if(isset($request->contacts_id)){
    //         $str_ids = $request->contacts_id;
    //         $ids = array();
    //         $ids = explode(",",$str_ids);
    //         $count = count($ids);
    //         for($j=0;$j<$count;$j++){
    //             $item = Contact::where('id',$ids[$j])->get()->first();
    //             $item->delete();
    //         }
    //     }
    //     return redirect()->route('contacts')->with(['flash_level'=>'success','flash_message'=>'Xóa liên hệ thành công']); 
    // }

    // end properties
    // system 
    public function editSystem(){
        if(Auth::user()->role == 1){
            $system = System::where('id',1)->get()->first();
            return view('admin.editSystem',['system'=>$system]);
        }
        else{
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền sửa thông tin hệ thống']);
        }
    }
    public function postEditSystem(Request $request){
        $item = new System;
        $item->edit($request);
        return redirect()->route('editSystem')->with(['flash_level'=>'success','flash_message'=>'Cập nhật hệ thống thành công']);
    }
    // end system

    // cards
    public function cards(Request $request){
        $cards = Card::select()->paginate(100);
        return view('admin.cards',['cards'=>$cards,'request'=>$request]);
    }
    public function addCard(){
        
        return view('admin.addCard');
    }
    public function postAddCard(addCardRequest $request){
        $item = new Card;
        $item -> add($request);
        return redirect()->route('cards')->with(['flash_level'=>'success','flash_message'=>'Thêm thẻ thành công']); 
    }
    public function editCard($id){
        
        $card = Card::where('id',$id)->get()->first();
        return view('admin.editCard',['card'=>$card]);
    }
    public function postEditCard(editCardRequest $request, $id){
        $item = new Card;
        $item->edit($request,$id);
        return redirect()->route('editCard',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa thông tin thẻ thành công']);
    }
    public function deleteCard($id){
        $item = Card::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('cards')->with(['flash_level'=>'success','flash_message'=>'Xóa thẻ thành công']); 
    }
    public function uploadExcel(ImportExcelRequest $request){
        $file = $request->file('excel');
        $headings = (new HeadingRowImport)->toArray($file);
        
        if(count($headings[0][0]) < 4 || $headings[0][0][0] != 'name' || $headings[0][0][1] != 'email' || $headings[0][0][2] != 'phone' || $headings[0][0][3] != 'password'){
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Tải lên không thành công. Định dạng file dữ liệu không đúng']); 
        }
        else{
            Excel::import(new UserImport, $file);
            return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Tải dữ liệu lên thành công những trường dữ liệu trùng email hoặc số điện thoại sẽ không được ghi đè']); 
        }
        
    }
    // end cards

    // menu 
    public function editMenu(){
        $menus = Menu::where('parent_id',null)->orderBy('stt','ASC')->get();
        $productCategories = ProductCate::where('display',1)->get();
        $blogCategories = BlogCate::where('display',1)->get();
        $pages = Page::where('display',1)->get();
        return view('admin.menu',compact('productCategories','blogCategories','menus','pages'));
    }
    public function updateMenu(Request $request){
        $item = new Menu;
        $item->updateMenu($request);
    }
    public function deleteMenu($array){
        $item = new Menu;
        $item->deleteItems($array);
    }
    // end menu
    //slider
    public function sliders(Request $request){
        $sliders = Slider::select()->paginate(10);
        return view('admin.sliders',['sliders'=>$sliders,'request'=>$request]);
    }
    public function addSlider(){
        
        return view('admin.addSlider');
    }
    public function postAddSlider(addSliderRequest $request){
        $item = new Slider;
        $item -> add($request);
        return redirect()->route('sliders')->with(['flash_level'=>'success','flash_message'=>'Thêm slider thành công']); 
    }
    public function editSlider($id){
        
        $slider = Slider::where('id',$id)->get()->first();
        return view('admin.editSlider',['slider'=>$slider]);
    }
    public function postEditSlider(editSliderRequest $request, $id){
        $item = new Slider;
        $item->edit($request,$id);
        return redirect()->route('editSlider',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa slider thành công']);
    }
    public function deleteSlider($id){
        $item = Slider::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('sliders')->with(['flash_level'=>'success','flash_message'=>'Xóa slider thành công']); 
    }
    // end slider

    //Ads
    public function adss(Request $request){
        if(isset($request->type)){
            $adss = Ads::where('type',$request->type)->paginate(20);
        }
        else{
            $adss = Ads::select()->paginate(20);
        }
        
        return view('admin.adss',['adss'=>$adss,'request'=>$request]);
    }
    public function addAds(){
        
        return view('admin.addAds');
    }
    public function postAddAds(addAdsRequest $request){
        $item = new Ads;
        $item -> add($request);
        return redirect()->route('adss')->with(['flash_level'=>'success','flash_message'=>'Thêm banner thành công']); 
    }
    public function editAds($id){
        
        $ads = Ads::where('id',$id)->get()->first();
        return view('admin.editAds',['ads'=>$ads]);
    }
    public function postEditAds(editAdsRequest $request, $id){
        $item = new Ads;
        $item->edit($request,$id);
        return redirect()->route('editAds',$id)->with(['flash_level'=>'success','flash_message'=>'Sửa banner thành công']);
    }
    public function deleteAds($id){
        $item = Ads::where('id',$id)->get()->first();
        $item->delete();
        return redirect()->route('adss')->with(['flash_level'=>'success','flash_message'=>'Xóa banner thành công']); 
    }
    // end slider
    // chat
    public function deleteGroup(){
        $groups = ChatRoom::select()->get();
        foreach($groups as $group){
            $chatMessage = ChatMessage::where('room_id',$group->id)->get();
            if(count($chatMessage) == 2){

            }
            else{
                $group->delete();
            }
        }
        return "OK!";

    }
    // end chat
    public function convertProduct(){
        $users = User::where('role','!=',4)->with('products')->get();
        foreach($users as $user){
            foreach($user->products as $product){
                $product->tick = 1;
                $product->save();
            }
        }
        return 'ok';
    }
}
