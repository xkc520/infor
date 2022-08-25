<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="util.sqlsessionfactory" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="mapper.usermapper" %>
<%@ page import="pojo.people" %>
<%@ page import="java.util.List" %>
<%@ page import="pojo.admin" %><%--
  Created by IntelliJ IDEA.
  User: 22138
  Date: 2022/8/23
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    window.onload=function (){
        var add=document.querySelector(".button");
        add.addEventListener("click",function () {
        location.href="/infor/jsp/add.jsp";
    })
    }
</script>
<%
   List<people> users = (List<people>) request.getAttribute("users");
    HttpSession session1 = request.getSession();
    admin admin1 = (admin) session1.getAttribute("admin");
%>
<html lang="zh">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/infor.css">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        p{
            text-align: center;
        }
        body{background-image: url("../imags/鹦鹉.jpg")}

        .box{
            height: 300px;
            margin: 20px auto;
        }
        .box table{
        width: 100%;
        }
        p{
            float: left;
        }
        .quit{
            float: right;
        }
    </style>
</head>

<body>
<div class="nav" style="overflow: hidden">
    <p style="text-align: center;margin: 0 auto" ><%=admin1.getUsername()%>,欢迎您</p>
    <div class="quit"><a href="/infor/quitServlet">退出</a> </div>
</div>
<form action="/infor/selectone" style="text-align: center">查询学生信息<input  style="height: 30px;border-radius: 5px" value="输入学生姓名" name="selectusername"><button type="submit">查询</button></form>
<div class="box">
    <table border="1" cellspacing="0" align="center">
        <thead>
        <tr>
            <th>编号</th>
            <th>用户名</th>
            <th>密码</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <%
            for (int i=0;i<users.size();i++){
                people u1=users.get(i);
        %>
        <tr>
            <th><%=u1.getId()%></th>
            <th><%=u1.getUsername()%></th>
            <th><%=u1.getPassword()%></th>
            <th><a href="/infor/deleteServlet?id=<%=u1.getId()%>">删除</a></th>
        </tr>
        <%
            }
        %>
        </tbody>

    </table>
    <button class="button">增加用户</button>
</div>
</body>
</html>
