package com.fuel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/FuelServlet")
public class FuelServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private FuelDAO fuelDAO;

    @Override
    public void init() throws ServletException {
        fuelDAO = new FuelDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) action = "list";

        try {
            switch (action) {
                case "insert":
                    insertFuel(request, response);
                    break;
                case "update":
                    updateFuel(request, response);
                    break;
                default:
                    doGet(request, response);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new ServletException("POST operation failed", ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");
        if (action == null) action = "list";

        try {
            switch (action) {
                case "new":
                    showNewForm(request, response);
                    break;
                case "edit":
                    showEditForm(request, response);
                    break;
                case "delete":
                    deleteFuel(request, response);
                    break;
                case "public":
                    listFuelPublic(request, response);
                    break;
                case "list":
                default:
                    listFuel(request, response);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            throw new ServletException("GET operation failed", ex);
        }
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("fuel-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            Fuel fuel = fuelDAO.getFuel(id);
            request.setAttribute("fuel", fuel);
            RequestDispatcher dispatcher = request.getRequestDispatcher("fuel-form.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            System.out.println("⚠️ Failed to load fuel for editing.");
            response.sendRedirect("FuelServlet?action=list");
        }
    }

    private void insertFuel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fuelType = request.getParameter("fuelType");
        double quantity = Double.parseDouble(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));

        Fuel newFuel = new Fuel(fuelType, quantity, price);
        fuelDAO.insertFuel(newFuel);

        System.out.println("✅ Inserted fuel: " + fuelType);
        request.setAttribute("message", "Fuel added successfully!");
        listFuel(request, response);
    }

    private void updateFuel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String fuelType = request.getParameter("fuelType");
        double quantity = Double.parseDouble(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));

        Fuel fuel = new Fuel(id, fuelType, quantity, price);
        boolean success = fuelDAO.updateFuel(fuel);

        if (success) {
            System.out.println("✅ Updated fuel ID: " + id);
            request.setAttribute("message", "Fuel updated successfully!");
        } else {
            System.out.println("⚠️ Update failed for ID: " + id);
            request.setAttribute("message", "Update failed. Please try again.");
        }

        listFuel(request, response);
    }

    private void deleteFuel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            boolean deleted = fuelDAO.deleteFuel(id);

            if (deleted) {
                System.out.println("🗑️ Deleted fuel ID: " + id);
                request.setAttribute("message", "Fuel deleted successfully.");
            } else {
                System.out.println("⚠️ Failed to delete fuel ID: " + id);
                request.setAttribute("message", "Delete failed. Fuel ID not found.");
            }

            listFuel(request, response);

        } catch (NumberFormatException e) {
            System.out.println("⚠️ Invalid ID for delete.");
            response.sendRedirect("FuelServlet?action=list");
        }
    }

    private void listFuel(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Fuel> fuelList = fuelDAO.getAllFuels();
        request.setAttribute("fuelList", fuelList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("fuel-list.jsp");
        dispatcher.forward(request, response);
    }

    private void listFuelPublic(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Fuel> fuelList = fuelDAO.getAllFuels();
        request.setAttribute("fuelList", fuelList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewProducts.jsp");
        dispatcher.forward(request, response);
    }
}
 