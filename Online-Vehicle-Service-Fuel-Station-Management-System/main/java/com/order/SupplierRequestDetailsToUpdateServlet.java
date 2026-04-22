package com.order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/requestDetailsToUpdateServlet")
public class SupplierRequestDetailsToUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String orderId = request.getParameter("id");
        
        List<PurchaseOrder> OrderList = OrderDBUtil.getOrderDetailsByIDToUpdate(orderId);
        PurchaseOrder order = OrderList.get(0);
        request.setAttribute("order", order);

        RequestDispatcher dispatcher = request.getRequestDispatcher("SupplierUpdate.jsp");
        dispatcher.forward(request, response);
	}

}