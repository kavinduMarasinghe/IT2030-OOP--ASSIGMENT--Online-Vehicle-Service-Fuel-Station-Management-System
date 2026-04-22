<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: black;
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
            background-color: black;
            color: #fff;
            padding: 10px;
            text-align: center;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #333;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
        }

        .button:hover {
            background-color: #444;
        }
    </style>
</head>
<body>

<header>
    <h1>Admin Dashboard</h1>
</header>

<div class="container">

    <!-- View All Appointments -->
    <div class="card" onclick="window.location='ReadServlet'">
        <h3>View All Pending Appointments</h3>
        <p>See all current pending bookings, manage and update.</p>
    </div>

    <!-- Add New Appointment -->
    <div class="card" onclick="window.location='ReadConfirmedAppointmentsServlet'">
        <h3>View All Confirmed Appointment</h3>
        <p>See all Confirmed bookings.</p>
    </div>

    <!-- Update Appointment -->
    <div class="card" onclick="window.location='ReadServlet'">
        <h3>Update Appointment</h3>
        <p>Update existing booking details.</p>
    </div>

    <!-- Delete Appointment -->
    <div class="card" onclick="window.location='ReadServlet'">
        <h3>Delete Appointment</h3>
        <p>Remove unwanted or cancelled bookings.</p>
    </div>

    <!-- Admin Settings -->
    <div class="card">
        <h3>Admin Settings</h3>
        <p>Manage admin preferences and settings.</p>
    </div>

</div>

<footer>
   <p>&copy; 2025 Vehicle Service System. All rights reserved.</p>
</footer>
 

</body>
</html>
