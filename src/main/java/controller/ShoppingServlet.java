package controller;

import domain.Cart;
import domain.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@WebServlet(urlPatterns = {"/", "/shopping"})
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
        Optional<Product> optionalProduct = products.stream()
                .filter(x -> x.getId().equals(req.getParameter("prodId")))
                .findFirst();

        if (optionalProduct.isPresent()) {
            cart.addProduct(optionalProduct.get());
            HttpSession session = req.getSession();
            session.setAttribute("cart", cart);
            doGet(req, resp);
        }
    }

    @Override
    public void init() throws ServletException {
        products.add(new Product("Chocolate", 4.0));
        products.add(new Product("Coat", 60.0));
        products.add(new Product("Tomato", 8.0));
        products.add(new Product("Shoes", 55.0));
        products.add(new Product("Computer", 990.0));
        products.add(new Product("iPhone", 778.0));


    }
}
