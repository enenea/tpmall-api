<?php
namespace app\mall\model;

use think\Model;

class ShopBanner extends Model
{
    public function goods(){

        return $this->morphOne(Goods::class);
    }

    

}