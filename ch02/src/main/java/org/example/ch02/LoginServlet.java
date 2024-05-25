package org.example.ch02;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "login", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("username");
        String password = req.getParameter("password");
        System.out.println("username:" + name);
        System.out.println("passwrod:" + password);
        if (name.equals("abc") && password.equals("123")){
            resp.sendRedirect("success.html");
        }else {
            req.getRequestDispatcher("login.html").forward(req, resp);
        }
    }

}
