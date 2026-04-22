<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mechanic Service Panel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #001a29;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        .container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .card {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .card:hover {
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            transform: translateY(-5px);
        }

        .card h3 {
            margin: 10px 0;
        }

        .card p {
            color: #777;
        }

        footer {
            background-color: #001a29;
            color: #fff;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<header>
    <h1>Mechanic Service Panel</h1>
</header>

<div class="container">

    <!-- View Mechanic Service Records -->
    <div class="card" onclick="window.location='MechanicReadServlet'">
        <h3>View Service Records</h3>
        <p>See all vehicle services handled.</p>
    </div>

    <!-- Add New Service Record -->
    <div class="card" onclick="window.location='Mechanicinsert.jsp'">
        <h3>Add New Service</h3>
        <p>Log a new service record.</p>
    </div>
    
    
    <!-- Update Service Status -->
    <div class="card">
        <h3>Update Service Status</h3>
        <p>Mark services as completed or in progress.</p>
    </div>


    <!-- Add Service Details -->
    <div class="card">
        <h3>Add Service Details</h3>
        <p>Record details of the completed service.</p>
    </div>


    <!-- Generate Reports -->
    <div class="card">
        <h3>Generate Reports</h3>
        <p>View summary of your services and activity.</p>
    </div>
    
    
    

    
</div>

<footer>
    &copy; 2025 Mechanic Panel | Online Vehicle Service Management System
</footer>

</body>
</html>
