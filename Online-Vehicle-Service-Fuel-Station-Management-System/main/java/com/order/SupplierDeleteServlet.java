package com.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SupplierDeleteServlet")
public class SupplierDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		boolean isSuccess = OrderDBUtil.deleteOrder(id);
		
		if (isSuccess == true) 
		    response.sendRedirect("OrderRead");
		else 
			response.getWriter().println("Update failed.");
    
	}

}
