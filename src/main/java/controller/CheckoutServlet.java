package controller;

import domain.Cart;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspWriter;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("user")==null){
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }else{
            Cart cart = (Cart)req.getSession().getAttribute("cart");
            Double total = (cart==null)?0.0:cart.total();

            req.setAttribute("total",total);
            req.getRequestDispatcher("checkout.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        String address = req.getParameter("address");
        out.print("<h1>Thank you for your purchase!</h1>");
        out.println("<p>The package will be shipped in few days to: "+address);
    }
}
