<?php
// 这是系统自动生成的公共文件

function res_json($code, $data , $msg,$http_code = 200){
  $res = [
    "data" =>$data,
    "code" =>$code,
    "msg" =>$msg,
  ];
  return json($res, $http_code);
}

function res_fail($code=20002, $msg="非法请求"){
  $res = [
    "data" =>[],
    "code" =>$code,
    "msg" =>$msg,
  ];
  return json($res , 200);
}

function res_success($data, $msg="非法请求"){
  $res = [
    "data" =>$data,
    "code" =>20000,
    "msg" =>$msg,
  ];

  return json($res, 200);
}