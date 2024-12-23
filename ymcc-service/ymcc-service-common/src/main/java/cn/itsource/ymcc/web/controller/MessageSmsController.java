package cn.itsource.ymcc.web.controller;

import cn.itsource.ymcc.service.IMessageSmsService;
import cn.itsource.ymcc.domain.MessageSms;
import cn.itsource.ymcc.query.MessageSmsQuery;
import cn.itsource.ymcc.result.JSONResult;
import cn.itsource.ymcc.result.PageList;
import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/messageSms")
public class MessageSmsController {

    @Autowired
    public IMessageSmsService messageSmsService;

    /**
    * 保存和修改公用的
    */
    @RequestMapping(value="/save",method= RequestMethod.POST)
    public JSONResult saveOrUpdate(@RequestBody MessageSms messageSms){
        if(messageSms.getId()!=null){
            messageSmsService.updateById(messageSms);
        }else{
            messageSmsService.insert(messageSms);
        }
        return JSONResult.success();
    }

    /**
    * 删除对象
    */
    @RequestMapping(value="/{id}",method=RequestMethod.DELETE)
    public JSONResult delete(@PathVariable("id") Long id){
        messageSmsService.deleteById(id);
        return JSONResult.success();
    }

    /**
   * 获取对象
   */
    @RequestMapping(value = "/{id}",method = RequestMethod.GET)
    public JSONResult get(@PathVariable("id")Long id){
        return JSONResult.success(messageSmsService.selectById(id));
    }


    /**
    * 查询所有对象
    */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public JSONResult list(){
        return JSONResult.success(messageSmsService.selectList(null));
    }


    /**
    * 带条件分页查询数据
    */
    @RequestMapping(value = "/pagelist",method = RequestMethod.POST)
    public JSONResult page(@RequestBody MessageSmsQuery query){
        Page<MessageSms> page = new Page<MessageSms>(query.getPage(),query.getRows());
        page = messageSmsService.selectPage(page);
        return JSONResult.success(new PageList<MessageSms>(page.getTotal(),page.getRecords()));
    }
}
