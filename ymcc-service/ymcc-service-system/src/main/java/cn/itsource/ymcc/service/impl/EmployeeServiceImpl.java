package cn.itsource.ymcc.service.impl;

import cn.itsource.ymcc.domain.Employee;
import cn.itsource.ymcc.mapper.EmployeeMapper;
import cn.itsource.ymcc.service.IEmployeeService;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Xiaopeng
 * @since 2024-11-16
 */
@Service
public class EmployeeServiceImpl extends ServiceImpl<EmployeeMapper, Employee> implements IEmployeeService {

}
