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
</head>
<body>
<form method="post" action="singUp">
    <div>
        <label>Full Name: <input type="text" name="fullName"/></label>
    </div>
    <div>
        <label>User Name: <input type="text" name="userName"/></label>
    </div>
    <div>
        <label>Email: <input type="email" name="email"/></label>
    </div>
    <div>
        <label>Password: <input type="password" name="password"/></label>
    </div>
    <div>
        <input type="submit" name="submit" value="Submit">
    </div>
    <p>You are already a customer? <a href="login">Login</a></p>
</form>

</body>
</html>
