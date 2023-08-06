<?php
namespace app;

use think\db\exception\DataNotFoundException;
use think\db\exception\ModelNotFoundException;
use think\exception\Handle;
use think\exception\HttpException;
use think\exception\HttpResponseException;
use think\exception\ValidateException;

use thans\jwt\exception\JWTException;
use thans\jwt\exception\BadMethodCallException;
use thans\jwt\exception\TokenBlacklistException;
use thans\jwt\exception\TokenBlacklistGracePeriodException;
use thans\jwt\exception\TokenExpiredException;
use thans\jwt\exception\TokenInvalidException;
use thans\jwt\exception\UserNotDefinedException;
use think\Response;
use Throwable;

/**
 * 应用异常处理类
 */
class ExceptionHandle extends Handle
{
    /**
     * 不需要记录信息（日志）的异常类列表
     * @var array
     */
    protected $ignoreReport = [
        HttpException::class,
        HttpResponseException::class,
        ModelNotFoundException::class,
        DataNotFoundException::class,
        ValidateException::class,
        // JWTException::class,
    ];

    /**
     * 记录异常信息（包括日志或者其它方式记录）
     *
     * @access public
     * @param  Throwable $exception
     * @return void
     */
    public function report(Throwable $exception): void
    {
        // 使用内置的方式记录异常日志
        parent::report($exception);
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @access public
     * @param \think\Request   $request
     * @param Throwable $e
     * @return Response
     */
    public function render($request, Throwable $e): Response
    {

        // 添加自定义异常处理机制


        // token 调用了错误的方法
        if ($e instanceof BadMethodCallException) {
            return res_fail(20002, $e->getMessage());

        }

        // token 异常 token在黑名单列表中
        if ($e instanceof TokenBlacklistException) {
            return res_fail(20003, $e->getMessage());

        }

        // token 异常 token在黑名单宽限列表中
        if ($e instanceof TokenBlacklistGracePeriodException) {
            return res_fail(20004, $e->getMessage());

        }

        // token 异常 token过期
        if ($e instanceof TokenExpiredException) {
            return res_fail(20005, $e->getMessage());

        }

        // token 异常
        if ($e instanceof TokenInvalidException) {
            return res_fail(20006, $e->getMessage());

        }

        // token 异常
        if ($e instanceof UserNotDefinedException) {
            return res_fail(20007, $e->getMessage());
        }

        // token 异常
        if ($e instanceof JWTException) {
            return res_fail(20001, $e->getMessage());
        }

        // 其他错误交给系统处理
        return parent::render($request, $e);
    }
}
