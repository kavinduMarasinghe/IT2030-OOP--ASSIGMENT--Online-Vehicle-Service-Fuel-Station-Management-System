<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Insert Failed</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: top;
            align-items: left;
            height: 100vh;
            text-align: left;
        }

        h2 {
            color: #e74c3c;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        .error-message {
            color: #f39c12;
            font-size: 1.2em;
            margin-bottom: 30px;
        }

        .links a {
            color: #e67e22;
            font-size: 1.2em;
            text-decoration: none;
            margin: 0 15px;
            transition: color 0.3s;
        }

        .links a:hover {
            color: #d35400;
        }

        .links a:active {
            color: #c0392b;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>❌ Service Record Failed</h2>
        <p class="error-message">There was a problem adding the service record. Please try again.</p>

        <div class="links">
            <a href="Mechanicinsert.jsp">🔁 Try Again</a>
        </div>
    </div>
</body>
</html>
