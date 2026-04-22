<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet">
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 400px;
            margin: 60px auto;
            padding: 30px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
        }
        input[type=text], input[type=number], input[type=date] {
            width: 370px;
            padding: 10px;
            margin: 10px 0 20px;
            margin-left: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type=submit] {
                    
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
        input[type=submit]:hover {
            color: black;
        }
        
        .insertimg {
        margin-left:70px;
        width:260px;
        height:190px;
        }
        label {
        margin-left: 5px;
        }
        
    </style>
</head>
<body>


<div class="container">
    <img alt="" src="./images/insert-img.jpg" class="insertimg">
    <form action="insertOrder" method="post">
   
        <label for="supplier Name">Supplier Name</label>
        <input type="text" name="supplier_name" id="supplierName" required>

        <label for="productName">Product Name</label>
        <input type="text" name="product_name" id="productName" required>

        <label for="quantity">Quantity</label>
        <input type="text" name="quantity" id="quantity" required min="1">

        <label for="expDate">Expected Date</label>
        <input type="date" name="expected_date" id="expDate" required>
        
         <label for="status">Status</label>
        <input type="text" name="status" value="Pending"><br>

        <input type="submit" value="SUBMIT ORDER">
    </form>
</div>
</body>
</html>