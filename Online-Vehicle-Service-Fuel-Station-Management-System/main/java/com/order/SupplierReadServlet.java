package com.order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ReadServlet
 */

@WebServlet("/OrderRead")
public class SupplierReadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Load all bookings on page load
        List<PurchaseOrder> OrderDetails = OrderDBUtil.getAllOrders();
        request.setAttribute("OrderDetails", OrderDetails);

        RequestDispatcher dis = request.getRequestDispatcher("SupplierRead.jsp");
        dis.forward(request, response);
    }
}
