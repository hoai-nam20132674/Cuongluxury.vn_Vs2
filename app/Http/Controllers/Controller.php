<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use App\Http\Requests\addUserRequest;
use App\Http\Controllers\Auth\LoginController;
use Illuminate\Support\Facades\Auth;
use App\User;
use App\BlogCate;
use App\BlogCategorieLang;
use App\Blog;
use App\Page;
use App\PageLang;
use App\BlogLang;
use App\Service;
use App\ServiceCate;
use App\Product;
use App\ProductLang;
use App\ProductCate;
use App\ProductCategorieLang;
use App\ProductImage;
use App\System;
use App\Menu;
use App\BCID;
use App\PCID;
use App\SCID;
use App\Contact;
use App\Kygui;
use App\KyguiImage;
use App\Yeucau;
use App\Card;
use App\Slider;
use App\Order;
use App\Ads;
use App\OrderDetail;
use App\Feedback;
use App\Popup;
use App\Payment;
use App\Properties;
use App\PropertiesValue;
use App\ProductVariationsPropertiesValue;
use Cart;
use App\Notification;
use Carbon\Carbon;
use Image;
use Session;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function changeLanguage($language){
        \Session::put('website_language', $language);

        return redirect()->back();
    }

    public function index(Request $request){
        if(isset($request->locale)){
            config(['app.locale' => $request->locale]);
            \Session::put('website_language', $request->locale);

        }
        $locale = session('website_language');
        if(isset($locale)){

        }
        else{
            $locale = 'vi';
        }
        $system = System::where('id',1)->get()->first();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        
        //------------
        $slides = Slider::where('display',1)->orderBy('stt','ASC')->get();
        $patek = ProductCate::where('name','Patek Philippe')->with(['products' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
        $rolex = ProductCate::where('name','Rolex')->with(['products' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
        $hublot = ProductCate::where('name','Hublot')->with(['products' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
        $fm = ProductCate::where('name','Franck Muller')->with(['products' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
        $vertu = ProductCate::where('name','Vertu')->with(['products' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
        $trangsuc = ProductCate::where('name','Trang Sức')->with(['products' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
        $pledges = Ads::where('type',0)->where('display',1)->get();
        $adsCates = Ads::where('type',1)->where('display',1)->get();
        // return view('front-end.index',compact('system','menus','categories','products_hl','hct','hcn','cdt','hdb','blogs','slides','popup'));
        return view('front-end.index',compact('slides','patek','rolex','hublot','fm','vertu','trangsuc','pledges','adsCates','menus'));

    }
    public function findProductCateTranslate($cate,$locale){
        if($locale == 'vi'){
            return $cate;
        }
        else{
            $check = 0;
            foreach($cate->langs as $lang){
                if($lang->lang == $locale){
                    $cate_translate = ProductCate::where('id',$lang->product_cate_lang_id)->with(['products' => function ($query) {
                    $query->where('display',1)->orderBy('id','DESC');}])->get()->first();
                    $check = 1;
                    break;
                }
            }
            if($check){
                return $cate_translate;
            }
            else{
                return $cate_translate = ProductCate::where('id',0)->with(['products' => function ($query) {
                    $query->where('display',1)->orderBy('id','DESC');}])->get()->first();
            }
        }
        
    }
    public function findProductVariation(Request $request,$id){
        $product = Product::where('id',$id)->get()->first();
        $products_variation = $product->products_variation;
        $properties = $product->properties;
        $str_ids = $request->properties_value_id;
        $ids = array();
        $ids = explode(",",$str_ids);
        $ids = array_filter($ids);
        foreach($products_variation as $product_var){
            $pro_var_pro_val = ProductVariationsPropertiesValue::where('pro_var_id',$product_var->id)->whereIn('propertie_value_id',$ids)->get();
            if(count($pro_var_pro_val) == count($properties)){
                return $product_var;
                break;
            }
            else{
                return 0;
            }
        }
        // return $product->products_variation()->first();
    }
    public function findBlogCateTranslate($cate,$locale){
        if($locale == 'vi'){
            return $cate;
        }
        else{
            $check = 0;
            foreach($cate->langs as $lang){
                if($lang->lang == $locale){
                    $cate_translate = BlogCate::where('id',$lang->blog_cate_lang_id)->with(['blogs' => function ($query) {
                    $query->where('display',1)->orderBy('id','DESC');}])->get()->first();
                    $check = 1;
                    break;
                }
            }
            if($check){
                return $cate_translate;
            }
            else{
                return $cate_translate = BlogCate::where('id',0)->with(['blogs' => function ($query) {
                    $query->where('display',1)->orderBy('id','DESC');}])->get()->first();
            }
        }
        
    }
    public function productsHot(Request $request){
        if(isset($request->locale)){
            config(['app.locale' => $request->locale]);
            \Session::put('website_language', $request->locale);
        }
        $locale = session('website_language');
        if(isset($locale)){

        }
        else{
            $locale = 'vi';
        }
        $system = System::where('id',1)->get()->first();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $adss = Ads::where('display',1)->get();
        $products_hl = Product::where('highlight',1)->where('display',1)->where('lang',$locale)->with('categories')->orderBy('id','DESC')->take(9)->get();
        $hct = ProductCate::where('name','Sản Phẩm Cho Thuê')->with(['products' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
        $hct = $this->findProductCateTranslate($hct,$locale);
        $hcn = ProductCate::where('name','Sản Phẩm Chuyển Nhượng')->with(['products' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
        $hcn = $this->findProductCateTranslate($hcn,$locale);
        $hdb = ProductCate::where('name','Sản Phẩm Đặc Biệt')->with(['products' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
        $hdb = $this->findProductCateTranslate($hdb,$locale);
        $cdt = BlogCate::where('name','Chủ Đầu Tư')->with(['blogs' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
        $cdt = $this->findBlogCateTranslate($cdt,$locale);
        return view('front-end.productsHot',compact('products_hl','menus','hct','request','system','hcn','hdb','cdt'));
    }

    public function page($url, Request $request){
        if(isset($request->locale)){
            config(['app.locale' => $request->locale]);
            \Session::put('website_language', $request->locale);
        }
        $locale = session('website_language');
        if(isset($locale)){

        }
        else{
            $locale = 'vi';
        }
        $strrpos = strrpos($url,"-");
        $url = substr($url,$strrpos+1);
        $key = substr($url,0,2);
        $id = substr($url,2);
        
        $categories = ProductCate::where('display',1)->where('lang',$locale)->with('products')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        // $adss = Ads::where('display',1)->get();

    	if($key=='pi'){
            // $adss = Ads::where('display',1)->where('type',1)->get();
            $product = Product::where('id',$id)->with('categories','images')->get()->first();
            $locale = $product->lang;
            config(['app.locale' => $locale]);
            \Session::put('website_language', $locale);
            if($product->lang == $locale){
                $cate_pr = $product->categories;
                if(count($cate_pr) == 1){
                    $cate_pr = $product->categories()->first();
                    $products = $cate_pr->products()->where('display',1)->where('lang',$locale)->orderBy('id','DESC')->get()->take(5);
                }
                else{
                    $cate_pr = $product->categories()->where('parent_id','!=',null)->first();
                    $products = $cate_pr->products()->where('display',1)->where('lang',$locale)->orderBy('id','DESC')->get()->take(5);
                }

                // $products = Product::where('id','!=',$product->id)->where('display',1)->where('lang',$locale)->orderBy('id','DESC')->with('categories')->get()->take(5);
                $images = $product->images()->where('role',0)->get();
                $policys = Ads::where('display',1)->where('type',3)->get();
                $contacts = Ads::where('display',1)->where('type',4)->get();


                // --------------
                $array_properties_value_id = array();
                $array_properties_id = array();
                $i=0;
                $j=0;
                $products_variation = $product->products_variation;
                if(count($products_variation)){
                    foreach($products_variation as $product_var){
                        $properties_value = $product_var->properties_value;
                        foreach($properties_value as $propertie_val){
                            if(in_array($propertie_val->id, $array_properties_value_id)){

                            }
                            else{
                                $array_properties_value_id[$i] = $propertie_val->id;
                                $i++;
                            }
                            if(in_array($propertie_val->properties_id, $array_properties_id)){

                            }
                            else{
                                $array_properties_id[$j] = $propertie_val->properties_id;
                                $j++;
                            }
                        }
                    }
                    $properties = Properties::whereIn('id',$array_properties_id)->get();
                    $properties_value = PropertiesValue::whereIn('id',$array_properties_value_id)->get();
                    return view('front-end.product',compact('menus','product','images','system','products','policys','contacts','properties','properties_value'));
                }
                else{
                    return view('front-end.product',compact('menus','product','images','system','products','policys','contacts'));
                    // dd($cate_pr->products);

                }
                
                // --------------
                
                
            }
            else{
                if($product->lang == 'vi'){
                    $pr_lang = ProductLang::where('product_id',$product->id)->where('lang',$locale)->get();
                    if(count($pr_lang)){
                        $pr_lang = $pr_lang->first();
                        $product = Product::where('id',$pr_lang->product_lang_id)->with('categories')->get()->first();
                        $images = ProductImage::where('product_id',$product->id)->where('role',0)->get();
                        return redirect()->route('page',$product->url);
                    }
                    else{
                        return redirect()->route('index')->with(['flash_level'=>'warning','flash_message'=>'không tìm thấy bản dịch']);
                    }
                    
                }
                else{
                    if($locale == 'vi'){
                        $pr_lang = ProductLang::where('product_lang_id',$product->id)->get()->first();
                        $product = Product::where('id',$pr_lang->product_id)->with('categories')->get()->first();
                        $images = ProductImage::where('product_id',$product->id)->where('role',0)->get();
                        return redirect()->route('page',$product->url);
                    }
                    else{
                        $pr_lang = ProductLang::where('product_lang_id',$product->id)->get()->first();
                        $pr_lang = ProductLang::where('product_id',$pr_lang->product_id)->where('lang',$locale)->get();
                        if(count($pr_lang)){
                            $pr_lang = $pr_lang->first();
                            $product = Product::where('id',$pr_lang->product_lang_id)->with('categories')->get()->first();
                            $images = ProductImage::where('product_id',$product->id)->where('role',0)->get();
                            return redirect()->route('page',$product->url);
                        }
                        else{
                            return redirect()->route('index')->with(['flash_level'=>'warning','flash_message'=>'không tìm thấy bản dịch']);
                        }
                    }
                    
                    
                }
            }
            
    	}
        
        else if($key=='pc'){
            
            $categorie = ProductCate::where('id',$id)->with(['products' => function ($query) {
                $query->where('display',1)->orderBy('id','DESC');
            }])->get()->first();
            // $locale = $categorie->lang;
            // config(['app.locale' => $locale]);
            // \Session::put('website_language', $locale);
            
            if($categorie->lang == $locale){
                return view('front-end.products',compact('categories','menus','categorie','request','system'));
            }
            else{
                if($categorie->lang == 'vi'){
                    $product_categorie_lang = ProductCategorieLang::where('product_cate_id',$categorie->id)->where('lang',$locale)->get();
                    if(count($product_categorie_lang)){
                        $product_categorie_lang = $product_categorie_lang->first();
                        $categorie = ProductCate::where('id',$product_categorie_lang->product_cate_lang_id)->get()->first();
                        return redirect()->route('page',$categorie->url);
                    }
                    else{
                        return redirect()->route('index')->with(['flash_level'=>'warning','flash_message'=>'không tìm thấy bản dịch']);
                    }
                }
                else{
                    if($locale == 'vi'){
                        $product_categorie_lang = ProductCategorieLang::where('product_cate_lang_id',$categorie->id)->get()->first();
                        $categorie = ProductCate::where('id',$product_categorie_lang->product_cate_id)->get()->first();
                        return redirect()->route('page',$categorie->url);
                    }
                    else{
                        $product_categorie_lang = ProductCategorieLang::where('product_cate_lang_id',$categorie->id)->get()->first();
                        $product_categorie_lang = ProductCategorieLang::where('product_cate_id',$product_categorie_lang->product_cate_id)->where('lang',$locale)->get();
                        if(count($product_categorie_lang)){
                            $product_categorie_lang = $product_categorie_lang->first();
                            $categorie = ProductCate::where('id',$product_categorie_lang->product_cate_lang_id)->get()->first();
                            return redirect()->route('page',$categorie->url);
                        }
                        else{
                            return redirect()->route('index')->with(['flash_level'=>'warning','flash_message'=>'không tìm thấy bản dịch']);
                        }
                    }

                }
            }
            
        }
        
        
        else if($key=='bc'){
            $categorie = BlogCate::where('id',$id)->get()->first();
            // $locale = $categorie->lang;
            // config(['app.locale' => $locale]);
            // \Session::put('website_language', $locale);
            if($categorie->lang == $locale){
                $blogs = $categorie->blogs()->where('display',1)->where('lang',$locale)->orderBy('id','DESC')->paginate(12);
                return view('front-end.blogs',compact('menus','blogs','categorie','request','system'));
            }
            else{
                if($categorie->lang == 'vi'){
                    $blog_categorie_lang = BlogCategorieLang::where('blog_cate_id',$categorie->id)->where('lang',$locale)->get();
                    if(count($blog_categorie_lang)){
                        $blog_categorie_lang = $blog_categorie_lang->first();
                        $categorie = BlogCate::where('id',$blog_categorie_lang->blog_cate_lang_id)->get()->first();
                        return redirect()->route('page',$categorie->url);
                    }
                    else{
                        return redirect()->route('index')->with(['flash_level'=>'warning','flash_message'=>'không tìm thấy bản dịch']);
                    }
                }
                else{
                    if($locale == 'vi'){
                        $blog_categorie_lang = BlogCategorieLang::where('blog_cate_lang_id',$categorie->id)->get()->first();
                        $categorie = BlogCate::where('id',$blog_categorie_lang->blog_cate_id)->get()->first();
                        return redirect()->route('page',$categorie->url);
                    }
                    else{
                        $blog_categorie_lang = BlogCategorieLang::where('blog_cate_lang_id',$categorie->id)->get()->first();
                        $blog_categorie_lang = BlogCategorieLang::where('blog_cate_id',$blog_categorie_lang->blog_cate_id)->where('lang',$locale)->get();
                        if(count($blog_categorie_lang)){
                            $blog_categorie_lang = $blog_categorie_lang->first();
                            $categorie = BlogCate::where('id',$blog_categorie_lang->blog_cate_lang_id)->get()->first();
                            return redirect()->route('page',$categorie->url);
                        }
                        else{
                            return redirect()->route('index')->with(['flash_level'=>'warning','flash_message'=>'không tìm thấy bản dịch']);
                        }
                    }

                }
            }
            
        }
        else if($key=='bi'){
            $blog = Blog::where('id',$id)->get()->first();
            $locale = $blog->lang;
            config(['app.locale' => $locale]);
            \Session::put('website_language', $locale);
            $blogNews = Blog::where('display',1)->where('lang',$locale)->orderBy('id','DESC')->take(6)->get();
            if($blog->lang == $locale){
                $product_cates = ProductCate::where('display',1)->where('parent_id',null)->get();
                $blog_cates = BlogCate::where('display',1)->where('parent_id',null)->get();
                $cate = $blog->categories()->first();
                $blogs = $cate->blogs()->where('display',1)->orderBy('id','DESC')->take(6)->get();
                return view('front-end.blog',compact('menus','blogs','blog','request','system','blogNews','product_cates','blog_cates'));
            }
            else{
                if($blog->lang == 'vi'){
                    $blog_lang = BlogLang::where('blog_id',$blog->id)->where('lang',$locale)->get();
                    if(count($blog_lang)){
                        $blog_lang = $blog_lang->first();
                        $blog = Blog::where('id',$blog_lang->blog_lang_id)->get()->first();
                        return redirect()->route('page',$blog->url);
                    }
                    else{
                        return redirect()->route('index')->with(['flash_level'=>'warning','flash_message'=>'không tìm thấy bản dịch']);
                    }
                    
                }
                else{
                    if($locale == 'vi'){
                        $blog_lang = BlogLang::where('blog_lang_id',$blog->id)->get()->first();
                        $blog = Blog::where('id',$blog_lang->blog_id)->get()->first();
                        return redirect()->route('page',$blog->url);
                    }
                    else{
                        $blog_lang = BlogLang::where('blog_lang_id',$blog->id)->get()->first();
                        $blog_lang = BlogLang::where('blog_id',$blog_lang->blog_id)->where('lang',$locale)->get();
                        if(count($blog_lang)){
                            $blog_lang = $blog_lang->first();
                            $blog = Blog::where('id',$blog_lang->blog_lang_id)->get()->first();
                            return redirect()->route('page',$blog->url);
                        }
                        else{
                            return redirect()->route('index')->with(['flash_level'=>'warning','flash_message'=>'không tìm thấy bản dịch']);
                        }
                    }
                    
                    
                }
            }
            
        }
        else if($key=='pa'){
            $page = Page::where('id',$id)->get()->first();
            // $locale = $page->lang;
            // config(['app.locale' => $locale]);
            // \Session::put('website_language', $locale);
            $product_cates = ProductCate::where('display',1)->where('parent_id',null)->get();
            $blog_cates = BlogCate::where('display',1)->where('parent_id',null)->get();
            $blogNews = Blog::where('display',1)->where('lang',$locale)->orderBy('id','DESC')->take(6)->get();
            $blogs = $blogNews;
            if($page->lang == $locale){
                
                return view('front-end.page',compact('menus','page','request','system','product_cates','blog_cates','blogNews','blogs'));
            }
            else{
                if($page->lang == 'vi'){
                    $page_lang = PageLang::where('page_id',$page->id)->where('lang',$locale)->get();
                    if(count($page_lang)){
                        $page_lang = $page_lang->first();
                        $page = Page::where('id',$page_lang->page_lang_id)->get()->first();
                        return redirect()->route('page',$page->url);
                    }
                    else{
                        return redirect()->route('index')->with(['flash_level'=>'warning','flash_message'=>'không tìm thấy bản dịch']);
                    }
                    
                }
                else{
                    if($locale == 'vi'){
                        $page_lang = PageLang::where('page_lang_id',$page->id)->get()->first();
                        $page = Page::where('id',$page_lang->page_id)->get()->first();
                        return redirect()->route('page',$page->url);
                    }
                    else{
                        $page_lang = PageLang::where('page_lang_id',$page->id)->get()->first();
                        $page_lang = PageLang::where('page_id',$page_lang->page_id)->where('lang',$locale)->get();
                        if(count($page_lang)){
                            $page_lang = $page_lang->first();
                            $page = Page::where('id',$page_lang->page_lang_id)->get()->first();
                            return redirect()->route('page',$page->url);
                        }
                        else{
                            return redirect()->route('index')->with(['flash_level'=>'warning','flash_message'=>'không tìm thấy bản dịch']);
                        }
                    }
                    
                    
                }
            }
            
        }
        else {
            return view('front-end.error',compact('categories','menus','request','system'));
        }


    }

    public function exchange(Request $request){
        if(isset($request->locale)){
            config(['app.locale' => $request->locale]);
            \Session::put('website_language', $request->locale);
        }
        $system = System::where('id',1)->get()->first();
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        return view('front-end.exchange',compact('system','categories','menus','request'));
    }
    public function search(Request $request){
        $locale = config('app.locale');
        $products = Product::where('display',1)->where('lang',$locale)->orderBy('id','DESC');
        if($request->has('keyword') && $request->keyword != null){
            $products = $products->where('name', 'like', '%' .$request->keyword.'%')->orWhere('ma', 'like', '%' .$request->keyword.'%');
        }
        if($request->has('bed') && $request->bed != null){
            $products = $products->where('bed',$request->bed);
        }
        if($request->has('huong') && $request->huong != null){
            $products = $products->where('huong',$request->huong);
        }
        if($request->has('price') && $request->price != null){
            $strrpos = strrpos($request->price,"-");
            $minPrice = substr($request->price,0,$strrpos);
            $maxPrice = substr($request->price,$strrpos+1);
            if($maxPrice == '+'){
                $products = $products->where('price','>=',$minPrice);
            }
            else{
                $products = $products->whereBetween('price',[$minPrice,$maxPrice]);
            }
        }
        $products = $products->where('lang',$locale)->paginate(30);
        $system = System::where('id',1)->get()->first();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        return view('front-end.product-search',compact('menus','products','request','system'));
        // echo $minPrice."-".$maxPrice;
    }

    public function searchThue(Request $request){
        $locale = config('app.locale');
        $products = Product::where('display',1)->where('lbds',1)->where('lang',$locale)->orderBy('id','DESC');
        if($request->has('keyword') && $request->keyword != null){
            $products = $products->where('name', 'like', '%' .$request->keyword.'%')->orWhere('ma', 'like', '%' .$request->keyword.'%');
        }
        if($request->has('bed') && $request->bed != null){
            $products = $products->where('bed',$request->bed);
        }
        if($request->has('huong') && $request->huong != null){
            $products = $products->where('huong',$request->huong);
        }
        if($request->has('price') && $request->price != null){
            $strrpos = strrpos($request->price,"-");
            $minPrice = substr($request->price,0,$strrpos);
            $maxPrice = substr($request->price,$strrpos+1);
            if($maxPrice == '+'){
                $products = $products->where('price','>=',$minPrice);
            }
            else{
                $products = $products->whereBetween('price',[$minPrice,$maxPrice]);
            }
        }
        $products = $products->where('lang',$locale)->paginate(30);
        $system = System::where('id',1)->get()->first();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        return view('front-end.product-search',compact('menus','products','request','system'));
        // echo $minPrice."-".$maxPrice;
    }
    public function searchBan(Request $request){
        $locale = config('app.locale');
        $products = Product::where('display',1)->where('lbds',0)->where('lang',$locale)->orderBy('id','DESC');
        if($request->has('keyword') && $request->keyword != null){
            $products = $products->where('name', 'like', '%' .$request->keyword.'%')->orWhere('ma', 'like', '%' .$request->keyword.'%');
        }
        if($request->has('bed') && $request->bed != null){
            $products = $products->where('bed',$request->bed);
        }
        if($request->has('huong') && $request->huong != null){
            $products = $products->where('huong',$request->huong);
        }
        if($request->has('price') && $request->price != null){
            $strrpos = strrpos($request->price,"-");
            $minPrice = substr($request->price,0,$strrpos);
            $maxPrice = substr($request->price,$strrpos+1);
            if($maxPrice == '+'){
                $products = $products->where('price','>=',$minPrice);
            }
            else{
                $products = $products->whereBetween('price',[$minPrice,$maxPrice]);
            }
        }
        $products = $products->where('lang',$locale)->paginate(30);
        $system = System::where('id',1)->get()->first();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        return view('front-end.product-search',compact('menus','products','request','system'));
        // echo $minPrice."-".$maxPrice;
    }

    // ------------------------------------------
    public static function arrayColumn($object,$col){
        $array = array();
        $i = 0;
        foreach($object as $cate){
            $array[$i] = $cate->$col;
            $i++;
        }
        return $array;
    }


    // Ký gửi 
    public function addKygui(Request $request){
        $item = new Kygui;
        $item->add($request);
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'gửi yêu cầu thành công']);
    }
    public function addYeucau(Request $request){
        $item = new Yeucau;
        $item->add($request);
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'gửi yêu cầu thành công']);
    }
    // ------------------------------------------
    public function addContact(Request $request){
        $item = new Contact;
        $item->add($request);
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'gửi yêu cầu thành công']);

    }
    public function addContact2(Request $request){
        $item = new Contact;
        $item->add($request);
        return 1;

    }
    public function contact(){
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $system = System::where('id',1)->get()->first();
        return view('front-end.contact',compact('system','menus'));
    }

    // add to cart
    public function cart(){
        $system = System::where('id',1)->get()->first();
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $payments = Payment::where('status',1)->get();
        $items_cart = Cart::content();
        return view('front-end.cart',compact('system','categories','menus','items_cart','payments'));
        

        
    }
    public function addToCart($id,$qty, Request $request){
        $product = Product::where('id',$id)->get()->first();
        $item_cart = Cart::content();
        $check_item = array();
        if(Cart::count()){
            $check_item = Cart::search(function($cartItem, $rowId) use($id) {
                return $cartItem->id == $id;
            });

        }
        
        if(count($check_item)){
            $check_item = $check_item->first();
            Cart::update($check_item->rowId,$check_item->qty+$qty);
        }
        else{
            if($product->sale == null){
                Cart::add($product->id, $product->name, $qty, $product->price, 0, ['img'=>$product->avata,'url'=>$product->url,'oldprice'=>$product->price,'variation_id'=>$request->variation_id,'sku'=>$product->ma]);
            }
            else{
                Cart::add($product->id, $product->name, $qty, $product->sale, 0, ['img'=>$product->avata,'url'=>$product->url,'oldprice'=>$product->price,'variation_id'=>$request->variation_id,'sku'=>$product->ma]);
            }
        }
        
        
        $array = array();
        $array[0]=Cart::count();
        $array[1]=Cart::subtotal();
        // return $array;
        return redirect()->route('cart');
    }
    public function removeItemCart($id){
        Cart::remove($id);
        $array = array();
        $array[0]=Cart::count();
        $array[1]=Cart::subtotal();
        return $array;
    }
    public function order(){
        $system = System::where('id',1)->get()->first();
        $categories = ProductCate::where('display',1)->whereNull('parent_id')->get();
        $menus = Menu::whereNull('parent_id')->orderBy('stt','ASC')->get();
        $items_cart = Cart::content();
        return view('front-end.order',compact('system','categories','menus','items_cart'));
    }
    public function postAddOrder(Request $request){
        $items = Cart::content();
        $order = new Order;
        $order->add($request,$items);
        Cart::destroy();
        return redirect()->back()->with(['flash_level'=>'success','flash_message'=>'Đặt hàng thành công']);
        
    }
    // end add to cart
    
    public function flyResize($size, $imagePath){
        $imageFullPath = public_path($imagePath);
        $sizes = config('image.sizes');
     
        if (!file_exists($imageFullPath) || !isset($sizes[$size])) {
            abort(404);
        }
     
        $savedPath = public_path('resizes/' . $size . '/' . $imagePath);
        $savedDir = dirname($savedPath);
        if (!is_dir($savedDir)) {
            mkdir($savedDir, 777, true);
        }
     
        list($width, $height) = $sizes[$size];
     
        $image = Image::make($imageFullPath)->resize($width, null, function ($constraint) {
            $constraint->aspectRatio();
        })->save($savedPath);
     
        return $image->response();
    }
    public function resize()
    {
        $image = Image::make('public/uploads/images/products/details/0af6d0262e092379a4f3b4bd095e1ee8.jfif');
        $savedPath = public_path('resizes/products/details/0af6d0262e092379a4f3b4bd095e1ee8.jfif');
        $image->fit(600, 600)->save($savedPath . '.jpg', 90);
         
        return 'Done';
    }
}
