package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "UpdateServlet", urlPatterns = "/ads/update")
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User user = (User) request.getSession().getAttribute("user");
        if (user == null) {
            response.sendRedirect("/login");
            return;
        }

        long id = Long.parseLong(request.getParameter("id"));

        Ad ad = DaoFactory.getAdsDao().findAdById((int) id);

        if (ad.getUserId() != user.getId()) {
            response.sendError(HttpServletResponse.SC_FORBIDDEN);
            return;
        }

        String title = request.getParameter("title");
        String description = request.getParameter("description");

        ad.setTitle(title);
        ad.setDescription(description);
        DaoFactory.getAdsDao().update(ad);

        request.setAttribute("ad", ad);
        request.setAttribute("successMessage", "The ad '" + ad.getTitle() + "' has been updated successfully.");

        request.getRequestDispatcher("/ads/update.jsp").forward(request, response);
    }
}
