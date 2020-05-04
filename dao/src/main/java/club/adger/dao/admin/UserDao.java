package club.adger.dao.admin;

import club.adger.entity.admin.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 *
 * @Auther: Adger
 * @Date: 2020/05/01/23:07
 */
public interface UserDao {
  /**
   * 后台登录的方法 找用户名跟密码
   * */
  @Select("select * from admin_user where  password=#{password} and username=#{userName} ")
  List<User> login(@Param("password") String password, @Param("userName") String userName);
}
