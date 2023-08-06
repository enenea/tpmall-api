<?php
declare (strict_types = 1);

namespace app\mall\validate;

use think\Validate;

class Member extends Validate
{
    /**
     * 定义验证规则
     * 格式：'字段名' =>  ['规则1','规则2'...]
     *
     * @var array
     */
    protected $rule = [
        "phone" => "require|length:11",
        "password"=>"require|max:128"
    ];

    /**
     * 定义错误信息
     * 格式：'字段名.规则名' =>  '错误信息'
     *
     * @var array
     */
    protected $message = [
        "phone.require" => "手机号不能为空",
        "phone.length" => "非法手机号",
        "password.require" => "密码不能为空",
        "password.max" => "密码过长",
    ];
}
