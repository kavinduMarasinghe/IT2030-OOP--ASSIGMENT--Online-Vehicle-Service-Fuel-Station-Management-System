package com.mechanic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MechanicDeleteServlet")
public class MechanicDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
        int id = Integer.parseInt(request.getParameter("id"));
		
		boolean isSuccess = MechanicDBUtil.deleteMechanicService(id);
		
		if (isSuccess == true) 
		    response.sendRedirect("MechanicRead.jsp");
		else 
			response.getWriter().println("Delete failed.");
    
	  }



}
	
	
