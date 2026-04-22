<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
    <title>Insert Success</title>
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
        color: #28a745;
        font-size: 2.5em;
        margin-bottom: 20px;
    }

    .success-message {
        color: #4CAF50;
        font-size: 1.2em;
        margin-bottom: 30px;
    }

    .links a {
        color: #1a73e8;
        font-size: 1.2em;
        text-decoration: none;
        margin: 0 15px;
        transition: color 0.3s;
    }

    .links a:hover {
        color: #0c56d2;
    }

    .links a:active {
        color: #0a47c2;
    }
</style>
</head>
<body>
          <div class="container">
        <h2>✅ Service Record Added</h2>
        <p class="success-message">The service record was added successfully.</p>


    <div class="links">
        <a href="Mechanicinsert.jsp">➕ Add Another Record</a> |
        <a href="MechanicReadServlet">📋 View Mechanic Records</a>
    </div>
</div>


</body>
</html>


