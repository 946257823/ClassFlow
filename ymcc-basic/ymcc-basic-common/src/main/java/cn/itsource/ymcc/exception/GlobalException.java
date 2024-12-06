package cn.itsource.ymcc.exception;


// 自定义全局异常
public class GlobalException extends RuntimeException{
    private ErrorCode errorCode;

    public GlobalException(String message) {
        super(message); // 调用RuntimeException的构造器
    }

    public GlobalException(ErrorCode errorCode) {
        super(errorCode.getMessage());
        this.errorCode = errorCode;
    }

    public ErrorCode getErrorCode() {
        return errorCode;
    }

}
