package cn.itsource.ymcc.service.impl;

import cn.itsource.ymcc.domain.Config;
import cn.itsource.ymcc.mapper.ConfigMapper;
import cn.itsource.ymcc.service.IConfigService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 参数配置表 服务实现类
 * </p>
 *
 * @author Xiaopeng
 * @since 2024-11-16
 */
@Service
public class ConfigServiceImpl extends ServiceImpl<ConfigMapper, Config> implements IConfigService {

}
