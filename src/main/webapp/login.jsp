<%--
  Created by IntelliJ IDEA.
  User: asus-b
  Date: 1/29/2021
  Time: 8:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
    <style>
        #no-account{
            margin-top: 15px;
            margin-left: 5px;
        }
    </style>
</head>
<body>
<form method="post" action="login">
    <div>
        <label>User Name: <input type="text" name="userName"/></label>
    </div>
    <div>
        <label>Password: <input type="password" name="password"/></label>
    </div>
    <div>
        <label>Remember Me: <input type="checkbox" name="remember" value="yes"/></label>
    </div>
    <div>
        <input type="submit" name="submit" value="Submit">
    </div>
    <p style="color: red">${errMsg}</p>
</form>
<span id="no-account">Don't have an account yet? <a href="singUp">Sign up</a> </span>
</body>
</html>