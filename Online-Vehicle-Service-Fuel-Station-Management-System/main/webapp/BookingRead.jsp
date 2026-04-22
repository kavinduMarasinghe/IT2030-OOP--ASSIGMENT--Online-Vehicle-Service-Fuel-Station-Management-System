<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Bookings</title>
    
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f2f4f8;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: black;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        .container {
            max-width: 1500px;
            margin: 0px auto;
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
        }

        h2 {
            margin-top: 0;
            color: #333;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border-radius: 10px;
		    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.4);
        }

        th, td {
            padding: 12px;
            text-align: center;
            
        }

        th {
            background-color: black;
            color: white;
            
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        td form {
            display: inline-block;
            margin: 0 5px;
        }

        input[type="submit"] {
            background-color: #27ae60;
            color: white;
            border: none;
            padding: 6px 12px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        input[type="submit"]:hover {
            background-color: #219150;
        }
        
        footer {
            background-color: black;
            color: #fff;
            padding: 10px;
            text-align: center;
            bottom: 0;
            width: auto;
        }
    </style>
</head>
<body>

    <header>
    	<h1>Admin Dashboard</h1>
    </header>
    
    <div class="container">
    	<h2>All Appointments</h2>
    	
    	<!-- back to AdminDashbaord button-->
    	<div style="text-align: right; margin: 20px 30px 0 0;">
		    <form action="AdminDashboard.jsp" method="get" style="display: inline-block;">
		        <input type="submit" value="Go to Admin Dashboard" 
		               style="background-color: black; color: white; font-weight: bold; border: none; padding: 10px 20px; border-radius: 5px; cursor: pointer;">
		    </form>
		</div>


	    <c:if test="${not empty bookingDetails}">
	        <table border="1">
	            <thead>
	                <tr>
	                    <th>ID</th>
	                    <th>First Name</th>
	                    <th>Last Name</th>
	                    <th>Phone</th>
	                    <th>Vehicle Type</th>
	                    <th>Vehicle Number</th>
	                    <th>Service</th>
	                    <th>Branch</th>
	                    <th>Date</th>
	                    <th>Time</th>
	                    <th>Comments</th>
	                    <th>Actions</th>
	                </tr>
	            </thead>
	            <tbody>
	                <c:forEach var="booking" items="${bookingDetails}">
	                    <tr>
	                        <td>${booking.id}</td>
	                        <td>${booking.fname}</td>
	                        <td>${booking.lname}</td>
	                        <td>${booking.phone}</td>
	                        <td>${booking.vehiType}</td>
	                        <td>${booking.vehiNum}</td>
	                        <td>${booking.service}</td>
	                        <td>${booking.branch}</td>
	                        <td>${booking.date}</td>
	                        <td>${booking.time}</td>
	                        <td>${booking.comments}</td>
	                        <td>
			                    <form action="RequestDetailsToUpdateServlet" method="get">
			                        <input type="hidden" name="id" value="${booking.id}">
			                        <input type="submit" value="Edit">
			                    </form><br>
			
			                    <form action="DeleteServlet" method="post" onsubmit="return confirm('Are you sure?');">
			                        <input type="hidden" name="id" value="${booking.id}">
			                        <input type="submit" value="Delete">
			                    </form>
			                    
			                    <form action="RequestDetailsToConfirmServlet" method="get" onsubmit="return confirm('Are you sure you want to Confirm the appointment?');">
			                        <input type="hidden" name="id" value="${booking.id}">
			                        <input type="submit" value="Confirm">
			                    </form>
			                </td>
	                    </tr>
	                </c:forEach>
	            </tbody>
	        </table>
	    </c:if>
    </div><br>
	
	<footer>
	   <p>&copy; 2025 Vehicle Service System. All rights reserved.</p>
	</footer>
</body>

</html>
