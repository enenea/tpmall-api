<?
namespace app\mall\controller;

use think\Request;
use think\facade\Db;
use app\BaseController;
use thans\jwt\facade\JWTAuth;
use app\mall\model\Member;
use app\mall\validate\Member as memberValidate;
use thans\jwt\JWTAuth as JwtJWTAuth;
use think\exception\ValidateException;

class Profile extends BaseController {


    public function index(){

        $token_info = JWTAuth::auth();
        $field = "name as nickname , phone, avatar, credit, credit_score, coupon";
        $info = Member::field($field)->find($token_info['id']);

        if (!$info)
        {
            return res_fail(20002, "用户不存在!");
        }

        return res_success($info, "请求成功");
    }

    public function login(Request $request){

        $phone = intval($request->post('phone'));
        $password = $request->post('password');

        try {
            validate(memberValidate::class)->check([
                "phone"=>$phone,
                "password"=>$password,
            ]);

        } catch (ValidateException $e)
        {
            return res_fail(20002, $e->getError());
        }

        $field = "id ,pwd, name as nickname , phone, avatar, credit, credit_score, coupon";
        $info = Db::table("tp_member")
        ->where(["phone"=>$phone,"status"=>1])
        ->field($field)
        ->find();

        if (!$info) {
            return res_fail(20002, "该手机号没有注册或已被禁用");
        }

        if (password_verify($password, $info["pwd"]) == false) {
            return res_fail(20002, "密码错误");
        }

        unset($info['pwd']);
        $info['remote'] = $request->ip();
        // id和手机号存入token
        $token = JWTAuth::builder($info);

        return res_success(["token"=>$token,"info"=>$info], "登录成功!");
    }

    public function register(Request $request){

        $phone = intval($request->post('phone'));
        $password = $request->post('password');

        try {
            validate(memberValidate::class)->check([
                "phone"=>$phone,
                "password"=>$password,
            ]);

        } catch (ValidateException $e)
        {
            return res_fail($e->getError());
        }


        $exists = Db::table("tp_member")->where("phone",$phone)->find();
        if ($exists) {
            return res_fail(20002, "该手机号已注册");
        }

        $pwd = password_hash($password, PASSWORD_DEFAULT, ['cost'=>12]);


        $data = [
            "phone"=>$phone,
            "pwd"=>$pwd,
            "status"=>1,
            "add_time"=>time()
        ];



        $result = Db::table("tp_member")->save($data);
        if ($result) {

            $field = "name as nickname , phone, avatar, credit, credit_score, coupon";

            $info = Db::table("tp_member")
            ->field($field)
            ->where("phone",$phone)
            ->find();
            $info["pwd"] = $pwd;
            // id和手机号存入token
            $token = JWTAuth::builder($info);

            return res_success(["token"=>$token, "info"=>$info], "注册成功!");

        }
    }

    public function logout(){

        $token = JWTAuth::token();
        JWTAuth::invalidate($token);

        return res_success([],"退出成功!");
    }
}