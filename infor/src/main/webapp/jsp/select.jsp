<%@ page import="pojo.people" %><%--
  Created by IntelliJ IDEA.
  User: 22138
  Date: 2022/8/25
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% people p1= (people) request.getAttribute("one");%>
<html>
<head>
    <title>查询学习信息</title>
    <style >
        table{
            width: 100%;

        }
    </style>
</head>
<body>
<%if(p1!=null){%>
<table border="1" cellspacing="0" align="center">
    <thead>
    <tr>
        <td>id</td>
        <td>用户名</td>
        <td>密码</td>
    </tr>

    </thead>
    <tbody>
    <tr>
        <td><%=p1.getId()%></td>
        <td><%=p1.getUsername()%></td>
        <td><%=p1.getPassword()%></td>
    </tr>
    </tbody>
</table>
<%}
    else {%>
<h2 style="text-align: center">您输入的信息有误,请重试</h2>
<%}%>
<div class="mean" style="text-align: center"><a href="/infor/selectAllServlet">返回首页</a></div>

</body>
</html>
