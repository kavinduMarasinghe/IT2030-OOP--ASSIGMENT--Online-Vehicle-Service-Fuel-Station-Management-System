<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Supplier Dashboard</title>
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 30px;
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
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        button {
         position;realtive;
          padding: 12px;
		  background-color: red;
		  color: #ffffff;
		  font-size: 16px;
		  margin-top: -100px;
		  margin-left:1300px;
		  border: none;
		  border-radius: 6px;
		  font-family: 'Orbitron', sans-serif;
		  cursor: pointer;
		  transition: color 0.3s ease;
        }

        button:hover {
            color: black;
        }
    </style>
</head>
<body>

<header>
    <h1>Supplier Dashboard</h1>
    <button onclick="window.location='SupplierContact.jsp'">Contact Admin</button>
</header>

<div class="container">

    <!-- View All Appointments -->
    <div class="card" onclick=" window.location='OrderRead'">
        <h3>View All Orders</h3>
        <p>View all current Orders.</p>
    </div>

    <!-- Add New Appointment -->
    <div class="card" onclick="window.location='OrderInsert.jsp'">
        <h3>Add A New Order</h3>
        <p>Add a new Order.</p>
    </div>

    <!-- Update Appointment -->
    <div class="card" onclick="window.location='OrderRead'">
        <h3>Update Order</h3>
        <p>Update existing Order details.</p>
    </div>

    <!-- Delete Appointment -->
    <div class="card" onclick="window.location='OrderRead'">
        <h3>Delete Order</h3>
        <p>Remove unwanted or cancelled Orders.</p>
    </div>

    <!-- Admin Settings -->
    <div class="card" onclick="window.location='Settings.jsp' ">
        <h3>Supplier Settings</h3>
        <p>Manage Supplier preferences and settings.</p>
    </div>

</div>

<footer>
    <p>&copy; 2025 Vehicle Service System. All rights reserved.</p>
</footer>

</body>
</html>
