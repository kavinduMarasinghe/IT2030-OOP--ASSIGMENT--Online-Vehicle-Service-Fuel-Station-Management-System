package com.mechanic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MechanicUpdateServlet")
public class MechanicUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		int serviceId = Integer.parseInt(request.getParameter("serviceId"));
	    String customerName = request.getParameter("customerName");
	    String vehicleInfo = request.getParameter("vehicleInfo");
	    String partNoteType = request.getParameter("partNoteType");
	    String currentStatus = request.getParameter("currentStatus");
	    String delayReason = request.getParameter("delayReason");
	    String partsUsed = request.getParameter("partsUsed");
	    double timeSpent = Double.parseDouble(request.getParameter("timeSpent"));
	    String notes = request.getParameter("notes");

	    boolean success = MechanicDBUtil.updateMechanicService(
	        serviceId, customerName, vehicleInfo, partNoteType,
	        currentStatus, delayReason, partsUsed, timeSpent, notes
	    );

	    if (success) {
	        response.sendRedirect("MechanicReadServlet");
	    } else {
	        response.getWriter().println("Update failed.");
	    }
	}
}


