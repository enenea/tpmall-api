<?php
namespace app\mall\model;

use think\Model;

class Order extends Model
{   
    
    protected $type = [
        'price'    =>  'integer',
    ];

    public function comments(){

        return $this->hasMany(OrderComment::class);
    }


    public function getAddTimeAttr($value){

        return date('Y-m-d H:i:s',$value);
    }

    public function setAddTimeAttr($value){
        
        return strtotime($value);
    }


}