package club.adger.service.admin;

import club.adger.entity.admin.User;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.http.HttpServletRequest;

/**
 * Created with IntelliJ IDEA.
 *
 * @Auther: Adger
 * @Date: 2020/05/01/23:11
 */
public interface UserService {

  /**
   * 判断用户是否存在 不存在 账号密码错误，存在就进行下一个方法
   * */
  JSONObject adminLogin(HttpServletRequest user);
}
