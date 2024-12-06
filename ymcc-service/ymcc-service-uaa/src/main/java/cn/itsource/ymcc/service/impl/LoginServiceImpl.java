package cn.itsource.ymcc.service.impl;

import cn.itsource.ymcc.domain.Login;
import cn.itsource.ymcc.mapper.LoginMapper;
import cn.itsource.ymcc.service.ILoginService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 登录表 服务实现类
 * </p>
 *
 * @author Xiaopeng
 * @since 2024-11-09
 */
@Service
public class LoginServiceImpl extends ServiceImpl<LoginMapper, Login> implements ILoginService {

}
