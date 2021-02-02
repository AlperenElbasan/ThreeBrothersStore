<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Mohammed ALDINI
  Date: 02/01/2021
  Time: 8:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
    <script src="<c:url value='resources/js/validation.js'/>" type="text/javascript"></script>
    <link href="<c:url value='resources/css/layout.css'/>" rel="stylesheet">
    <link href="<c:url value="resources/css/auth.css" />" rel="stylesheet">
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
            <p style="color: #ff0000">${errMsg}</p>
        </c:if>
        <span class="ml-2 mt-5">Don't have an account yet? <a href="singUp">Sign up</a> </span>
    </form>
</div>
</body>
</html>
