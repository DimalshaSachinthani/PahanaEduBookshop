package main.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import dao.UserDAO;
import dao.impl.UserDAOImpl;
import model.User;

import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        user.setUserName(request.getParameter("username"));
        user.setPassword(request.getParameter("password"));
        user.setEmail(request.getParameter("email"));
        user.setPhoneNum(request.getParameter("phoneNum"));
        user.setRole(request.getParameter("role"));

        UserDAO userDAO = new UserDAOImpl();
        boolean success = userDAO.registerWithValidation(user);

        if (success) {
            response.sendRedirect("login.jsp?success=1");
        } else {
            request.setAttribute("error", "Registration failed. Check your inputs.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}
