package controller;

import domain.Cart;
import domain.Product;
import domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("")
public class ShoppingServlet extends HttpServlet {
    Cart cart = new Cart();
    List<Product> products = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        HttpSession session = req.getSession();
        req.setAttribute("products", products);
        req.setAttribute("cart", cart);
        req.getRequestDispatcher("welcome.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getParameter("prodId"));
        Product p = products.stream()
                .filter(x-> x.getId() == Integer.parseInt(req.getParameter("prodId")))
                .findFirst().get();
        cart.add(p);
        HttpSession session = req.getSession();
        session.setAttribute("cart", cart);
        doGet(req,resp);
    }

    @Override
    public void init() throws ServletException {
        products.add(new Product("Chocolate",4.0));
        products.add(new Product("Coat",60.0));
        products.add(new Product("Tomato",8.0));
        products.add(new Product("Shoes",55.0));
        products.add(new Product("Computer",990.0));
        products.add(new Product("iPhone",778.0));


    }
}
