<%@ include file="Header.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Appointment Reservation</title>
	<link rel="stylesheet" href="css/BookNow.css"> 
	<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet">

	<script>
	  window.onload = function () {
	    // Hide success or error message after 4 seconds
	    const successMsg = document.querySelector(".success-msg");
	    const errorMsg = document.querySelector(".error-msg");

	    setTimeout(() => {
	      if (successMsg) successMsg.style.display = "none";
	      if (errorMsg) errorMsg.style.display = "none";
	    }, 4000);
	
	  //Form validation for telephone number and vehicle number input
	  document.querySelector("form").addEventListener("submit", function (e) {
	    const phone = document.querySelector("input[name='phone']").value;
	    const vehiNum = document.querySelector("input[name='vehicleNumber']").value;

	    const phonePattern = /^\d{10}$/;
	    const vehiPattern = /^[A-Z]{2,3}-\d{4}$/;

	    if (!phonePattern.test(phone)) {
	      alert("Phone number must be exactly 10 digits.");
	      e.preventDefault();
	    }

	    if (!vehiPattern.test(vehiNum)) {
	      alert("Vehicle number must be in the format XX-1234 or XXX-1234 using uppercase letters.");
	      e.preventDefault();
	    }
	  });
	</script>
</head>
<body>
	<center><h1>Appointment Reservation</h1></center>
	
	 <% 
	    String msg = (String) request.getAttribute("message");
	    String status = (String) request.getAttribute("status");
	    if (msg != null && status != null) {
	 %>
	    <div class="<%= status %>-msg">
	        <%= msg %>
	    </div>
	 <% 
	    }
	 %>
	 
	<section class="appointment-form">	
	  <form action="BookingServlet" method="post">
	
	    <div class="form-row">
	      <input type="text" name="firstName" placeholder="First Name" required>
	      <input type="text" name="lastName" placeholder="Last Name" required>
	    </div>
	
	    <input type="tel" name="phone" placeholder="Phone Number" pattern="^\d{10}$" required title="Phone number must be exactly 10 digits">
	
		<select name="vehicleType" required>
		  <option value="">Select Vehicle Type</option>
		  <option value="Car">Car</option>
		  <option value="Van">Van</option>
		  <option value="SUV">SUV</option>
		  <option value="Truck">Truck</option>
		  <option value="Motorbike">Motorbike</option>
		 </select>
		
		<!-- Vehicle Number: formats like ABC-1234 or AB-1234 -->
		<input type="text" name="vehicleNumber" placeholder="Vehicle Number" pattern="^[A-Z]{2,3}-\d{4}$" required title="Vehicle number must be in the format XX-1234 or XXX-1234 (uppercase)">

		<select name="service" id="service">
		<option value="">Select a service</option>
		  <option value="Wash and Grooming">Wash and Grooming</option>
		  <option value="Engine Tune ups">Engine Tune ups</option>
		  <option value="Part Replacements">Part Replacements</option>
		  <option value="Wheel Alignment">Wheel Alignment</option>
		  <option value="Battery Services">Battery Services</option>
		  <option value="Periodic Maintenances">Periodic Maintenances</option>
		</select>

	    <select name="branch" required>
	      <option value="">Select Branch</option>
	      <option>Katubedda Branch</option>
	      <option>Kandy Branch</option>
	      <option>Delkanda Grand 1</option>
	      <option>Gampaha Grand 1</option>
	      <option>Rathmalana Branch</option>
	      <option>Maharagama Branch</option>
	      <option>Thalawathugoda Branch</option>
	      <option>Mathara Branch</option>
	    </select>
	
		<div class="form-row">
			<input type="date" name="date" required>
	    	<input type="time" name="time" required>
		</div>
	
	    <textarea name="comments" placeholder="Any other comments..." rows="4"></textarea>
	
	    <button type="submit" class="">RESERVE APPOINTMENT</button>
	  </form>
	</section>
	<br><br>
</body>
<%@ include file="Footer.jsp" %>
</html>