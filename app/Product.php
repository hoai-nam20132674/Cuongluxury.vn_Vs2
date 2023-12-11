<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use App\ProductImage;
use App\PCID;
use App\User;
use Carbon\Carbon;
use App\Notification;
use App\ProductLang;
use App\ProductPropertiesVariation;
use App\ProductPropertiesValueFilter;
use Image;
use Validator;
use Illuminate\Support\Str;


class Product extends Model
{
    //
    protected $table = 'products';
    public function orders(){
        return $this->belongsToMany('App\Order','order_details','products_id','orders_id');
    }
    public function categories(){
        return $this->belongsToMany('App\ProductCate','pcids','product_id','cate_id');
    }
    public function properties_value_filter(){
        return $this->belongsToMany('App\PropertiesValue','product_properties_value_filters','product_id','propertie_value_id');
    }
    public function properties(){
        return $this->belongsToMany('App\Properties','product_properties_variations','product_id','propertie_id');
    }
    public function user(){
        return $this->belongsTo('App\User');
    }
    public function images(){
        return $this->hasMany('App\ProductImage');
    }
    public function langs(){
        return $this->hasMany('App\ProductLang');
    }
    public function products_variation(){
        return $this->hasMany('App\ProductVariations');
    }
    public function add($request){
    	$this->name = $request->name;
        if($request->title == ''){
            $this->title = $request->name;
        }
        else{
            $this->title = $request->title;
        }
        $this->user_id = Auth::user()->id;
    	$this->seo_keyword = $request->seo_keyword;
    	$this->seo_description = $request->seo_description;
    	$this->url = $request->url;
    	$this->content = $request->content;
    	$this->display = $request->display;
        $this->ma = $request->ma;
        $this->short_description = $request->short_description;
        $this->highlight = $request->highlight;
        $this->stock = $request->stock;
        $this->tiente = $request->tiente;
        $this->price = preg_replace( '/\D/', '', $request->price);
        if(isset($request->sale)){
            $this->sale = preg_replace( '/\D/', '', $request->sale);
        }
        if(isset($request->lang)){
            $this->lang=$request->lang;
        }
        else{
            $this->lang='vi';
        }
    	$this->save();
        $url = $request->url.'-pi'.$this->id;
        $this->url = $url;
        $this->save();
        if($request->product_id == null){
           

        }
        else{
            $product_lang = new ProductLang;
            $product_lang->product_id = $request->product_id;
            $product_lang->product_lang_id = $this->id;
            $product_lang->lang = $request->lang;
            $product_lang->save();
        }
        

    	$categories = $request->categories;
        if(isset($categories)){
        	$count = count($categories);
        	for($j=0;$j<$count;$j++){
                $pcid = new PCID;
                $pcid->product_id = $this->id;
                $pcid->cate_id = $categories[$j];
                $pcid->save();
            }
        }
        $properties_filter = $request->properties_filter;
        if(isset($properties_filter)){
            $count = count($properties_filter);
            for($j=0;$j<$count;$j++){
                $item = new ProductPropertiesValueFilter;
                $item->product_id = $this->id;
                $item->propertie_value_id = $properties_filter[$j];
                $item->save();
            }
        }
        $properties_variation = $request->properties_variation;
        if(isset($properties_variation)){
            $count = count($properties_variation);
            for($j=0;$j<$count;$j++){
                $item = new ProductPropertiesVariation;
                $item->product_id = $this->id;
                $item->propertie_id = $properties_variation[$j];
                $item->save();
            }
        }
        if($request->product_id == null){
            if($request->hasFile('images')){
                
            	foreach($request->file('images') as $file){
                    if(isset($file)){
                        
                        $file_name = $file->getClientOriginalName();
                        if(strlen($file_name) >= 180){
                            $file_name = substr($file_name,0,170);
                        }
                        $file_type = $file->getClientOriginalExtension();
                        if($file_type == 'jpg' || $file_type == 'jpeg' || $file_type == 'gif'){
                            $random = Str::random(9);
                            $image = new ProductImage;
                            $image->url = $file_name.$random.'.jpg';
                            $image->role = 0;
                            $image->product_id = $this->id;
                            $image->save();
                            $path = public_path('uploads/images/products/details/' . $file_name . $random .'.jpg');
                            // Image::make($file)->save($path, 90);
                            ini_set('memory_limit','512M');
                            Image::make($file)->resize(1000, null, function ($constraint) {
                                $constraint->aspectRatio();
                            })->save($path,100)->destroy();
                        }
                        else if($file_type == 'png'){
                            $random = Str::random(9);
                            $image = new ProductImage;
                            $image->url = $file_name.$random.'.png';
                            $image->role = 0;
                            $image->product_id = $this->id;
                            $image->save();
                            $path = public_path('uploads/images/products/details/' . $file_name . $random .'.jpg');
                            // Image::make($file)->save($path, 90);
                            ini_set('memory_limit','512M');
                            Image::make($file)->resize(1000, null, function ($constraint) {
                                $constraint->aspectRatio();
                            })->save($path,100)->destroy();
                        }
                        else{
                            // break;
                        }
                    }
                }
            }
            if($request->hasFile('avata')){
                $file = $request->file('avata');
                $file_name = $file->getClientOriginalName();
                $file_type = $file->getClientOriginalExtension();
                if($file_type == 'jpg' || $file_type == 'png' || $file_type == 'jpeg' || $file_type == 'gif'){
                    $random = Str::random(9);
                    $image = new ProductImage;
                    $image->url = $file_name;
                    $image->role = 1;
                    $image->product_id = $this->id;
                    $image->save();
                    $this->avata = $file_name;
                    $this->save();
                    $path = public_path('uploads/images/products/details/' . $file_name);
                    // Image::make($file)->save($path, 90);
                    ini_set('memory_limit','512M');
                    Image::make($file)->resize(1000, null, function ($constraint) {
                        $constraint->aspectRatio();
                    })->save($path,100)->destroy();
                }
                else{
                    // break;
                }
            }
        }
        else{

            $product_vi = Product::where('id',$request->product_id)->with('images')->get()->first();
            foreach($product_vi->images as $image){
                $img = new ProductImage;
                $img->url = $image->url;
                $img->role = $image->role;
                $img->product_id = $this->id;
                $img->save();
                if($image->role == 1){
                    $this->avata = $image->url;
                    $this->save();
                }
            }
        }
        

    }
    public function edit($request,$id){
        $product = $this::where('id',$id)->with('images','langs')->get()->first();
        $product->name = $request->name;
        if($request->title == ''){
            $product->title = $request->name;
        }
        else{
            $product->title = $request->title;
        }
        $product->seo_keyword = $request->seo_keyword;
        $product->seo_description = $request->seo_description;
        $url = $request->url.'-pi'.$product->id;
        $product->url = $url;
        $product->content = $request->content;
        $product->display = $request->display;
        $product->ma = $request->ma;
        $product->highlight = $request->highlight;
        $product->stock = $request->stock;
        $product->lang=$request->lang;
        $product->tiente = $request->tiente;
        $product->short_description = $request->short_description;
        $product->price =  preg_replace( '/\D/', '', $request->price);
        if(isset($request->sale)){
            $product->sale = preg_replace( '/\D/', '', $request->sale);
        }
        $product->save();
        $categories = $request->categories;
        if(empty($categories)){
            $itemDeletes = PCID::where('product_id',$id)->get();
            foreach($itemDeletes as $itemDelete){
                $itemDelete->delete();
            }
        }
        if(isset($categories)){
            $itemDeletes = PCID::where('product_id',$id)->whereNotIn('cate_id',$categories)->get();
            foreach($itemDeletes as $itemDelete){
                $itemDelete->delete();
            }
            $count = count($categories);
            for($j=0;$j<$count;$j++){
                $item = PCID::where('cate_id',$categories[$j])->where('product_id',$id)->get();
                if(count($item)==0){
                    $scid = new PCID;
                    $scid->product_id = $id;
                    $scid->cate_id = $categories[$j];
                    $scid->save();
                }
                
            }
        }
        $properties_filter = $request->properties_filter;
        if(empty($properties_filter)){
            $itemDeletes = ProductPropertiesValueFilter::where('product_id',$id)->get();
            foreach($itemDeletes as $itemDelete){
                $itemDelete->delete();
            }
        }
        if(isset($properties_filter)){
            $itemDeletes = ProductPropertiesValueFilter::where('product_id',$id)->whereNotIn('propertie_value_id',$properties_filter)->get();
            foreach($itemDeletes as $itemDelete){
                $itemDelete->delete();
            }
            $count = count($properties_filter);
            for($j=0;$j<$count;$j++){
                $item = ProductPropertiesValueFilter::where('propertie_value_id',$properties_filter[$j])->where('product_id',$id)->get();
                if(count($item)==0){
                    $scid = new ProductPropertiesValueFilter;
                    $scid->product_id = $id;
                    $scid->propertie_value_id = $properties_filter[$j];
                    $scid->save();
                }
                
            }
        }
        if($product->lang == 'vi'){
            $pr_langs = $product->langs;
            if($request->hasFile('images')){ 
                foreach($request->file('images') as $file){
                    if(isset($file)){
                        $file_name = $file->getClientOriginalName();
                        if(strlen($file_name) >= 180){
                            $file_name = substr($file_name,0,170);
                        }
                        $file_type = $file->getClientOriginalExtension();
                        if($file_type == 'jpg' || $file_type == 'png' || $file_type == 'jpeg' || $file_type == 'gif'){
                            $random = Str::random(9);
                            $image = new ProductImage;
                            $image->url = $file_name.$random.'.jpg';
                            $image->role = 0;
                            $image->product_id = $id;
                            $image->save();
                            if(isset($pr_langs)){
                                foreach($pr_langs as $pr_lang){
                                    $image = new ProductImage;
                                    $image->url = $file_name.$random.'.jpg';
                                    $image->role = 0;
                                    $image->product_id = $pr_lang->product_lang_id;
                                    $image->save();
                                }
                                
                            }
                            
                            $path = public_path('uploads/images/products/details/' . $file_name . $random.'.jpg');
                            ini_set('memory_limit','512M');
                            Image::make($file)->resize(1000, null, function ($constraint) {
                                $constraint->aspectRatio();
                            })->save($path,100)->destroy(); // resize ảnh
                        }
                        else{
                            // break;
                        }
                        
                    }
                }
                
            }

            if($request->hasFile('avata')){
                $file = $request->file('avata');
                $file_name = $file->getClientOriginalName();
                $file_type = $file->getClientOriginalExtension();
                if($file_type == 'jpg' || $file_type == 'png' || $file_type == 'jpeg' || $file_type == 'gif'){
                    $avata = ProductImage::where('product_id',$product->id)->where('role',1)->get()->first();
                    $random = Str::random(9);
                    if(isset($avata)){
                        $avata->url = $file_name;
                        $avata->save();
                        $product->avata = $file_name;
                        $product->save();
                        $path = public_path('uploads/images/products/details/' . $file_name);
                        // Image::make($file)->save($path, 90);
                        ini_set('memory_limit','512M');
                        Image::make($file)->resize(1000, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->save($path,100)->destroy();
                        if(isset($pr_langs)){
                            foreach($pr_langs as $pr_lang){
                                $avata = ProductImage::where('product_id',$pr_lang->product_lang_id)->where('role',1)->get()->first();
                                $avata->url = $file_name;
                                $avata->save();
                                $product_lang = Product::where('id',$pr_lang->product_lang_id)->get()->first();
                                $product_lang->avata = $file_name;
                                $product_lang->save();
                            }
                            
                        }
                    }
                    else{
                        $avata = new ProductImage;
                        $avata->url = $file_name;
                        $avata->role = 1;
                        $avata->product_id = $product->id;
                        $avata->save();
                        $product->avata = $file_name;
                        $product->save();
                        $path = public_path('uploads/images/products/details/' . $file_name);
                        // Image::make($file)->save($path, 90);
                        ini_set('memory_limit','512M');
                        Image::make($file)->resize(1000, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->save($path,100)->destroy();
                        if(isset($pr_langs)){
                            foreach($pr_langs as $pr_lang){
                                $avata = new ProductImage;
                                $avata->url = $file_name;
                                $avata->role = 1;
                                $avata->product_id = $pr_lang->product_lang_id;
                                $avata->save();
                                $product_lang = Product::where('id',$pr_lang->product_lang_id)->get()->first();
                                $product_lang->avata = $file_name;
                                $product_lang->save();
                            }
                        }
                    }
                    
                }
                else{
                    // break;
                }
            }


            $image_detail = $product->images;
            foreach($image_detail as $image){
                if($request->hasFile($image->id)){
                    $file = $request->file($image->id);
                    $file_name = $file->getClientOriginalName();
                    if(strlen($file_name) >= 180){
                        $file_name = substr($file_name,0,170);
                    }
                    $file_type = $file->getClientOriginalExtension();
                    $random = Str::random(9);
                    if($file_type == 'jpg' || $file_type == 'png' || $file_type == 'jpeg' || $file_type == 'gif'){
                        if(isset($pr_langs)){
                            foreach($pr_langs as $pr_lang){
                                $image_lang = ProductImage::where('product_id',$pr_lang->product_lang_id)->where('url',$image->url)->where('role',0)->get()->first();
                                $image_lang->url = $file_name.$random.'.jpg';
                                $image_lang->save();
                            }
                        }
                        $image->url = $file_name.$random.'.jpg';
                        $path = public_path('uploads/images/products/details/' . $file_name . $random.'.jpg');
                        // Image::make($file)->save($path, 90);
                        ini_set('memory_limit','512M');
                        Image::make($file)->resize(1000, null, function ($constraint) {
                            $constraint->aspectRatio();
                        })->save($path,100)->destroy(); // resize ảnh 
                        $image->save();
                        
                    }
                    else{
                        // break;
                    }
                    
                }
                
            }
            
        }
        else{
            // $pr_lang = ProductLang::where('product_lang_id',$product->id)->get()->first();
            // $product_vi = Product::where('id',$pr_lang->product_id)->with('images')->get()->first();
            // foreach($product_vi->images as $image){
            //     $img = new ProductImage;
            //     $img->url = $image->url;
            //     $img->role = $image->role;
            //     $img->product_id = $product->id;
            //     $img->save();
            // }
        }
        $product->save();

    }
}
