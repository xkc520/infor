package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.people;

import java.util.List;

public interface usermapper {
    List<people> selectall();
    people select(@Param("username") String username, @Param("password") String password);
    people selectone(String username);
    void  add(@Param("username") String username, @Param("password") String password);
    void  delete(String id);
}
