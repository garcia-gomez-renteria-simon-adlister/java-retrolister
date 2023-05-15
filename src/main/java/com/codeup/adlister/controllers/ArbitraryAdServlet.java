

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

@WebServlet(name = "ArbitraryAdServlet", urlPatterns = "/ads/arbitraryad")
public class ArbitraryAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idString = request.getParameter("id");

        if (idString != null) {
            int arbitraryAdId = Integer.parseInt(idString);

            Ad arbitraryAd = DaoFactory.getAdsDao().findAdById(arbitraryAdId);
            User arbitraryUser = DaoFactory.getAdsDao().getAdOwner((int) arbitraryAd.getUserId());

            request.setAttribute("arbitraryAd", arbitraryAd);
            request.setAttribute("arbitraryUser", arbitraryUser);

            request.getRequestDispatcher("/WEB-INF/ads/arbitraryad.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int adId = Integer.parseInt(request.getParameter("id"));
        String newDetails = request.getParameter("description");


        String successPage = "/ads/arbitraryad.jsp;
        response.sendRedirect(successPage);
    }
}