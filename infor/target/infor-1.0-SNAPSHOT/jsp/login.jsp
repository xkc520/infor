<%--
  Created by IntelliJ IDEA.
  User: 22138
  Date: 2022/8/24
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String error= (String) request.getAttribute("error");%>
<!DOCTYPE html>
<html lang="zh">
<style>
    * {
        margin: 0;
        padding: 0;
    }

    body {
        background-image: url("../imags/鹦鹉.jpg");
    }

    .box {
        overflow: hidden;
        width: 420px;
        height: 200px;
        margin: 200px auto;
        background-color: rgba(0,0,0,.3);
        border-radius: 20px;
        text-align: center;
    }

    .box p {
        color: #2185d0;
        font-size: 24px;
        font-weight: 700;
        margin: 10px auto;

    }

    .box a {
        margin-top: 0;
    }

    .box input {
        font-family: Lato, 'Helvetica Neue', Arial, Helvetica, sans-serif;
        margin: 0;
        outline: 0;
        line-height: 1.21428571em;
        padding: .67857143em 1em;
        font-size: 1em;
        background: #fff;
        border: 1px solid rgba(34, 36, 38, .15);
        color: rgba(0, 0, 0, .3);
        border-radius: .28571429rem;
        -webkit-box-shadow: 0 0 0 0 transparent inset;
        box-shadow: 0 0 0 0 transparent inset;
    }

    .box button {
        margin-top: 10px;
        display: block;
        font-size: 1.14285714rem;
        cursor: pointer;
        display: inline-block;
        min-height: 1em;
        outline: 0;
        border: none;
        background: #e0e1e2 none;
        color: rgba(0, 0, 0, .6);
        font-family: Lato, 'Helvetica Neue', Arial, Helvetica, sans-serif;
        margin: 0 .25em 0 0;
        padding: .78571429em 1.5em .78571429em;
        text-transform: none;
        text-shadow: none;
        font-weight: 700;
        line-height: 1em;
        font-style: normal;
        text-align: center;
        text-decoration: none;
        border-radius: .28571429rem;
    }

</style>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
<link  rel="stylesheet" href="../css/infor.css" >
</head>

<body>
    <form action="/infor/loginServlet" method="post">
        <div class="box">
            <p>登录</p>
            <div class="a">
                <input type="text" name="Username" id="1" value="xkc"><br>
                <input type="text" name="Password" id="2" value="1234"><br>
                <button class="ui fluid large blue submit button">确定</button>
            </div>
        </div>
    </form>
<%if (error!=null){%>
    <div class="errormessg" style="width: 200px ;height: 200px;margin: 0 auto;text-align: center">
        <p><%=error%></p>
        </div>
<%}%>
</body>

</html>
