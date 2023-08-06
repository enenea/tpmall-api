<?php
namespace app\mall\controller;
use app\mall\model\Goods as goodsModel;
use app\mall\model\Order;
use think\facade\Db;
use app\Request;
use app\BaseController;

class Goods extends BaseController {

    public function detail(Request $request){

        // $goodsId = intval($request->post('id'));
        $goodsId = 1;
        if ($goodsId <= 0) {
            return res_fail(20002,"请求失败,请稍后再试");
        }

        $goods = goodsModel::find(1);
        // $goods = goodsModel::find($goodsId);
        $goods->goods_banner;
        $goods->store;
        $goods->goodsDesc;
        $goods->goodsOptions;

        $where[] = ["o.goods_id"=>$goodsId,"o.status"=>3,"o.iscomment"=>1];
        // $hasWhere[] = [""];
        $order = Db::table("tp_order")
        ->alias("o")
        ->leftjoin("tp_order_comment oc ","o.id = oc.order_id")
        ->leftjoin("tp_member m"," o.mid = m.id ")
        ->where(["o.goods_id"=>$goodsId, "o.status"=>3])
        ->order("oc.id", "desc")
        ->limit(1)
        ->field("m.name,m.avatar,o.id,o.goods_id,oc.add_time,oc.context,oc.options,oc.star,oc.thumb")
        ->find();

        $order['add_time'] = date("Y-m-d H:i:s",$order['add_time']);
        $order['options'] = json_decode($order['options']);
        $goods["comment"] = $order;
        $service = [
            "延误必赔",
            "退货补运费",
            "全国包邮",
            "7天无理由退货"
        ];

        $goods['goods_service'] = $service;


        if (!$goods) {
            return res_fail(20002, "请求失败,请稍后再试");
        }

        return res_success($goods, "请求成功");

    }
}