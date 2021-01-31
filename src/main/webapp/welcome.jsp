<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.List" %>
<%@ page import="domain.Product" %><%--
  Created by IntelliJ IDEA.
  User: asus-b
  Date: 1/29/2021
  Time: 8:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
    <title>Three Brothers - Our Products</title>
    <style><%@include file="/resources/css/welcome.css"%></style>
    <style><%@include file="/resources/css/layout.css"%></style>
    <style><%@include file="/resources/css/products.css"%></style>
</head>
<body>

<%@include file="navbar.jsp" %>

<section class="ml-3" style="display:block;">
    <h1 class="ml-3">Our Products</h1>

    <div class="row">
        <c:forEach items="${products}" var="product">
            <div class="product col-2">
                <form method='post'>
                    <p class='detail'>${product.name}</p>
                    <p class='price'>$${product.price}</p>
                    <input type='hidden' name='prodId' value="${product.id}"/>
                    <input type='submit' value='Add to Cart' class='detail' id='add'/>
                </form>
            </div>
        </c:forEach>
    </div>
</section>

</body>

</html>
