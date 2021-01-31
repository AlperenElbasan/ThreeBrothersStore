<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <style><%@include file="resources/css/layout.css"%></style>
    <style>
        body {
            display: flex;
        }
        .auth-form {
            border: 2px solid var(--light);
            border-radius: 10px;
            background-color: white;
            display: flex;
            flex-direction: column;
            width: 300px;
            padding: 15px 20px;
            align-content: center;
        }

        input[type="submit"] {
            border: 1px solid var(--primary);
            border-radius: 8px;
            background-color: var(--background);
            color: var(--secondary);
            padding-top: 5px;
            padding-bottom: 5px;
        }

        .auth-form label {
            margin-bottom: 8px;
        }
        .auth-form input {
            float: right;
        }
    </style>
</head>
<body>
<div class="mx-auto my-auto">
    <form class="auth-form" method="post" action="login">
        <h1>Three Brothers Store</h1>
        <p class="primary-color">Please login to continue</p>
        <label>User Name: <input type="text" name="userName"/></label>
        <label>Password: <input type="password" name="password"/></label>
        <label>Remember Me: <input type="checkbox" name="remember" value="yes"/></label>
        <input type="submit" name="submit" value="Submit">
        <c:if test="${errMsg}">
            <p style="color: red">${errMsg}</p>
        </c:if>
        <span class="ml-2 mt-5">Don't have an account yet? <a href="singUp">Sign up</a> </span>
    </form>
</div>
</body>
</html>