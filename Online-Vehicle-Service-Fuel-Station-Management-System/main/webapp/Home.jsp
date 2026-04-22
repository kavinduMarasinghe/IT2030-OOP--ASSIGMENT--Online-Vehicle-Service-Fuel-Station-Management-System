<%@ include file="Header.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<div class="background">
		<img alt="backgorund img" src="images/bg5.jpg">
		
		<div class="description">
		  <div class="info-section">
		  	<ul style="list-style-type: none; padding-left: 0;">
			    <li class="white-text small">GUARANTEED</li><br>
			    <li class="red-text big">100%</li><br>
			    <li class="white-text small">SATISFACTION</li>
		    </ul>
		  </div><br><br>
		  
		  <div class="info-section">
		    <ul style="list-style-type: none; padding-left: 0;">
			    <li class="white-text small">UNMATCHED EXCELLENCE OF</li><br>
			    <li class="red-text big">10 YEARS</li><br>
			    <li class="white-text small">SINCE 2015</li>
		    </ul>
		  </div><br><br>
		  
		  <div class="info-section">
		    <ul style="list-style-type: none; padding-left: 0;">
			    <li class="white-text small">ISLANDE WIDE</li><br>
			    <li class="red-text big">8 CENTRES</li><br>
			    <li class="white-text small">IN SRI LANKA</li>
		    </ul>
		  </div>
		</div>

		
		<div class="slider">
		  <div class="slide-track">
		    <div class="slide"><img src="images/slide111.jpg" alt="Slide 1" /></div>
		    <div class="slide"><img src="images/slide222.jpg" alt="Slide 2" /></div>
		    <div class="slide"><img src="images/slide3.webp" alt="Slide 3" /></div>
		  </div>
		</div>
	
	</div>
	
	<div class="our-services">
	  <h2>Our Services</h2>
	  <div class="service-container">
	  
	    <div class="service-box" onclick="window.location='Services.jsp'">
	      <h3>Periodic Maintenance</h3>
	      <img src="images/oil2.jpg" alt="Periodic Maintenance">
	    </div>
	    
	    <div class="service-box" onclick="window.location='Services.jsp'">
	      <h3>Engine Checkup</h3>
	      <img src="images/engine2.jpg" alt="Engine Checkup">
	    </div>
	    
	    <div class="service-box" onclick="window.location='Services.jsp'">
	      <h3>Auto Body Coatings</h3>
	      <img src="images/coating2.jpg" alt="Auto Body Coatings & Paintings">
	    </div>
	    
	    <div class="service-box" onclick="window.location='Services.jsp'">
	      <h3>Wheel Alignment</h3>
	      <img src="images/wheel-alignment.jpg" alt="Wheel alignment">
	    </div>
	    
	    <div class="service-box" onclick="window.location='Services.jsp'">
	      <h3>Wash & Grooming</h3>
	      <img src="images/wash2.jpg" alt="Wash & Grooming">
	    </div>
	    
	  </div>
	</div>
	
	<div class="service-banner-container">
		<div class="service-banner">
		    <img src="images/service-banner.png" alt="Service Banner">
		</div>
	</div>
	
	<section class="service-providers">
	  <h2>Our Service Providers</h2>
	  <div class="brand-strip">
	    <div class="brand-logo">
	      <img src="images/brand-mobil.png" alt="Brand 1">
	    </div>
	    <div class="brand-logo">
	      <img src="images/brand-toytoa.png" alt="Brand 2">
	    </div>
	    <div class="brand-logo">
	      <img src="images/brand-castrol.png" alt="Brand 3">
	    </div>
	    <div class="brand-logo">
	      <img src="images/brand-wurth.png" alt="Brand 4">
	    </div>
	    <div class="brand-logo">
	      <img src="images/brand-3m.png" alt="Brand 5">
	    </div>
	    <div class="brand-logo">
	      <img src="images/brand-wilita.png" alt="Brand 6">
	    </div>
	    <div class="brand-logo">
	      <img src="images/brand-debber.png" alt="Brand 7">
	    </div>
	    <div class="brand-logo">
	      <img src="images/brand-premier.png" alt="Brand 8">
	    </div>
	    <div class="brand-logo">
	      <img src="images/brand-gyeon.png" alt="Brand 9">
	    </div>
	  </div>
	</section>
	
	
</body>
<%@ include file="Footer.jsp" %>

</html>