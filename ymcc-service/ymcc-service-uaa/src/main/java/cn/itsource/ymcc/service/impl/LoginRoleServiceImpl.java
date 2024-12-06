package cn.itsource.ymcc.service.impl;

import cn.itsource.ymcc.domain.LoginRole;
import cn.itsource.ymcc.mapper.LoginRoleMapper;
import cn.itsource.ymcc.service.ILoginRoleService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户和角色中间表 服务实现类
 * </p>
 *
 * @author Xiaopeng
 * @since 2024-11-09
 */
@Service
public class LoginRoleServiceImpl extends ServiceImpl<LoginRoleMapper, LoginRole> implements ILoginRoleService {

}
