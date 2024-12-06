package cn.itsource.ymcc.service.impl;

import cn.itsource.ymcc.domain.Permission;
import cn.itsource.ymcc.mapper.PermissionMapper;
import cn.itsource.ymcc.service.IPermissionService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 权限表 服务实现类
 * </p>
 *
 * @author Xiaopeng
 * @since 2024-11-09
 */
@Service
public class PermissionServiceImpl extends ServiceImpl<PermissionMapper, Permission> implements IPermissionService {

}
