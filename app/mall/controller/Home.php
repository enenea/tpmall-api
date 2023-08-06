<?php
namespace app\mall\controller;
use app\mall\model\Goods;
use app\mall\model\ShopBanner;
use app\mall\model\ShopRecommend;
use app\Request;

class Home {

  public function index() {


    $banner = ShopBanner::order("display_order","asc")->select();

    $recommend = ShopRecommend::where("enable","1")->order("display_order","asc")->select();


    $category_id = 1;
    $goods = Goods::where("category_id", $category_id)->page(1,30)->select();
    $data = [
      "banner"=>$banner,
      "recommend"=>$recommend,
      "goods"=>$goods
    ];

    return res_success($data, "请求成功");
  }

  public function getGoods(Request $request){
    $limit = 30;

    $category_id = intval($request->post('id'));
    $page = intval($request->post('page'));

    $category_id = $category_id > 0 ? $category_id : 1;
    $page = $page > 0 ? $page : 1;

    $goods = Goods::where("category_id", $category_id)->page($page, $limit)->select();

    return res_success($goods, "请求成功");

  }


}