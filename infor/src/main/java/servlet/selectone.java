package servlet;

import pojo.people;
import service.useriml;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/selectone")
public class selectone extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("selectusername");
        useriml useriml = new useriml();
        people selectone = useriml.selectone(username);
        request.setAttribute("one",selectone);
        request.getRequestDispatcher("/jsp/select.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
