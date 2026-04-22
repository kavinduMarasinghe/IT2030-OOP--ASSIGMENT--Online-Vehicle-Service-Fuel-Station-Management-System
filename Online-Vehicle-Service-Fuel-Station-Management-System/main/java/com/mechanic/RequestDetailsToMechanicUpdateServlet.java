package com.mechanic;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RequestDetailsToMechanicUpdateServlet")
public class RequestDetailsToMechanicUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		    String mechanicListID = request.getParameter("id");
	        
	        List<MechanicService> mechanicListSet = MechanicDBUtil.getMechanicServiceByIDToUpdate(mechanicListID);
	        MechanicService mechanicList = mechanicListSet.get(0);
	        request.setAttribute("mechanicList", mechanicList);

	        RequestDispatcher dispatcher = request.getRequestDispatcher("MechanicUpdate.jsp");
	        dispatcher.forward(request, response);
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
}
	


