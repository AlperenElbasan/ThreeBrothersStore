<%@ page import="domain.Cart" %><%--
  Created by IntelliJ IDEA.
  User: asus-b
  Date: 1/29/2021
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    nav{
        float: right;
        width: 300px;
        height: 50px;
        padding-right: 30px;
    }
    ul.enu-bar{
        text-decoration: none;


    }
    ul.menu-bar > li{
        display: inline;
        padding: 20px;
    }
</style>
<%

%>
<nav>
    <ul class="menu-bar">
        <%
            Cart cart = (Cart) request.getSession().getAttribute("cart");
            int count = (cart == null)?0:cart.getProducts().size();

            out.print("<li><span id=\"cart-tag\">cart("+count+")</span>\n" +
                    "            <a href=\"checkout\">Checkout</a> </li>");
        %>

        <%
            if (request.getSession().getAttribute("user")==null)
                out.print("<li><a href=\"login\">Login</a></li>");
            else
                out.print("<li><a href=\"logout\">Logout</a></li>");
        %>

    </ul>

</nav>
