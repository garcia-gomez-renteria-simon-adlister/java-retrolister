package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            // add a return statement to exit out of the entire method.
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User loggedInUser = (User) request.getSession().getAttribute("user");

        // Check if title is provided, display error message if not
        String title = request.getParameter("title");
        if (title == null || title.trim().isEmpty()) {
            request.setAttribute("titleError", "Please provide a title for your ad");
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
            return;
        }

        // Check if description is provided, display error message if not
        String description = request.getParameter("description");
        if (description == null || description.trim().isEmpty()) {
            request.setAttribute("error", "Please provide a description for your ad");
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp").forward(request, response);
            return;
        }

        Ad ad = new Ad(
                loggedInUser.getId(),
                title,
                description
        );
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}
