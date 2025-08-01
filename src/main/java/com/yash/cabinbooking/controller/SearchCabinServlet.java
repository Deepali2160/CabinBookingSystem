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

@WebServlet("/search")
public class SearchCabinServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String location = request.getParameter("location");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");
        int adults = Integer.parseInt(request.getParameter("adults"));
        int children = Integer.parseInt(request.getParameter("children"));

        try (Connection conn = DBConnection.getConnection()) {
            CabinDao cabinDao = new CabinDaoImpl();
            List<Cabin> cabins = cabinDao.searchCabins(location, startDate, endDate, adults, children);

            request.setAttribute("cabins", cabins);
            request.getRequestDispatcher("searchResults.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Error searching cabins.");
            request.getRequestDispatcher("search.jsp").forward(request, response);
        }
    }
}
