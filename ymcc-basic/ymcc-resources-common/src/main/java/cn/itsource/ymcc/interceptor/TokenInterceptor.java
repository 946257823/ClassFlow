package cn.itsource.ymcc.interceptor;

import feign.RequestInterceptor;
import feign.RequestTemplate;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

//Feign接口的token的转换
@Component
@Slf4j
public class TokenInterceptor implements RequestInterceptor {

    private static final String TOKEN_NAME = "Authorization";

    @Override
    public void apply(RequestTemplate requestTemplate) {
        //1.拿到请求
        ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = requestAttributes.getRequest();
        //2.拿到Token
        String authorization = request.getHeader(TOKEN_NAME);
        if(StringUtils.hasLength(authorization)){
            //3.把token设置到Feign的请求头中
            requestTemplate.header(TOKEN_NAME, authorization);
            log.info("Feign拦截器转发Token = {}", authorization);
        }

    }
}
