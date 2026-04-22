<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.fuel.Fuel" %>
<%
    List<Fuel> fuelList = (List<Fuel>) request.getAttribute("fuelList");
    String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Fuel Products</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        table { border-collapse: collapse; width: 80%; margin: 20px auto; }
        th, td { padding: 10px; border: 1px solid #ccc; text-align: center; }
        th { background-color: darkorange; color: white; }
        header, nav, footer { text-align: center; margin: 20px 0; }
    </style>
</head>
<body>

<header>
    <h1>Available Fuel Products</h1>
    <p>View all fuel types with their current details</p>
</header>

<nav>
    <a href="FuelServlet?action=public">Home</a>
    <a href="about.jsp">About Us</a>
    
    <a href="login.jsp">Logout</a>
</nav>

<div class="content" style="text-align:center;">
    <h2>Fuel Inventory</h2>

    <%
        if (fuelList != null && !fuelList.isEmpty()) {
    %>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Fuel Type</th>
                    <th>Quantity (Litres)</th>
                    <th>Price (Per Litre)</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Fuel fuel : fuelList) {
                %>
                <tr>
                    <td><%= fuel.getId() %></td>
                    <td><%= fuel.getFuelType() %></td>
                    <td><%= fuel.getQuantity() %></td>
                    <td>$<%= fuel.getPrice() %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    <%
        } else {
    %>
        <p>No fuel products available at the moment.</p>
    <%
        }
    %>
</div>

<footer>
    &copy; 2025 Fuel Management System. All rights reserved.
</footer>

</body>
</html>
