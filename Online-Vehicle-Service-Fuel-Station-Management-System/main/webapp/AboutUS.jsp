<%@ include file="Header.jsp" %>
<%-- <%@ page contentType="text/html;charset=UTF-8" language="java" %> --%>
<html>
<head>
    <title>About Our Online Vehicle Service & Fuel Station Management</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
            color: #333;
        }
        .about-container {
            max-width: 900px;
            margin: 60px auto;
            background: white;
            padding: 40px 50px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        h1, h2 {
            color: darkorange;
        }
        h1 {
            margin-bottom: 10px;
        }
        h2 {
            margin-top: 40px;
        }
        p {
            line-height: 1.8;
            margin-bottom: 16px;
        }
        ul {
            margin-left: 20px;
            line-height: 1.7;
        }
        ul li::marker {
            color: darkorange;
        }
        .highlight-box {
            background: #fff2e6;
            border-left: 5px solid darkorange;
            padding: 20px 25px;
            margin-bottom: 30px;
        }
        .back-button {
            display: block;
            margin: 40px auto 0;
            width: fit-content;
            background-color: darkorange;
            color: white;
            padding: 12px 25px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            text-decoration: none;
            transition: background 0.3s ease;
        }
        .back-button:hover {
            background-color: #e65c00;
        }
    </style>
</head>
<body>
<div class="about-container">
    <h1>About Us</h1>
    <div class="highlight-box">
        <p>Welcome to the <strong>Online Vehicle Service and Fuel Station Management System</strong> — your one-stop digital platform designed to streamline and modernize the operations of vehicle service centers and fuel stations.</p>
        <p>Our system integrates key functionalities into a single, user-friendly interface to ensure <strong>efficiency, transparency, and customer satisfaction</strong>.</p>
    </div>

    <h2>Our Mission</h2>
    <p>Our mission is to revolutionize the way vehicle service and fuel station businesses operate by providing a smart, automated solution that saves time, reduces manual errors, and enhances the overall customer experience.</p>

    <h2>What We Offer</h2>
    <ul>
        <li><strong>Service Booking & Scheduling:</strong> Customers can book vehicle servicing appointments online, reducing waiting times and optimizing workshop schedules.</li>
        <li><strong>Fuel Station Management:</strong> Monitor fuel stock, track sales, and manage dispenser activities in real-time.</li>
        <li><strong>Customer Management:</strong> Maintain detailed records of customer vehicles, service history, and billing information.</li>
        <li><strong>Employee & Task Management:</strong> Assign roles, manage staff activities, and track performance metrics.</li>
        <li><strong>Inventory Tracking:</strong> Keep real-time updates of spare parts, lubricants, and fuel inventory to prevent shortages.</li>
        <li><strong>Reporting & Analytics:</strong> Generate detailed reports to support decision-making and improve operational efficiency.</li>
    </ul>

    <h2>Who We Serve</h2>
    <ul>
        <li>Independent vehicle service centers</li>
        <li>Multi-branch fuel station operators</li>
        <li>Fleet management companies</li>
        <li>Vehicle owners looking for convenient and transparent service options</li>
    </ul>

    <h2>Why Choose Us?</h2>
    <p>With our platform, businesses can move away from traditional, paper-based management to a smarter, faster, and more accurate digital solution. Whether you're an owner, manager, or customer, our system ensures a seamless and efficient experience for everyone involved.</p>

   
</div>
</body>
<%@ include file="Footer.jsp" %>
</html>
