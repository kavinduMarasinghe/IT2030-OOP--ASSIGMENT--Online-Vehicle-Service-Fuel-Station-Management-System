<%@ include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>

    <!-- Force CSS to reload -->
    <link rel="stylesheet" href="css/ContactUs.css?v=1.0">
    
    <!-- Font Awesome & Orbitron -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
</head>
<body>

    <div class="under-banner-section">
        <div class="container">
            <h1>Contact Us</h1>
        </div>
    </div>

    <!-- Alerts -->
    <c:if test="${not empty success}">
        <div class="alert success">${success}</div>
    </c:if>
    <c:if test="${not empty error}">
        <div class="alert error">${error}</div>
    </c:if>

    <div class="center-wrapper">
        <div class="contact-info">
            <h2>SEND US A MESSAGE</h2><br>
            <h3>Find Us</h3><br>
            <p><i class="fas fa-phone-alt"></i> <strong>HOTLINE:</strong><br>037 2 850 978</p>
            <p><i class="fas fa-phone"></i> <strong>SALES:</strong><br>037 2 640 640</p>
            <p><i class="fas fa-envelope"></i> <strong>EMAIL:</strong><br>support@prestigemotors.com</p>
            <p><i class="fas fa-map-marker-alt"></i> <strong>ADDRESS:</strong><br>123, Prestige Motors, Maradana, Colombo</p>
        </div>

        <!-- Contact Form -->
        <form action="ContactUsServlet" method="post" class="contact-form">
            <input type="text" name="name" placeholder="Name" required><br>
            <input type="text" name="email" placeholder="Email" required><br>
            <textarea name="message" placeholder="Comment or Message" rows="6" cols="50" required></textarea><br>
            <input type="submit" name="submit" value="SUBMIT">
        </form>
    </div>

</body>
<%@ include file="Footer.jsp" %>
</html>
