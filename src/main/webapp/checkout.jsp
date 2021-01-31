<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="resources/js/checkout.js"></script>
</head>
<body>
<%@include file="shared/navbar.jsp" %>
<h1>Thank you for shopping with us. You total is: ${me.cart.totalCost}</h1>
<p>
    ${me.cart.products}
</p>
<form method="post" id="checkout-form">
    <label>
        Address should be: <input type="text" name="address"/>
    </label>
    <input type="submit" value="Place an Order">
</form>
</body>
</html>
