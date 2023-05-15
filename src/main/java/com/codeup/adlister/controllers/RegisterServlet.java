

package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        boolean inputHasErrors = false;
        String errorMessage = "";

        if (username.isEmpty() || email.isEmpty() || password.isEmpty() || passwordConfirmation.isEmpty()) {
            inputHasErrors = true;
            errorMessage = "Please fill out all fields.";
        }

        if (!password.equals(passwordConfirmation)) {
            inputHasErrors = true;
            errorMessage = "Passwords do not match.";
        }

        if (inputHasErrors) {
            request.setAttribute("username", username);
            request.setAttribute("email", email);
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }

        if (DaoFactory.getUsersDao().findByUsername(username) != null) {
            response.sendRedirect("/login");
            return;
        }
        System.out.println(password);
        User user = new User(username, email, Password.hash(password));

//        String hash = Password.hash(user.getPassword());
//        user.setPassword(hash);

        DaoFactory.getUsersDao().insert(user);

        response.sendRedirect("/login");
    }
}