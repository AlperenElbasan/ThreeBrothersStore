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
</head>
<body>

<%@include file="shared/navbar.jsp" %>

<section id="main">
    <c:if test="${user != null}">
        <h1 id="welcome">Welcome ${user}!</h1>
    </c:if>
    <c:if test="${user == null}">
        <h1 id="welcome">Welcome Guest!</h1>
    </c:if>
    <h1>Products</h1>

    <c:forEach items="${products}" var="p">
        <div class='product'>
            <form method='post'>
                <p class='detail'>${p.name}</p>
                <p class='price'>${p.price}</p>
                <input type='hidden' name='prodId' value="${p.id}"/>
                <input type='submit' value='Add to Cart' class='detail' id='add'/>
            </form>
        </div>
    </c:forEach>
</section>

</body>

</html>
