package cn.itsource.ymcc.web.controller;

import cn.itsource.ymcc.domain.MessageSms;
import cn.itsource.ymcc.query.MessageSmsQuery;
import cn.itsource.ymcc.result.JSONResult;
import cn.itsource.ymcc.result.PageList;
import cn.itsource.ymcc.service.IMessageSmsService;
import cn.itsource.ymcc.service.IVerifyCodeService;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/verifycode")
public class ImageVerifyController {


    @Autowired
    private IVerifyCodeService verifyCodeService;


    /**
   * 获取图片验证码
     *
   */
    @GetMapping(value = "/imageCode/{imageCodeKey}")
    public JSONResult creatImageCode(@PathVariable("imageCodeKey")String imageCodeKey){
        // 验证码采用base64返回
        String base64Image = verifyCodeService.creatImageCode(imageCodeKey);
        return JSONResult.success(base64Image);
    }
}
