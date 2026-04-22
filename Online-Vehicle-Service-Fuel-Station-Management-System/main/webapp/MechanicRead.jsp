<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mechanic Service Records</title>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #004d99;
            margin-bottom: 20px;
        }

        form {
            text-align: center;
            margin-bottom: 20px;
        }

        input[type="submit"] {
		    background-color: #004d99;
		    color: white;
		    padding: 10px 18px;
		    border: none;
		    border-radius: 6px;
		    cursor: pointer;
		    font-size: 16px;
		    margin: 5px;
		    font-family: 'Orbitron', sans-serif;
		    transition: color 0.3s ease, background-color 0.3s ease;
		}

		input[type="submit"]:hover {
		    background-color: #003366;
		    color: black;
		}


        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 5px 12px;
            text-align: center;
        }

        th {
            background-color: #e6f0ff;
            color: #003366;
            font-weight: 600;
            border-bottom: 2px solid #cccccc;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f7ff;
        }

        td form {
            display: inline-block;
        }

        a {
            display: block;
            width: fit-content;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            font-size: 15px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #1e7e34;
        }
        
		        .top-actions {
		    text-align: left;
		    margin-bottom: 20px;
		}
		
		.top-actions form,
		.top-actions a {
		    display: inline-block;
		    margin-left: 10px;
		}
</style>
</head>
<body>
    <h2>📋 All Mechanic Service Records</h2>
<div class="top-actions">    
    <form action="MechanicReadServlet" method="get">
    <input type="submit" value="  VIEW ALL MECHANIC SERVICE">
    </form>
    
    <table border="1">
        <tr>
            <th>Service Id</th>
            <th>Customer Name</th>
            <th>Vehicle Info</th>
            <th>Part Note Type</th>
            <th>Status</th>
            <th>Delay Reason</th>
            <th>Parts Used</th>
            <th>Time Spent</th>
            <th>Notes</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="service" items="${serviceList}">
            <tr>
                <td>${service.serviceId}</td>
                <td>${service.customerName}</td>
                <td>${service.vehicleInfo}</td>
                <td>${service.partNoteType}</td>
                <td>${service.currentStatus}</td>
                <td>${service.delayReason}</td>
                <td>${service.partsUsed}</td>
                <td>${service.timeSpent}</td>
                <td>${service.notes}</td>
                <td>
                    <!-- Edit Form -->
                    <form action="RequestDetailsToMechanicUpdateServlet" method="get">
                        <input type="hidden" name="id" value="${service.serviceId}">
                        <input type="submit" value="Edit">
                    </form>
                    
                    <!-- Delete Form -->
                    <form action="MechanicDeleteServlet" method="post"  onsubmit="return confirm('Are you sure you want to delete this record?');">
                        <input type="hidden" name="id" value="${service.serviceId}">
                        <input type="submit" value="Delete">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

    <br>
    <a href="Mechanicinsert.jsp">➕ Add New Service Record</a>
 </div>
</body>
</html>
