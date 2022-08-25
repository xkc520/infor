package service;

import mapper.adminmapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import pojo.admin;
import util.sqlsessionfactory;

public class adminiml {
    SqlSessionFactory sqlSessionFactory = sqlsessionfactory.getSqlSessionFactory();
    public admin select(String username, String password){
        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        adminmapper mapper = sqlSession.getMapper(adminmapper.class);
        admin admin1 = mapper.select(username, password);
        sqlSession.close();
        return admin1;
    }

}
