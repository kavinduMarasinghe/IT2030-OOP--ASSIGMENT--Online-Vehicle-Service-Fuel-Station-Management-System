package com.bookings;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ConfirmServlet")
public class ConfirmServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
		String phone = request.getParameter("phone");
		String vehiType = request.getParameter("vehiType");
		String vehiNum = request.getParameter("vehiNum");
		String service = request.getParameter("service");
		String branch = request.getParameter("branch");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String comments = request.getParameter("comments");
        
        boolean success = BookingDBUtil.confirmBooking(id, fname, lname, phone, vehiType, vehiNum, service, branch, date, time, comments);

        if (success) {
            response.sendRedirect("ReadConfirmedAppointmentsServlet");
        } else {
            response.getWriter().println("Update failed.");
        }
	}

}
