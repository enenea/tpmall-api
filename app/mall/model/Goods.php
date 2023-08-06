<?php
namespace app\mall\model;

use think\Model;

class Goods extends Model
{   

    protected $type = [
        'goods_price'    =>  'float',
        'goods_old_price'     =>  'float',
    ];

    public function goodsBanner(){

        return $this->hasMany(GoodsBanner::class);
    }

    public function store(){
        return $this->belongsTo(Store::class);

    }

    public function goodsDesc(){
        return $this->hasOne(GoodsDesc::class);

    }

    public function goodsOptions(){
        return $this->hasMany(GoodsOptions::class);

    }

    public function setGoodsServiceAttr($value){
        // 写入数据库之前
        return json_encode($value); 
    }

    public function getGoodsServiceAttr($value){
        // 写入数据库之前
        return json_decode($value); 
    }

    public function getGoodsSqlAddtimeAttr($value){

        return date('Y-m-d H:i:s',$value);
    }

    public function setGoodsSqlAddtimeAttr($value){

        return strtotime($value);
    }


}