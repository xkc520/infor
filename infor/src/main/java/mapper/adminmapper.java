package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.admin;
import pojo.people;

public interface adminmapper {
   admin select(@Param("username") String username, @Param("password") String password);
}
