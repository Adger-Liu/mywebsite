package club.adger.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created with IntelliJ IDEA.
 *
 * @Auther: Adger
 * @Date: 2020/05/03/23:35
 */
@Controller
@RequestMapping("/user")
public class AdminUserController {

  @RequestMapping("/userManage")
  public String user(){
    System.out.println("进入了用户的执行方法");
    return "admin/tables";
  }
}
