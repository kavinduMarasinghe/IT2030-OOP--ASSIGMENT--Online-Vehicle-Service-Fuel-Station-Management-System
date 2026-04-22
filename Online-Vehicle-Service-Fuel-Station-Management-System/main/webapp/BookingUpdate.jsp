<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Appointment</title>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet">
<style>
		body {
            font-family: 'Inter', sans-serif;
            background-color: #f2f4f8;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: black;
            color: #fff;
            padding: 20px;
            text-align: center;
            
        }
        
        footer {
            background-color: black;
            color: #fff;
            padding: 10px;
            text-align: center;
            bottom: 0;
            width: auto;
        }
        
        h2 {
            margin-top: 20px;
            color: #333;
            text-align: center;
        }
        
		.appointment-form {
		    max-width: 450px;
		    margin: 20px auto;
		    background: #fff;
		    padding: 30px;
		    border-radius: 10px;
		    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
		    font-family: 'Segoe UI', sans-serif;
		    color: #333;
		}
		
		.appointment-form form {
		    display: flex;
		    flex-direction: column;
		    gap: 15px;
		}
		
		.form-group {
		    display: flex;
		    align-items: center;
		    margin-bottom: 10px;
		}
		
		.form-group label {
		    flex: 0 0 180px;
		    font-weight: bold;
		}
		
		.form-group input[type="text"],
		.form-group select {
		    flex: 1;
		    padding: 10px;
		    border-radius: 6px;
		    border: 1px solid #ccc;
		    font-size: 14px;
		}
		
		.appointment-form button {
		    padding: 12px;
		    background-color: red;
		    font-family: 'Orbitron', sans-serif;
		    color: white;
		    font-weight: bold;
		    font-size: 15px;
		    border: none;
		    border-radius: 6px;
		    cursor: pointer;
		    transition: color 0.3s ease;
		    align-self: center;
		    margin-top: 10px;
		}
		
		.appointment-form button:hover {
		   color: black;
		}
		
		@media (max-width: 600px) {
		    .form-group {
		        flex-direction: column;
		        align-items: flex-start;
		    }
		
		    .form-group label {
		        margin-bottom: 5px;
		    }
		}
</style>
</head>
<body>
    <header>
    	<h1>Admin Dashboard</h1>
    </header>
    
	<h2>Update Appointment details</h2>
	
	<div class="container">
	<section class="appointment-form">	
	  <form action="UpdateServlet" method="post">
	
	    <div class="form-group">
	      <label for="id">Booking ID:</label>
	      <input type="text" id="id" name="id" value="${booking.id}" readonly>
	    </div>
	
	    <div class="form-group">
	      <label for="fname">First Name:</label>
	      <input type="text" id="fname" name="fname" value="${booking.fname}">
	    </div>
	
	    <div class="form-group">
	      <label for="lname">Last Name:</label>
	      <input type="text" id="lname" name="lname" value="${booking.lname}">
	    </div>
	
	    <div class="form-group">
	      <label for="phone">Phone:</label>
	      <input type="text" id="phone" name="phone" value="${booking.phone}">
	    </div>
	
	    <div class="form-group">
	      <label for="vehiType">Vehicle Type:</label>
	      <select id="vehiType" name="vehiType"> 
	        <option value="${booking.vehiType}">${booking.vehiType}</option> 
	        <option value="Car">Car</option>
	        <option value="Van">Van</option>
	        <option value="SUV">SUV</option>
	        <option value="Truck">Truck</option>
	        <option value="Motorbike">Motorbike</option>
	      </select>
	    </div>
	
	    <div class="form-group">
	      <label for="vehiNum">Vehicle Number:</label>
	      <input type="text" id="vehiNum" name="vehiNum" value="${booking.vehiNum}">
	    </div>
	
	    <div class="form-group">
	      <label for="service">Service:</label>
	      <select id="service" name="service">
	        <option value="${booking.service}">${booking.service}</option>
	        <option value="Wash and Grooming">Wash and Grooming</option>
	        <option value="Engine Tune ups">Engine Tune ups</option>
	        <option value="Part Replacements">Part Replacements</option>
	        <option value="Wheel Alignment">Wheel Alignment</option>
	        <option value="Battery Services">Battery Services</option>
	        <option value="Periodic Maintenances">Periodic Maintenances</option>
	      </select>
	    </div>
	
	    <div class="form-group">
	      <label for="branch">Branch:</label>
	      <select id="branch" name="branch">
	        <option value="${booking.branch}">${booking.branch}</option>
	        <option>Katubedda Branch</option>
	        <option>Kandy Branch</option>
	        <option>Delkanda Grand 1</option>
	        <option>Gampaha Grand 1</option>
	        <option>Rathmalana Branch</option>
	        <option>Maharagama Branch</option>
	        <option>Thalawathugoda Branch</option>
	        <option>Mathara Branch</option>
	      </select>
	    </div>
	
	    <div class="form-group">
	      <label for="date">Date:</label>
	      <input type="date" id="date" name="date" value="${booking.date}">
	    </div>
	
	    <div class="form-group">
	      <label for="time">Time:</label>
	      <input type="time" id="time" name="time" value="${booking.time}">
	    </div>
	
	    <div class="form-group">
	      <label for="comments">Comments:</label>
	      <input type="text" id="comments" name="comments" value="${booking.comments}">
	    </div>
	
	    <button type="submit">UPDATE APPOINTMENT</button>
	
	  </form>
	</section>
	</div>

	
	<footer>
	   <p>&copy; 2025 Vehicle Service System. All rights reserved.</p>
	</footer>
</body>
</html>