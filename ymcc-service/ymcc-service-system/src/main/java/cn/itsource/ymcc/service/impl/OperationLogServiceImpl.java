package cn.itsource.ymcc.service.impl;

import cn.itsource.ymcc.domain.OperationLog;
import cn.itsource.ymcc.mapper.OperationLogMapper;
import cn.itsource.ymcc.service.IOperationLogService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 操作日志记录 服务实现类
 * </p>
 *
 * @author Xiaopeng
 * @since 2024-11-16
 */
@Service
public class OperationLogServiceImpl extends ServiceImpl<OperationLogMapper, OperationLog> implements IOperationLogService {

}
