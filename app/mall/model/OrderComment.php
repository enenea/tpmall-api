<?php
namespace app\mall\model;

use think\Model;

class OrderComment extends Model
{   
    
    protected $type = [
        'star'    =>  'integer',
    ];

    public function getAddTimeAttr($value){

        return date('Y-m-d H:i:s',$value);
    }

    public function setAddTimeAttr($value){
        
        return strtotime($value);
    }


}