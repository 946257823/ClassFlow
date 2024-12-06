package cn.itsource.ymcc.service.impl;

import cn.itsource.ymcc.domain.LoginLog;
import cn.itsource.ymcc.mapper.LoginLogMapper;
import cn.itsource.ymcc.service.ILoginLogService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 登录记录 服务实现类
 * </p>
 *
 * @author Xiaopeng
 * @since 2024-11-09
 */
@Service
public class LoginLogServiceImpl extends ServiceImpl<LoginLogMapper, LoginLog> implements ILoginLogService {

}
