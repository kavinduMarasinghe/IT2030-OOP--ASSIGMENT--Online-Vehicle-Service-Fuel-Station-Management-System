package com.bookings;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RequestDetailsToConfirmServlet")
public class RequestDetailsToConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String bookingId = request.getParameter("id");
        
        List<Booking> bookingList = BookingDBUtil.getBookingDetailsByID(bookingId);
        Booking booking = bookingList.get(0);
        request.setAttribute("booking", booking);

        RequestDispatcher dispatcher = request.getRequestDispatcher("BookingConfirm.jsp");
        dispatcher.forward(request, response);
	}
}
