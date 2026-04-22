<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mechanic Service Panel</title>
<link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 30px;
    }

    h2, h3 {
        text-align: center;
        color: #004d99;
        margin-bottom: 20px;
    }

    form {
        max-width: 600px;
        margin: 0 auto;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-bottom: 6px;
        font-weight: 600;
        color: #333333;
    }

    input[type="text"],
    input[type="number"],
    select,
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 18px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
        box-sizing: border-box;
    }

    textarea {
        resize: vertical;
        min-height: 80px;
    }

    button[type="submit"] {
	    background-color: #004d99;
	    color: white;
	    padding: 12px 20px;
	    border: none;
	    border-radius: 6px;
	    cursor: pointer;
	    font-size: 15px;
	    width: 100%;
	    font-family: 'Orbitron', sans-serif;
	    transition: background-color 0.3s ease, color 0.3s ease;
    }

	button[type="submit"]:hover {
	    background-color: #003366;
	    color: black;
	}

</style>
</head>
<body>


	 <h2>Mechanic Service Panel</h2>
	 
     <h3>Add New Service</h3>

    
    <form action="MechanicInsertServlet" method="post">
    
        <!-- Customer Name: Only letters and spaces, minimum 2 characters -->
	    <label for="customerName">Customer Name:</label><br>
	    <input type="text" id="customerName" name="customerName" required pattern="[A-Za-z\s]{2,}" title="Enter at least 2 alphabetic characters."><br><br>
	    
	    <!-- Vehicle Info: Letters, numbers, spaces, and dashes. Minimum 2 characters -->
	    <label for="vehicleInfo">Vehicle Info:</label><br>
	    <input type="text" id="vehicleInfo" name="vehicleInfo" required pattern="[A-Za-z0-9\s\-]{2,}" title="Enter at least 2 alphanumeric characters."><br><br>
	
	   <!-- Drop down for current status -->
	    <label for="currentStatus">Select Current Status:</label><br>
	    <select id="currentStatus" name="currentStatus" required>
	        <option value="">-- Select Status --</option>
	        <option value="Completed">Completed</option>
	        <option value="In Progress">In Progress</option>
	        <option value="Pending">Pending</option>
	    </select><br><br>
	    
	    <!-- Drop down for part note type -->
	    <label for="partNoteType">Part Note Type:</label><br>
	    <select id="partNoteType" name="PartNoteType" required>
	        <option value="">-- Select Type --</option>
	        <option value="New">New</option>
	        <option value="Replaced">Replaced</option>
	        <option value="Used">Used</option>
	    </select><br><br>
	
	    <!-- Delay reason text area with max limit -->
	    <label for="delayReason">Delay Reason:</label><br>
	    <textarea id="delayReason" name="delayReason" maxlength="250" title="Maximum 250 characters allowed."></textarea><br><br>
	
	    <!-- Parts used text area with max limit -->
	    <label for="partsUsed">Parts Used:</label><br>
	    <textarea id="partsUsed" name="partsUsed" maxlength="250" title="Maximum 250 characters allowed."></textarea><br><br>
	
	    <!-- Time spent: must be 0.1 or more, can be decimal -->
	    <label for="timeSpent">Time Spent (hours):</label><br>
	    <input type="number" step="0.1" min="0.1" id="timeSpent" name="timeSpent" required title="Enter the number of hours spent, minimum 0.1"><br><br>
	
	    <!-- Notes text area with max limit -->
	    <label for="notes">Notes:</label><br>
	    <textarea id="notes" name="notes" maxlength="300" title="Maximum 300 characters allowed."></textarea><br><br>
	

        <button type="submit">ADD SERVICE</button>
    </form>
    
    
    
</body>
</html>