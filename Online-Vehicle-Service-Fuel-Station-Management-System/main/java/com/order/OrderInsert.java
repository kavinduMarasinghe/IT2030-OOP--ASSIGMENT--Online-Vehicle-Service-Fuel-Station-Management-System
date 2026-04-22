package com.order;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/insertOrder")
public class OrderInsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String  supplier_name = request.getParameter("supplier_name");
        String product_name = request.getParameter("product_name");
        String quantityStr = request.getParameter("quantity");
        int quantity = Integer.parseInt(quantityStr);
        String expected_date = request.getParameter("expected_date");
        String status = request.getParameter("status");


        boolean isTrue ;
        
        isTrue = OrderDBUtil.insertOrder(supplier_name, product_name,quantity,expected_date, status);

        if (isTrue == true) {
            RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("Failed.jsp");
            dis2.forward(request, response);
        }
    }
}
