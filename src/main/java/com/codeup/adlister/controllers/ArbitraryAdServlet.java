package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name="ArbitraryAdServelet", urlPatterns = "/ads/arbitraryad")
public class ArbitraryAdServlet extends HttpServlet {
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        int arbitraryAd = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("arbitraryAd", DaoFactory.getAdsDao().findAdById(arbitraryAd));
//arbitraryAd.getUseR() (a method in mysql that says : hey this ad is assigned to this user_id, can you go get that user?
        request.setAttribute("arbitraryAd", DaoFactory.getAdsDao().getAdOwner());

        request.getRequestDispatcher("/WEB-INF/ads/arbitraryad.jsp").forward(request, response);
    }
}
