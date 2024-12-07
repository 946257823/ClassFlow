package cn.itsource.ymcc.service.impl;

import cn.itsource.ymcc.exception.GlobalException;
import cn.itsource.ymcc.service.IVerifyCodeService;
import cn.itsource.ymcc.util.StrUtils;
import cn.itsource.ymcc.util.VerifyCodeUtils;
import lombok.extern.slf4j.Slf4j;
import org.mockito.internal.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.concurrent.TimeUnit;

@Service
@Slf4j
public class VerifyCodeServiceImpl implements IVerifyCodeService {
    /**
     * 创建图片验证码
     * 0.注入redis
     * 1.判断参数是否合法
     * 2.使用随机数工具生成一个4位数的随机数。
     * 3.往redis里添加前端传过来的imageCodeKey和生成的四位随机数
     * 4.使用验证码工具类将随机数变成图片然后获取到base64编码后的值
     * 5.返回取到base64编码后的值
     * @param imageCodeKey 图片验证码的redisKey
     * @return 返回base64编码后的图片验证码
     */

    @Autowired
    RedisTemplate<Object, Object> redisTemplate;

    @Override
    public String creatImageCode(String imageCodeKey) {
        // 1.判断参数是否合法
        if(!StringUtils.hasLength(imageCodeKey)) {
            throw new GlobalException("无效的请求，请刷新重试");
        }

        // 2.使用工具类生成一个4位数的随机数。
        String randomString = StrUtils.getComplexRandomString(4);

        // 3.往redis里添加前端传过来的imageCodeKey和生成的四位随机数,设置1分钟过期时间。
        redisTemplate.opsForValue().set(imageCodeKey,randomString,1, TimeUnit.MINUTES);


        // 4.使用验证码工具类将随机数变成图片然后获取到base64编码后的值
        String base64Image = VerifyCodeUtils.verifyCode(140,40,randomString);
        log.info("生成图片，转码Base64{}",base64Image);
        return base64Image;
    }
}
