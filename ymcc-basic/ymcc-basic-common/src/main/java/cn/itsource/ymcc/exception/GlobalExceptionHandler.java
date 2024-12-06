package cn.itsource.ymcc.exception;

import cn.itsource.ymcc.result.JSONResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
// 是对ControllerAdvice的加强：他的方法可以在controller执行前后做一些事情。类似于AOP思想拦截器
@RestControllerAdvice
public class GlobalExceptionHandler {
    // 做异常处理,捕获Exception异常
    @ExceptionHandler(Exception.class)
    public JSONResult exceptionHanderler(Exception e) {
        e.printStackTrace();
        return JSONResult.error(e.getMessage(),"500"); // 直接返回异常里的信息给用户
    }

    // 做异常处理,捕获GlobalException异常
    @ExceptionHandler(GlobalException.class)
    public JSONResult exceptionHanderler(GlobalException e) {
        e.printStackTrace();
        ErrorCode errorCode = e.getErrorCode();
        if (errorCode != null) {
            return JSONResult.error(errorCode.ERROR_SYSTEM_500.getMessage(),errorCode.ERROR_SYSTEM_500.getCode());
        }else {
            return JSONResult.error(e.getMessage());
        }

    }
}
