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
@WebServlet(name = "DeleteServlet", urlPatterns = "/ads/delete")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Check if the user is logged in
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

        DaoFactory.getAdsDao().delete(ad);

        String successMessage = "The ad '" + ad.getTitle() + "' has been deleted successfully.";
        request.getSession().setAttribute("successMessage", successMessage);
        response.sendRedirect("/ads");
    }
}