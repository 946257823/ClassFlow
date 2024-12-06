package cn.itsource.ymcc.service.impl;

import cn.itsource.ymcc.domain.User;
import cn.itsource.ymcc.mapper.UserMapper;
import cn.itsource.ymcc.service.IUserService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 会员登录账号 服务实现类
 * </p>
 *
 * @author Xiaopeng
 * @since 2024-11-16
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

}
