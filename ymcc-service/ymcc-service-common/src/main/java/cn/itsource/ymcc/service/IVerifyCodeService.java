package cn.itsource.ymcc.service;

public interface IVerifyCodeService {
    /**
     * 创建图片验证码
     * @param imageCodeKey 图片验证码的redisKey
     * @return 返回base64编码后的图片验证码
     */
    String creatImageCode(String imageCodeKey);
}
