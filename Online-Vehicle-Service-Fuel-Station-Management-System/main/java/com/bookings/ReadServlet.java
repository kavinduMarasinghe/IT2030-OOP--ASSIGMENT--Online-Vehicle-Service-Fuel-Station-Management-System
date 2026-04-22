package com.bookings;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ReadServlet")
public class ReadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Load all bookings on page load
        List<Booking> bookingDetails = BookingDBUtil.getAllBookings();
        request.setAttribute("bookingDetails", bookingDetails);

        RequestDispatcher dis = request.getRequestDispatcher("BookingRead.jsp");
        dis.forward(request, response);
    }
}
