package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name="ArbitraryAdServelet", urlPatterns = "/ads/index")
public class ArbitraryAdServlet extends HttpServlet {
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        Long arbitraryAd = Long.parseLong(request.getParameter("id"));
        Ad arbitAd = DaoFactory.getAdsDao().findAdById(arbitraryAd);
        request.setAttribute("arbitraryAd", DaoFactory.getAdsDao().findAdById(arbitraryAd));
        request.getRequestDispatcher("/WEB-INF/ads/arbitrayad.jsp").forward(req, response);


    }
}
