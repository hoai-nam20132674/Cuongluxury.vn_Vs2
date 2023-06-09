<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class addUserRequest extends FormRequest
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
            
            'email' => 'unique:users,email',
            'phone' => 'unique:users,phone',
            'confirm_password'=>'same:password'
            
        ];
    }
    public function messages(){
        return [
            'email.unique' => 'Email này đã được sử dụng',
            'phone.unique' => 'Số điện thoại này đã được sử dụng! Vui lòng đăng ký bằng số điện thoại khác',
            'confirm_password.same'=>'Xác thực mật khẩu không chính xác! Vui lòng đăng ký lại'
            
        ];
    }
}
