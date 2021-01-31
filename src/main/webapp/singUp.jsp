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
    <title>Three Brothers Store - Sign Up</title>
    <style>
        <%@include file="resources/css/layout.css" %>
    </style>
    <style>
        <%@include file="resources/css/auth.css" %>
    </style>
</head>
<body>
<div class="mx-auto my-auto">
    <form class="auth-form" method="post" action="singUp">
        <h1>Three Brothers Store</h1>
        <p class="primary-color">Please sign up to continue</p>
        <label>Full Name: <input type="text" name="fullName"/></label>
        <label>User Name: <input type="text" name="userName"/></label>
        <label>Email: <input type="email" name="email"/></label>
        <label>Password: <input type="password" name="password"/></label>
        <input type="submit" name="submit" value="Submit">
        <p>You are already a customer? <a href="login">Login</a></p>
    </form>
</div>
</body>
</html>
