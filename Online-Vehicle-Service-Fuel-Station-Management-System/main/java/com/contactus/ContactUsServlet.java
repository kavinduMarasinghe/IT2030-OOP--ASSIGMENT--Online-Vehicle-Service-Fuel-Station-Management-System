package com.contactus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String message = request.getParameter("message");

	      
	        boolean isSuccess = ContactUsDBUtil.insertContactUs(name, email, message);

	        if (isSuccess) {
	            request.setAttribute("success", "Your message has been sent successfully.");
	        } else {
	            request.setAttribute("error", "Failed to send your message. Please try again.");
	        }

	        RequestDispatcher dispatcher = request.getRequestDispatcher("ContactUs.jsp");
	        dispatcher.forward(request, response);
	    }

}
