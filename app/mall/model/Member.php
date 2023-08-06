<?php
namespace app\mall\model;

use think\Model;

class Member extends Model
{
    protected $type = [
        "credit" => "integer",
        "credit_score" => "integer",
    ];

    public function getAddTimeAttr($value){
        return date("Y-m-d H:i:s", $value);
    }

}