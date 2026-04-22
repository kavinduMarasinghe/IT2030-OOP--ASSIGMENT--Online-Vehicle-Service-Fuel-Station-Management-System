package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;

		
		isTrue = UserDBUtil.validate(userName, password);

		if (isTrue == true) {
			
			List<User> useDetails = UserDBUtil.getUser(userName);
			request.setAttribute("useDetails", useDetails);

			// Determine role based on the username
			String roleId = userName; 

			RequestDispatcher dis = null;

			// Check the role based on the username and redirect accordingly
			if (roleId.equals("CID001")) {
				dis = request.getRequestDispatcher("InventoryManagement.jsp"); // Redirect to Supplier Dashboard
			} else if (roleId.equals("CID002")) {
				dis = request.getRequestDispatcher("AdminDashboard.jsp"); // Redirect to Admin Dashboard
			} else if (roleId.equals("CID003")) {
				dis = request.getRequestDispatcher("FuelServlet"); // Redirect to Fuel Manager Dashboard
			} else if (roleId.equals("CID004")) {
				dis = request.getRequestDispatcher("MechanicDashboard.jsp"); // Redirect to Mechanic Dashboard
			} else if (roleId.equals("CID005")) {
				dis = request.getRequestDispatcher("dummy.jsp"); // Redirect to Staff Dashboard
			} else {
				// Handle unknown role or invalid username
				out.println("<script type='text/javascript'>");
				out.println("alert('Unknown user role or invalid username');");
				out.println("location='login.jsp';");
				out.println("</script>");
				return; // Stop further processing
			}

			// Forward the request to the corresponding dashboard
			dis.forward(request, response);
		} else {
			// If validation fails, show an error message and redirect back to the login page
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			out.println("<script type='text/javascript'>");
			out.println("window.onload = function() { openPopup(); };");
			out.println("</script>");
			rd.include(request, response);

		}
	}
}
