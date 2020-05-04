package club.adger.controller.admin;

import club.adger.service.admin.UserService;
import club.adger.utils.CpachaUtil;
import com.alibaba.fastjson.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * Created with IntelliJ IDEA.
 *
 * @Auther: Adger
 * @Date: 2020/04/29/19:47
 */
@Controller
@RequestMapping("/login")
public class AdminLoginController {

  @Autowired
  private UserService userService;

  /**
   * 为了前台调用跳转
   * */
  @RequestMapping(value = "/home")
  public String home (){
    return "admin/admin_index";
  }

  /**
   * 验证码的登录判断 ajax请求
   * */
  @RequestMapping(value = "/adminLogin")
  @ResponseBody
  public JSONObject login(HttpServletRequest request){
   // 拿到验证码
   String loginCpacha = (String) request.getSession().getAttribute("loginCpacha");
   JSONObject result = new JSONObject();
   String sCpacha = request.getParameter("cpacha");
   if(sCpacha==null){
     sCpacha = "";
   }
   // 验证码判断
   if(sCpacha.toUpperCase().equals(loginCpacha.toUpperCase())){
      result =  userService.adminLogin(request);
      return result;
   }else {
     result.put("message","验证码错误");
     result.put("success",false);
     return result;
   }
  }

  /**
   * 本后台系统所有的验证码均采用此验证码
   * @param vcodeLen
   * @param width
   * @param height
   * @param cpachaType:用来区别验证码的类型，传入字符串
   */
  @RequestMapping(value="/get_cpacha",method= RequestMethod.GET)
  public void generateCpacha(
    @RequestParam(name="vl",required=false,defaultValue="4") Integer vcodeLen,
    @RequestParam(name="w",required=false,defaultValue="100") Integer width,
    @RequestParam(name="h",required=false,defaultValue="30") Integer height,
    @RequestParam(name="type",required=true,defaultValue="loginCpacha") String cpachaType,
    HttpServletRequest request,
    HttpServletResponse response){
    CpachaUtil cpachaUtil = new CpachaUtil(vcodeLen, width, height);
    String generatorVCode = cpachaUtil.generatorVCode();
    request.getSession().setAttribute(cpachaType, generatorVCode);
    BufferedImage generatorRotateVCodeImage = cpachaUtil.generatorRotateVCodeImage(generatorVCode, true);
    try {
      ImageIO.write(generatorRotateVCodeImage, "gif", response.getOutputStream());
    } catch (IOException e) {
      e.printStackTrace();
    }
  }
}
