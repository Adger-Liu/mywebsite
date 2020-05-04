package club.adger.utils;

import com.alibaba.fastjson.JSONObject;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 *
 * @Auther: Adger
 * @Date: 2020/05/01/23:52
 */
public class AdminLoginInterceptor implements HandlerInterceptor {

  /**
   * 预处理 Controller方法执行前
   * return true 放行，执行下一个拦截器，如果没有执行Controller的方法
   * */
  @Override
  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
    String requestURI = request.getRequestURI();
    System.out.println("链接" + requestURI + "进入拦截器！");
    String header = request.getHeader("X-Requested-With");
    //判断是否是ajax请求
    if("XMLHttpRequest".equals(header)){
      //表示是普通链接跳转，直接重定向到登录页面
      return true;
    }
    response.sendRedirect(request.getContextPath()+"/WEB-INF/admin/admin_index.jsp");
    return false;
  }
}
