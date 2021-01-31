<%@ page import="domain.Cart" %><%--
  Created by IntelliJ IDEA.
  User: asus-b
  Date: 1/29/2021
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    nav {
        display: flex;
        position: sticky;
        top: 0;
        right: 0;
        height: 50px;
        padding-right: 30px;
        padding-bottom: 5px;
        margin-bottom: 5px;
        border-bottom: 1px solid #c1bebe;
    }

    ul.menu-bar {
        display: block;
        margin-left: auto;
        text-decoration: none;
    }

    ul.menu-bar > li {
        display: inline;
        padding-left: 5px;
        padding-right: 5px;
        font-size: 1.2em;
    }

    a {
        text-decoration: none;
    }
</style>
<%

%>
<nav>
    <ul class="menu-bar">
        <li>
            <span id="cart-tag">Cart (${cart.productsSize})</span>
        </li>

        <li>
            <a href="checkout">Checkout</a>
        </li>

        <li>
            <c:if test="${user == null}">
                <a href="login">Login</a>
            </c:if>
            <c:if test="${user != null}">
                <a href="logout">Logout</a>
            </c:if>
        </li>
    </ul>

</nav>
