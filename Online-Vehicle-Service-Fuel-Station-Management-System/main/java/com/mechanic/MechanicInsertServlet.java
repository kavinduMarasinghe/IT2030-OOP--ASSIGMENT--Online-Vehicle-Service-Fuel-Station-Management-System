package com.mechanic;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MechanicInsertServlet")
public class MechanicInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String customerName = request.getParameter("customerName");
	    String vehicleInfo = request.getParameter("vehicleInfo");
	    String partNoteType = request.getParameter("PartNoteType");
	    String currentStatus = request.getParameter("currentStatus");
	    String delayReason = request.getParameter("delayReason");
	    String partsUsed = request.getParameter("partsUsed");
	    double timeSpent = Double.parseDouble(request.getParameter("timeSpent"));
	    String notes = request.getParameter("notes");

	    boolean isInserted = MechanicDBUtil.insertMechanicService(
	        customerName, vehicleInfo, partNoteType, currentStatus,
	        delayReason, partsUsed, timeSpent, notes
	    );

	    if (isInserted) {
	        response.sendRedirect("MechanicSuccess.jsp");
	    } else {
	        response.sendRedirect("MechanicUnsuccess.jsp");
	    }
	    
	   
	}
}
		
