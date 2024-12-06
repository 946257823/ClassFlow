package cn.itsource.ymcc.exception;

public enum ErrorCode {
    // 系统内部异常
    ERROR_SYSTEM_500("500","系统异常啦，正在殴打程序员。。。"),
    ERROR_PASSWORD_ISNULL("1002","密码为空"),
    ERROR_USERNAME_ISNULL("1001","用户名为空");

    // 错误码
    private String code;
    // 错误信息
    private String message;

    ErrorCode(String code, String message) {
        this.code = code;
        this.message = message;
    }

    public String getCode() {
        return code;
    }


    public String getMessage() {
        return message;
    }

}
