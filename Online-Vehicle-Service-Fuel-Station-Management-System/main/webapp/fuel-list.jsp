<%@ page import="java.util.List" %>
<%@ page import="com.fuel.Fuel" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page session="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    List<Fuel> fuelList = (List<Fuel>) request.getAttribute("fuelList");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fuel Management Panel</title>
    <link rel="stylesheet" href="css/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            color: #444;
        }
        nav a {
            margin-right: 15px;
            text-decoration: none;
            color: #0077cc;
        }
        nav a:hover {
            text-decoration: underline;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
            background-color: #fff;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2a34c;
            color: white;
        }
        .success-msg {
            background-color: #e6ffe6;
            border: 1px solid green;
            padding: 10px;
            margin: 20px 0;
            color: green;
        }
        .action-links a {
            display: inline-block;
            padding: 6px 12px;
            margin: 2px;
            text-decoration: none;
            border-radius: 4px;
            font-size: 14px;
            color: white;
        }
        .btn-edit {
            background-color: #007bff;
        }
        .btn-edit:hover {
            background-color: #0069d9;
        }
        .btn-delete {
            background-color: #dc3545;
        }
        .btn-delete:hover {
            background-color: #c82333;
        }
        .add-button {
            display: inline-block;
            padding: 10px 15px;
            margin-top: 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .add-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Fuel Management Panel</h1>
    
    <nav>
        <a href="viewProducts.jsp">Fuel Products</a>
        <a href="about.jsp">About Us</a>
        <c:if test="${sessionScope.role == 'manager'}">
            <a href="FuelServlet?action=list">Home</a>
        </c:if>
        <a href="login.jsp">Logout</a>
    </nav>

    <c:if test="${not empty message}">
        <div class="success-msg">
            ${message}
        </div>
    </c:if>

    <%
        if (fuelList != null && !fuelList.isEmpty()) {
    %>
        <table>
            <tr>
                <th>ID</th>
                <th>Fuel Type</th>
                <th>Quantity (Litres)</th>
                <th>Price (Per Litre)</th>
                <th>Actions</th>
            </tr>
            <% for (Fuel fuel : fuelList) { %>
                <tr>
                    <td><%= fuel.getId() %></td>
                    <td><%= fuel.getFuelType() %></td>
                    <td><%= fuel.getQuantity() %></td>
                    <td>$<%= fuel.getPrice() %></td>
                    <td class="action-links">
                        <a href="FuelServlet?action=edit&id=<%= fuel.getId() %>" class="btn-edit">Edit</a>
                        <a href="FuelServlet?action=delete&id=<%= fuel.getId() %>" class="btn-delete"
                           onclick="return confirm('Are you sure you want to delete this fuel entry?');">Delete</a>
                    </td>
                </tr>
            <% } %>
        </table>
    <%
        } else {
    %>
        <p>No fuel data available.</p>
    <%
        }
    %>

    <a class="add-button" href="FuelServlet?action=new">Add New Fuel</a>
</body>
</html>
