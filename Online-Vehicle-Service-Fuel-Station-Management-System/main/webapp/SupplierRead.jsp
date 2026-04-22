<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Orders</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 30px;
    background-color: #f9f9f9;
}

h2 {
    color: #b33a3a; 
    text-align: center;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    background-color: #fff;
}

th, td {
    padding: 12px 15px;
    text-align: center;
    border: 1px solid #ddd;
}

th {
    background-color: #f19a9a; 
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #f8d0d0;
    cursor: pointer;
}

form {
    display: inline-block;
    margin: 2px;
}

input[type="submit"] {
    padding: 6px 12px;
    border: none;
    background-color: #ff6666; 
    color: white;
    border-radius: 4px;
    cursor: pointer;
    font-size: 14px;
}

input[type="submit"]:hover {
    background-color: #e04f4f; 
}


</style>

</head>
<body>

    <h2>Order Summary</h2>

    <br><br>

    <c:if test="${not empty OrderDetails}">
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Supplier</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Expected Date</th>
                    <th>Status</th>
                  
                </tr>
            </thead>
            <tbody>
                <c:forEach var="order" items="${OrderDetails}">
                    <tr>
                        <td>${order.id}</td>
                        <td>${order.supplier_name}</td>
                        <td>${order.product_name}</td>
                        <td>${order.quantity}</td>
                        <td>${order.expected_date}</td>
                        <td>${order.status}</td>
                        
                       
                        <td>
		                    <form action="requestDetailsToUpdateServlet" method="get">
		                        <input type="hidden" name="id" value="${order.id}">
		                        <input type="submit" value="Edit">
		                    </form>
		
		                    <form action="SupplierDeleteServlet" method="post" onsubmit="return confirm('Are you sure? You want to delete this entry.');">
		                        <input type="hidden" name="id" value="${order.id}">
		                        <input type="submit" value="Delete">
		                    </form>
		                </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

</body>
</html>
