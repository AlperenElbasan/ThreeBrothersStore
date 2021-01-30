<%@ page import="domain.Cart" %><%--
  Created by IntelliJ IDEA.
  User: asus-b
  Date: 1/29/2021
  Time: 8:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Checkout</title>
    <style>
        footer{
            width: max-content;
            margin: auto;
        }
    </style>
</head>
<body>
<%@include file="shared/navbar.jsp" %>
 <h1>Thank you for shopping with us. You total is: ${total}</h1>
<footer>
    <form method="post">
        <label>Send to: <input type="text" name="address"/></label>
        <button>Place an Order</button>
    </form>

</footer>

</body>
</html>
