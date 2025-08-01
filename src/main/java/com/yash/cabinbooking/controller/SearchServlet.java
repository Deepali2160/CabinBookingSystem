package com.yash.cabinbooking.controller;

import com.yash.cabinbooking.dao.CabinDao;
import com.yash.cabinbooking.daoimpl.CabinDaoImpl;
import com.yash.cabinbooking.model.Cabin;
import com.yash.cabinbooking.util.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet("/searchCabin")
public class SearchServlet extends HttpServlet {
    private CabinDao cabinDao;

    @Override
    public void init() throws ServletException {
        Connection connection = DBConnection.getConnection();
        CabinDao cabinDao = new CabinDaoImpl(); // ✅ Correct

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String keyword = request.getParameter("keyword");

        List<Cabin> searchResults = cabinDao.searchCabins(keyword);
        request.setAttribute("cabins", searchResults);
        request.setAttribute("keyword", keyword);

        request.getRequestDispatcher("search.jsp").forward(request, response);
    }
}
