//package cn.itsource.ymcc.utils;
//
//import cn.itsource.ymcc.domain.Login;
//import com.alibaba.fastjson.JSON;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//
//public class LoginContextHolder {
//
//    //获取登录对象
//    public static Login getLogin(){
//        //拿到登录用户 : 用户名 ；用户ID ；头像
//        try {
//            Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//            String principal = authentication.getPrincipal().toString();
//            Login login = JSON.parseObject(principal, Login.class);
//            return login;
//        }catch (Exception e){
//            e.printStackTrace();
//            return null;
//        }
//
//    }
//}
