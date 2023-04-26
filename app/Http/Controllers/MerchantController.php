<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\ProductCate;
use App\Product;
use App\Menu;
use App\User;
use App\System;
use App\Order;
use App\OrderDetail;
use App\Feedback;
use App\ChatMessage;
use App\ChatRoom;
use App\Http\Requests\addProductRequest;
use App\Http\Requests\editProductRequest;
use App\Http\Requests\editPasswordRequest;
use App\Http\Requests\editInfoRequest;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\Notification;
use Carbon\Carbon;
use App\Http\Requests\addUserRequest;
use App\Events\NewChatMessage;
use App\Events\ChatNotification;
use Response;
use Image;

class MerchantController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        
        
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request){
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->orderBy('stt','ASC')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        $products = Product::where('user_id',Auth::user()->id)->get();
    	return view('front-end.shop',compact('categories','products','menus','system','request'));
    }
    public function chat($room_id){
        $system = System::where('id',1)->get()->first();
        $chat_messages = ChatMessage::where('user_id',Auth::user()->id)->get();
        $rooms_id = Controller::arrayColumn($chat_messages,$col='room_id');
        $rooms = ChatRoom::whereIn('id',$rooms_id)->get();
        
        
            $chat_message_auth_active = ChatMessage::where('room_id',$room_id)->where('user_id',Auth::user()->id)->get()->first();
            if(isset($chat_message_auth_active)){
                $room_active = ChatRoom::where('id',$room_id)->get()->first();
                return view('front-end.chat',compact('system','room_active','chat_message_auth_active','rooms','room_id'));
            }
            else{
                return redirect()->route('chat',$rooms->first()->id);

            }
    }
    
    public function newMessage(Request $request,$room_id){
        $chat_message_auth = ChatMessage::where('room_id',$room_id)->where('user_id',Auth::user()->id)->get()->first();
        if(isset($chat_message_auth)){
            $now = Carbon::now()->format('d/m/Y h:i A');
            if($request->hasFile('image')){
                $file = $request->file('image');
                $file_name = $file->getClientOriginalName();
                $path = public_path('uploads/images/chats/' . $file_name . '.jpg');
                Image::make($file)->save($path, 90);
                Image::make($path)->resize(600, null, function ($constraint) {
                    $constraint->aspectRatio();
                })->save($path);
                $chat_message_auth->messages = $chat_message_auth->messages.'<br><div class="chats chats-right"><div class="chat-content"><div class="message-content-img"><img width="100%" src="/uploads/images/chats/'.$file_name.'.jpg"></div><div class="chat-time"><div><div class="time">'.$now.'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>';
                $chat_message_auth->unread = '';
                $chat_message_auth->save();
                $chat_message_partners = ChatMessage::where('room_id',$room_id)->where('id','!=',$chat_message_auth->id)->get();
                foreach($chat_message_partners as $chat_message_partner){
                    $chat_message_partner->messages = $chat_message_partner->messages.'<br><div class="chats"><div class="chat-content"><div class="message-content-img"><img width="100%" src="/uploads/images/chats/'.$file_name.'.jpg"></div><div class="chat-time"><div><div class="time">'.$now.'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>';
                    $chat_message_partner->unread = 'hình ảnh';
                    $chat_message_partner->save();
                    broadcast(new ChatNotification($file_name.'.jpg',1,$chat_message_auth->room_id,$chat_message_partner->user_id,$chat_message_auth->user_id))->toOthers();

                    $note = Notification::where('user_id',$chat_message_partner->user_id)->get()->first();
                    $now = Carbon::now()->toDateTimeString();
                    $content = '<div id="'.$note->count.'" check="0" class="nofifition-drop-item unread"><a href="#" onclick="chat('.$chat_message_auth->room_id.',1)"><div class="notification-image ng-scope"><i class="bx bxl-messenger bx-flashing" style="color:#1876f2;font-size: 58px;"></i></div><div class="notification-content-description"><h1 class="title ng-binding ng-scope">TIN NHẮN MỚI</h1><div class="summary ng-binding ng-scope">Bạn có tin nhắn mới từ '.Auth::user()->name.'</div><div class="date-submit ng-scope"><i class="far fa-clock"></i><span class="ng-binding">'.$now.'</span></div></div></a></div>'.$note->content;
                    $note->content = $content;
                    $note->count = $note->count+1;
                    $note->save();
                }

                // broadcast(new NewChatMessage($file_name.'.jpg',1,$chat_message_auth->room_id,$chat_message_auth->user_id))->toOthers();


            }
            else{
                $chat_message_auth->messages = $chat_message_auth->messages.'<br><div class="chats chats-right"><div class="chat-content"><div class="message-content">'.$request->message.'</div><div class="chat-time"><div><div class="time">'.$now.'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>';
                $chat_message_auth->unread = '';
                $chat_message_auth->save();
                $chat_message_partners = ChatMessage::where('room_id',$room_id)->where('id','!=',$chat_message_auth->id)->get();
                foreach($chat_message_partners as $chat_message_partner){
                    $chat_message_partner->messages = $chat_message_partner->messages.'<br><div class="chats"><div class="chat-content"><div class="message-content">'.$request->message.'</div><div class="chat-time"><div><div class="time">'.$now.'<i><img src="/images/double-tick.png" alt="" class="mCS_img_loaded"></i></div></div></div></div></div>';
                    $chat_message_partner->unread = $request->message;
                    $chat_message_partner->save();
                    broadcast(new ChatNotification($request->message,0,$chat_message_auth->room_id,$chat_message_partner->user_id,$chat_message_auth->user_id))->toOthers();

                    $note = Notification::where('user_id',$chat_message_partner->user_id)->get()->first();
                    $now = Carbon::now()->toDateTimeString();
                    $content = '<div id="'.$note->count.'" check="0" class="nofifition-drop-item unread"><a href="#" onclick="chat('.$chat_message_auth->user_id.',1)"><div class="notification-image ng-scope"><i class="bx bxl-messenger bx-flashing" style="color:#1876f2;font-size: 58px;"></i></div><div class="notification-content-description"><h1 class="title ng-binding ng-scope">TIN NHẮN MỚI</h1><div class="summary ng-binding ng-scope">Bạn có tin nhắn mới từ '.Auth::user()->name.'</div><div class="date-submit ng-scope"><i class="far fa-clock"></i><span class="ng-binding">'.$now.'</span></div></div></a></div>'.$note->content;
                    $note->content = $content;
                    $note->count = $note->count+1;
                    $note->save();
                }
                // broadcast(new NewChatMessage($request->message,0,$chat_message_auth->room_id,$chat_message_auth->user_id))->toOthers();
            }
            
            
            // event( new NewChatMessage($request->message,$chat_message_auth->room_id,$chat_message_auth->user_id));
            return true;
        }
        else{
            return false;
        }
        
    }
    public  function getChatMessage($roomId){
        $chatMessage = ChatMessage::where('room_id',$roomId)->where('user_id',Auth::user()->id)->get()->first();
        return $chatMessage;
    }
    public  function getPartner($partnerId){
        $partner = User::where('id',$partnerId)->get()->first();
        return $partner;
    }
    public function checkChatRoomExist($partnerId){
        $chatMessageAuth = ChatMessage::where('user_id',Auth::user()->id)->get();
        $chatRoomAuthId = Controller::arrayColumn($chatMessageAuth,$col='room_id');
        $chatMessagePartner = ChatMessage::where('user_id',$partnerId)->whereIn('room_id',$chatRoomAuthId)->get()->first();
        if(isset($chatMessagePartner)){
            $data = array(
              "check" => "1",
              "roomId" => $chatMessagePartner->room_id
            );
            return Response::json($data);
        }
        else{
            $newChatRoom = new ChatRoom;
            $newChatRoom->save();
            $newChatMessageAuth = new ChatMessage;
            $newChatMessageAuth->user_id = Auth::user()->id;
            $newChatMessageAuth->room_id = $newChatRoom->id;
            $newChatMessageAuth->save();
            $newChatMessagePartner = new ChatMessage;
            $newChatMessagePartner->user_id = $partnerId;
            $newChatMessagePartner->room_id = $newChatRoom->id;
            $newChatMessagePartner->save();
            broadcast(new ChatNotification('',2,$newChatRoom->id,$partnerId,Auth::user()->id))->toOthers();
            $chatRoom = ChatRoom::where('id',$newChatRoom->id)->with([
                'users' => function ($query) {
                    $query->where('user_id','!=',Auth::user()->id)->select('room_id','user_id','name','phone','messages','unread','avatar')->get();
                }
            ])->get()->first();
            $data = array(
              "check" => "0",
              "roomId" => $chatRoom->users->first()->room_id,
              "avatar" => $chatRoom->users->first()->avatar,
              "name" => $chatRoom->users->first()->name,
            );
            return Response::json($data);
        }
    }

    public function getChatRooms(){
        $user = User::where('id',Auth::user()->id)->with([
            'chatRooms' => function ($query) {
                $query->select('room_id')->get();
            }
        ])->get()->first();
        return $user->chatRooms;
    }
    public function getPartnerRoomId($roomId){
        $chatRoom = ChatRoom::where('id',$roomId)->with([
            'users' => function ($query) {
                $query->select('room_id','user_id','name','phone','messages','unread','avatar')->get();
            }
        ])->get()->first();
        $user = $chatRoom->users;
        return $user;
    }

    public function info(){
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        return view('front-end.info',compact('categories','menus','system'));
    }
    public function editPassword(){
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        return view('front-end.edit-password',compact('categories','menus','system'));
    }
    public function postEditPassword(editPasswordRequest $request){
        $item = new User;
        $check = $item->merchantEditPassword($request);
        if($check){
            return redirect()->route('merchantEditPassword')->with(['flash_level'=>'success','flash_message'=>'Thay đổi mật khẩu thành công']);
        }
        else{
            return redirect()->route('merchantEditPassword')->with(['flash_level'=>'danger','flash_message'=>'Đổi mật khẩu không thành công. Mật khẩu không chính xác']);
        }
        
    }
    public function postEditInfo(editInfoRequest $request){
        $item = new User;
        $item -> merchantEditInfo($request);
        return redirect()->route('merchantInfo')->with(['flash_level'=>'success','flash_message'=>'Cập nhật thông tin thành công']); 
    }
    public function merchantPostAddProduct(addProductRequest $request){
        $item = new Product;
         
        $check = $item -> add($request);
        if($check){
            return redirect()->route('merchantIndex')->with(['flash_level'=>'success','flash_message'=>'Đăng sản phẩm đầu tiên trong ngày thành công']);
        }
        else{
            return redirect()->route('merchantIndex')->with(['flash_level'=>'success','flash_message'=>'Đăng sản phẩm thành công']);
        }
    }
    public function merchantEditProduct($id){
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->orderBy('stt','ASC')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        $product = Product::where('id',$id)->get()->first();
        if($product->user_id == Auth::user()->id){
            return view('front-end.editProduct',compact('categories','product','menus','system'));
        }
        else{
            return redirect()->route('index')->with(['flash_level'=>'danger','flash_message'=>'Yêu cầu không được xử lý']);
        }
    }
    public function merchantPostEditProduct(editProductRequest $request, $id){
        $item = new Product;
        $item->edit($request,$id);
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Sửa sản phẩm thành công']);
    }
    public function salesOrder(){
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        $products = Product::where('user_id',Auth::user()->id)->get();
        $prs_id = Controller::arrayColumn($products,$col='id');
        
        $orders_detail = OrderDetail::whereIn('products_id',$prs_id)->get();
        $orders_id = Controller::arrayColumn($orders_detail,$col='orders_id');
        $orders = Order::whereIn('id',$orders_id)->orderBy('id','DESC')->get();
        return view('front-end.s_order',compact('categories','menus','system','orders','orders_detail'));
    }
    public function purchaseOrder(){
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        $orders = Order::where('phone',Auth::user()->phone)->get();
        $orders_id = Controller::arrayColumn($orders,$col='id');
        $orders_detail = OrderDetail::whereIn('orders_id',$orders_id)->get();
        return view('front-end.p_order',compact('categories','menus','system','orders','orders_detail'));
    }
    public function removeOrder($id){
        $order = Order::where('id',$id)->first();
        if(Auth::user()->phone == $order->phone){
            $order->delete();
            return redirect()->route('PO')->with(['flash_level'=>'success','flash_message'=>'Xóa đơn hàng thành công']);
        }
        else{
            return redirect()->route('PO')->with(['flash_level'=>'danger','flash_message'=>'Xóa đơn hàng không thành công']);
        }
    }

    // Feedback
    public static function checkCreateFeedback($product_id){

        $feedback = Feedback::where('user_id',Auth::user()->id)->where('product_id',$product_id)->get();
        $orders_detail = OrderDetail::join('orders', 'order_details.orders_id', '=', 'orders.id')->where('order_details.products_id',$product_id)->where('orders.phone',Auth::user()->phone)->select('order_details.*', 'orders.phone AS phone')->get();
        if(count($feedback) ==0 && count($orders_detail) != 0){
            return true;
        }
        else{
            return false;
        }
    }
    public function postAddFeedback($product_id, Request $request){
        $feedback = new Feedback;
        $feedback ->add($product_id,$request);
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Đánh giá sản phẩm thành công']);

    }
    public function confirmNotification($id){
        if(Auth::user()->id == $id){
            $notification = Notification::where('user_id',$id)->first();
            $content = $notification->content;
            $a = 'check="0"';
            $b = 'check="1"';
            $content = str_replace($a,$b,$content);
            $notification->content = $content;
            $notification->save();
            return true;
            // dd(strlen($content));
        }
        else{
            return false;
        }
    }
    public function merchantDeleteProduct($id){
        $item = Product::where('id',$id)->get()->first();
        $user = User::where('id',$item->user_id)->get()->first();
        if(Auth::user()->role!=4 && (Auth::user()->id == 1 || $item->user_id == Auth::user()->id || $user->parent_id == Auth::user()->id || (Auth::user()->role == 3 && $user->parent_id == Auth::user()->parent_id))){
            $item->delete();
            return 1;
        }
        else{
            return 0;
        }
    }

    public function listCTV(Request $request){
        if(isset($request->search)){
            $ctvs = User::where('parent_id',Auth::user()->parent_id)->where('role',4)->where('phone', 'like', '%' .$request->search.'%')->orderBy('id','DESC')->with('products')->get();
        }
        else{
            $ctvs = User::where('parent_id',Auth::user()->parent_id)->where('role',4)->orderBy('id','DESC')->with('products')->get();
        }
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        return view('front-end.listCTV',compact('categories','menus','system','ctvs','request'));
    }
    public function listVL(Request $request){
        if(isset($request->search)){
            $ctvs = User::where('vp',NULL)->where('role',4)->where('phone', 'like', '%' .$request->search.'%')->orderBy('id','DESC')->with('products')->paginate(100);
        }
        else{
            $ctvs = User::where('vp',NULL)->where('role',4)->orderBy('id','DESC')->with('products')->paginate(100);
        }
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        return view('front-end.listVL',compact('categories','menus','system','ctvs','request'));
    }

    public function deleteCTV($id){
        $user = User::where('id',$id)->get()->first();
        if(Auth::user()->id == 1 || (Auth::user()->role == 3 && $user->parent_id == Auth::user()->parent_id)){
            $user->delete();
            return 1;
        }
        else{
            return 0;
        }
    }

    public function merchantDeleteAllProduct($id){
        $items = Product::where('user_id',$id)->get();
        $user = User::where('id',$id)->get()->first();
        if(Auth::user()->role!=4 && (Auth::user()->id == 1 || $user->id == Auth::user()->id || $user->parent_id == Auth::user()->id)){
            foreach($items as $item){
                $item->delete();
            
            }
            return 1;
        }
        else{
            return 0;
        }
    }
    public function merchantConfirmOrder($id){
        $order = Order::where('id',$id)->get()->first();
        if($order->status == 1){
            return 0;
        }
        else{
            $order->status = 1;
            $order->save();
            $order_details = OrderDetail::where('orders_id',$id)->get();
            if(isset($order_details)){
                $item = $order_details->first();
                $product = Product::where('id',$item->products_id)->get()->first();
                $user = User::where('id',$product->user_id)->get()->first();
                $user->point = $user->point + 50;
                $user->save();
                foreach($order_details as $order_detail){
                    $order_detail->status =1;
                    $order_detail->save();
                }
                $note = Notification::where('user_id',$product->user_id)->get()->first();
                $now = Carbon::now()->toDateTimeString();
                $content = '<div id="'.$note->count.'" check="0" class="nofifition-drop-item unread"><a href="/don-hang-ban"><div class="notification-image ng-scope" style="background-image: url(/images/money-plus.png)"></div><div class="notification-content-description"><h1 class="title ng-binding ng-scope">XÁC THỰC ĐƠN HÀNG THÀNH CÔNG</h1><div class="summary ng-binding ng-scope">Bạn đãng được tặng 50 điểm thưởng tương đương với 50.000 vnđ vào tài khoản</div><div class="date-submit ng-scope"><i class="far fa-clock"></i><span class="ng-binding">'.$now.'</span></div></div></a></div>'.$note->content;
                $note->content = $content;
                $note->count = $note->count+1;
                $note->save();
                return 1;
            }
            else{
                return 0;
            }
        }
        
    }
    public function merchantUpdateView($id,$value){
        $product = Product::where('id',$id)->get()->first();
        $user = User::where('id',$product->user_id)->get()->first();
        if(Auth::user()->role == 3 && Auth::user()->vp == $user->vp){
            $product->view = $value;
            $product->save();
            return 1;
        }
        else{
            return 0;
        }
    }
    public function merchantUpdatePoint($id,$value){
        $user = User::where('id',$id)->get()->first();
        if(Auth::user()->role == 3){
            $user->point = $value;
            $user->save();
            return 1;
        }
        else{
            return 0;
        }
    }

    // End feedback
    public function merchantAddCTV(){
        if(Auth::user()->role ==3){

            $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
            $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
            $system = System::where('id',1)->get()->first();
            return view('front-end.addCTV',compact('categories','menus','system'));
        }
        else{
            return redirect()->back()->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền truy cập chức năng này']);
        }
    }
    public function merchantPostAddCTV(addUserRequest $request){
        if(Auth::user()->role ==3){
            $item = new User;
            $item->addMerchantCTV($request);
            return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Tạo tài khoản CTV thành công']);
        }
        else{
            return 0;
        }
    }
    public function notifications(Request $request){

        $notification = Notification::where('user_id',Auth::user()->id)->get()->first();
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        return view('front-end.notifications',compact('categories','menus','system','notification','request'));
    }
    public function updateVP(Request $request, $id){
        $user = User::where('id',$id)->get()->first();
        if($user->role == 4){
            if($request->vp == null || !isset($request->vp)){
                return 0;
            }
            else{
                $parent = User::where('id',$request->vp)->get()->first();
                $user->vp = $parent->vp;
                $user->parent_id = $parent->id;
                $user->save();
                return 1;
            }
        }
        else{
            return 0;
        }
    }
}
