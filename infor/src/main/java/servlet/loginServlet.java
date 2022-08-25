package servlet;

import mapper.usermapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import pojo.admin;
import pojo.people;
import service.adminiml;
import util.sqlsessionfactory;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
        String username = request.getParameter("Username");
        String password = request.getParameter("Password");
        adminiml admin=new adminiml();
    admin a = admin.select(username, password);
         HttpSession session = request.getSession();
         session.setAttribute("admin",a);
      if (a!= null) {
      request.getRequestDispatcher("/selectAllServlet").forward(request,response);
   } else {
   request.setAttribute("error","用户名或者密码错误请重试");
   request.getRequestDispatcher("/jsp/login.jsp").forward(request,response);
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    this.doGet(request, response);
  }
}
