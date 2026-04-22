package com.bookings;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BookingServlet")
public class BookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname = request.getParameter("firstName");
		String lastname = request.getParameter("lastName");
		String phone = request.getParameter("phone");
		String vehicleType = request.getParameter("vehicleType");
		String vehicleNumber = request.getParameter("vehicleNumber");
		String service = request.getParameter("service");
		String branch = request.getParameter("branch");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String comments = request.getParameter("comments");
		
		boolean isTrue;
		
		isTrue = BookingDBUtil.insertBooking(firstname, lastname, phone, vehicleType, vehicleNumber, service, branch, date, time, comments);
		
		if (isTrue == true) {
		    request.setAttribute("message", "Appointment successfully booked!");
		    request.setAttribute("status", "success");
		    
		    RequestDispatcher dis = request.getRequestDispatcher("BookNow.jsp");
		    dis.forward(request, response);
		} else {
		    request.setAttribute("message", "Failed to book appointment. Please try again.");
		    request.setAttribute("status", "error");
		    
		    RequestDispatcher dis2 = request.getRequestDispatcher("BookNow.jsp");
		    dis2.forward(request, response);
		}


			
	}

}
