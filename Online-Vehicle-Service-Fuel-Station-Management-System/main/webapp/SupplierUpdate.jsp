<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet">
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        background-color: #f4f6f8;
        padding: 40px;
    }

    h1 {
        color: #333;
        text-align: center;
        margin-bottom: 30px;
        font-size: 28px;
    }

    form {
        background-color: #ffffff;
        max-width: 450px;
        margin: 0 auto;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-left: 20px;
        font-weight: 600;
        color: #333;
        font-size: 14px;
    }

    input[type="text"],
    input[type="date"],
    input[type="number"] {
        width: 400px;
        padding: 12px 14px;
        margin-bottom: 15px;
        margin-left: 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
        box-sizing: border-box;
        transition: border-color 0.3s;
    }

    input[type="text"]:focus,
    input[type="date"]:focus ,
    input[type="number"]:focus{
        border-color: #008CBA;
        outline: none;
    }

    input[readonly] {
        background-color: #f0f0f0;
        color: #555;
    }

    input[type="submit"] {
          padding: 12px;
		  background-color: red;
		  color: #ffffff;
		  font-size: 16px;
		  border: none;
		  border-radius: 6px;
		  margin-left: 130px;
		  font-family: 'Orbitron', sans-serif;
		  cursor: pointer;
		  transition: color 0.3s ease;
    }

    input[type="submit"]:hover {
        color: black;
      
    }
    
    .updateimg {
     margin-left:70px;
        width:330px;
        height:250px;
    }
</style>

</head>
<body>
	
<div class="update-container">

<form action="updateOrder" method="post">
    <img src="./images/update-img.jpg" class="updateimg"><br>

    <label>Order ID:</label><br>
    <input type="text" name="id" value="${order.id}" readonly><br>

    <label>Supplier Name:</label><br>
    <input type="text" name="supplier_name" value="${order.supplier_name}" required pattern="[A-Za-z\s]{2,}" title="Enter at least 2 alphabetic characters."><br>

    <label>Product Name:</label><br>
    <input type="text" name="product_name" value="${order.product_name}" required pattern="[A-Za-z0-9\s]{2,}" title="Enter at least 2 alphanumeric characters."><br>

    <label>Quantity:</label><br>
    <input type="number" name="quantity" value="${order.quantity}" required min="1" title="Enter a quantity of at least 1."><br>

    <label>Expected Date:</label><br>
    <input type="date" name="expected_date" value="${order.expected_date}" required><br>

    <label>Status:</label><br>
    <input type="text" name="status" value="${order.status}" required pattern="Pending|Confirmed|Cancelled" title="Status must be 'Pending', 'Confirmed', or 'Cancelled'."><br>

    <input type="submit" value="UPDATE ORDER">
</form>

	
	</div>
</body>
</html>