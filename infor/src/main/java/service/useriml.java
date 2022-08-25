package service;

import mapper.usermapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import pojo.people;
import util.sqlsessionfactory;

import java.awt.desktop.QuitEvent;
import java.util.List;

public class useriml {
    SqlSessionFactory sqlSessionFactory = sqlsessionfactory.getSqlSessionFactory();

  public List<people> selectall(){
    SqlSession sqlSession = sqlSessionFactory.openSession(true);
    usermapper  usermapper = sqlSession.getMapper(usermapper.class);
    List<people> users = usermapper.selectall();
    sqlSession.close();
    return  users;
}
    public   void  add(String name,String password){
        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        usermapper  usermapper = sqlSession.getMapper(usermapper.class);
        usermapper.add(name,password);
        sqlSession.close();
    }
    public  void  delete(String id){
        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        usermapper  usermapper = sqlSession.getMapper(usermapper.class);
        usermapper.delete(id);
        sqlSession.close();
    }
public  people selectone(String username){
    SqlSession sqlSession = sqlSessionFactory.openSession(true);
    usermapper  usermapper = sqlSession.getMapper(usermapper.class);
    people selectone = usermapper.selectone(username);
    sqlSession.close();
    return selectone;
}
}
