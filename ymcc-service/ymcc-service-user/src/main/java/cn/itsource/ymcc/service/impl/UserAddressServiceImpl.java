package cn.itsource.ymcc.service.impl;

import cn.itsource.ymcc.domain.UserAddress;
import cn.itsource.ymcc.mapper.UserAddressMapper;
import cn.itsource.ymcc.service.IUserAddressService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 收货地址 服务实现类
 * </p>
 *
 * @author Xiaopeng
 * @since 2024-11-16
 */
@Service
public class UserAddressServiceImpl extends ServiceImpl<UserAddressMapper, UserAddress> implements IUserAddressService {

}
