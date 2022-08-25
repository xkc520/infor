<%--
  Created by IntelliJ IDEA.
  User: 22138
  Date: 2022/8/24
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        .box {
            width: 300px;
            height: 300px;
            background-color: pink;
            margin: 200px auto;
            border-radius: 20px;
            text-align: center;
            line-height: 50px;
        }

        .box h3 {
            text-align: center;
            margin-bottom: 30px;
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
    </style>
</head>

<body>

<div class="box">
    <h3>添加用户</h3>
    <form action="/infor/addServlet" method="post">
        用户名<input type="text" name="Username" value=""><br>
        密码<input type="password" name="Password" value=""><br>
       <button type="submit" style="display: block;width: 40px;height: 40px;background-color: #2185d0;margin: 30px auto;color: white">添加</button>
    </form>
</div>
</body>

</html>
