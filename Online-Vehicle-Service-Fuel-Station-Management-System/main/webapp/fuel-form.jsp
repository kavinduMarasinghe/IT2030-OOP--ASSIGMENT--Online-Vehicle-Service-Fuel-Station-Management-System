<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Fuel Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .form-container {
            width: 400px;
            margin: 40px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        input[type=text], input[type=number] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type=submit] {
            background-color: darkorange;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>

<div class="form-container">

    <c:choose>
        <c:when test="${not empty fuel}">
            <h2>Update Fuel Entry</h2>
            <form action="FuelServlet?action=update" method="post">
        </c:when>
        <c:otherwise>
            <h2>Add Fuel Entry</h2>
            <form action="FuelServlet?action=insert" method="post">
        </c:otherwise>
    </c:choose>

        <input type="hidden" name="id" value="${fuel.id}" />

        <label for="fuelType">Fuel Type:</label>
        <input type="text" id="fuelType" name="fuelType"
               value="<c:out value='${fuel.fuelType}' default=''/>" required />

        <label for="quantity">Quantity (Litres):</label>
        <input type="number" id="quantity" name="quantity"
               value="<c:out value='${fuel.quantity}' default='0'/>" required />

        <label for="price">Price per Litre:</label>
        <input type="number" step="0.01" id="price" name="price"
               value="<c:out value='${fuel.price}' default='0.00'/>" required />

        <c:choose>
            <c:when test="${not empty fuel}">
                <input type="submit" value="Update Fuel" />
            </c:when>
            <c:otherwise>
                <input type="submit" value="Add Fuel" />
            </c:otherwise>
        </c:choose>

    </form>
</div>

</body>
</html>
