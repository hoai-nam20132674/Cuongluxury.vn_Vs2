<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class addProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            
            // 'images' => 'mimes:jpg,jpeg,png,gif|max:50000|dimensions:max_width=2000'
            
            
        ];
    }
    public function messages(){
        return [
            
            // 'images.mimes' => 'Định dạng file upload không đúng vui lòng chọn file ảnh jpg, jpeg, png, gif !',
            // 'images.max' => 'File ảnh dung lượng quá lớn, vui lòng giảm dung lượng file < 50Mb',
            // 'images.dimensions' => 'File ảnh size quá lớn vui lòng sử dụng ảnh kích thước tối đa < 2000px'
            
        ];
    }
}
