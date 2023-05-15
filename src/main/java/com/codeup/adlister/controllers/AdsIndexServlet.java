package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    //this complex getter checks if a user is logged in, and proves extra assistance to the search function
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        String searchQuery = request.getParameter("search");
        List<Ad> ads;
        if (searchQuery != null && !searchQuery.isEmpty()) {
            ads = filterAdsBySearchQuery(searchQuery);
        } else {
            ads = DaoFactory.getAdsDao().all();
        }
        request.setAttribute("ads", ads);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
//    this code is the search feature tht will search ads upper to lower and find ads that have matching names
    private List<Ad> filterAdsBySearchQuery(String searchQuery) {
        List<Ad> allAds = DaoFactory.getAdsDao().all();
        List<Ad> filteredAds = new ArrayList<>();
        for (Ad ad : allAds) {
            if (ad.getTitle().toLowerCase().contains(searchQuery.toLowerCase()) ||
                    ad.getDescription().toLowerCase().contains(searchQuery.toLowerCase())) {
                filteredAds.add(ad);
            }
        }
        return filteredAds;
    }
}
