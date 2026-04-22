package com.order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateOrder")
public class SupplierUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {

    	String idStr = request.getParameter("id");
        int id = Integer.parseInt(idStr);
        String supplier_name = request.getParameter("supplier_name");
        String product_name = request.getParameter("product_name");
        String quantityStr = request.getParameter("quantity");
        int quantity = Integer.parseInt(quantityStr);
		String expected_date = request.getParameter("expected_date");
		String status = request.getParameter("status");
	
        
        boolean success = OrderDBUtil.updateOrder(id, supplier_name, product_name, quantity, expected_date, status);

        if (success) {
            response.sendRedirect("OrderRead");
        } else {
            response.getWriter().println("Update failed.");
        }
    }
}
