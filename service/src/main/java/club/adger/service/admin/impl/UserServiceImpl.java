package club.adger.service.admin.impl;

import club.adger.dao.admin.UserDao;
import club.adger.entity.admin.User;
import club.adger.service.admin.UserService;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Auther: Adger
 * @Date: 2020/05/01/23:12
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
  @Autowired
  private UserDao userDao;

  /**
   * 判断账号密码
   * */
  @Override
  public JSONObject adminLogin(HttpServletRequest request) {
    JSONObject result = new JSONObject();
    String password  =  request.getParameter("password");
    String userName  =  request.getParameter("username");
    List<User> list = userDao.login(password,userName);
     if(list.size()==0){
       result.put("message","账号或密码错误");
       result.put("code","0");
       result.put("success",false);
     }else if(list.size()>1){
       result.put("message","数据异常");
       result.put("code","0");
       result.put("success",false);
     }else {
       result.put("message","登录成功");
       result.put("code","1");
       result.put("success",true);
     }
    return result;
  }

}
