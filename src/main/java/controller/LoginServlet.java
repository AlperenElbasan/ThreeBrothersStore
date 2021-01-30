package controller;

import domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@WebServlet({"/login"})
public class LoginServlet extends HttpServlet {

    List<User> users = new ArrayList<User>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        String remember = req.getParameter("remember");

        HttpSession session = req.getSession();

        //instead of this we should ajax for the project to check the existance of user
        Optional<User> userObj = users.stream().filter(x->x.getUserName().equals(userName)
                &&x.getPassword().equals(password))
                .findAny();
        if (userObj.isPresent()){
            User user = userObj.get();
            session.setAttribute("user", userName);
            session.setAttribute("userObj", user);

            if ("yes".equals(remember)){
                Cookie c = new Cookie("user", userName);
                c.setMaxAge(30*24*60*60);
                resp.addCookie(c);
            } else {
                Cookie c = new Cookie("user", null);
                c.setMaxAge(0);
                resp.addCookie(c);
            }
            resp.sendRedirect("/shopping");
        }else{
            session.setAttribute("errMsg", "Username or password is invalid!");
            resp.sendRedirect("login");
        }
    }

    @Override
    public void init() throws ServletException {
        users.add(new User("Badis Saidani",
                "Badis","saidanii.badis@gmail.com","badis"));
    }
}
