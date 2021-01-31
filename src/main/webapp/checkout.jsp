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
    <title>Three Brothers - Checkout</title>
    <style><%@include file="/resources/css/products.css"%></style>
    <style><%@include file="/resources/css/layout.css"%></style>
    <script src="resources/js/checkout.js"></script>
</head>
<body>
<header>
    <%@include file="navbar.jsp" %>
</header>

<section class="mx-auto">
    <article>
        <div class="mx-auto">
            <p>Your cart contains these items</p>
        </div>
        <div class="row">
            <c:forEach items="${cart.products}" var="product">
                <div class="product col-3">
                    <p class='detail'>${product.name}</p>
                    <p class='price'>$${product.price}</p>
                </div>
            </c:forEach>
        </div>
    </article>
    <article>
        <p>Thank you for shopping with us. You total is: $${cart.totalCost}</p>
        <form method="post" class="mt-3" id="checkout-form">
            <label>
                Send these items to this address: <input type="text" name="address"/>
            </label>
            <input type="submit" value="Place an Order">
        </form>
    </article>
</section>
</body>
</html>
