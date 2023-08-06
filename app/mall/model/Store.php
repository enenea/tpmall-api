<?php
namespace app\mall\model;

use think\Model;

class Store extends Model
{   
    
    protected $type = [
        'desc_star'    =>  'float',
        'price_star'     =>  'float',
        'quality_star'     =>  'float',
        'sale_count'     =>  'float',
    ];

    public function getAddTimeAttr($value){

        return date('Y-m-d H:i:s',$value);
    }

    public function setAddTimeAttr($value){
        
        return strtotime($value);
    }


}