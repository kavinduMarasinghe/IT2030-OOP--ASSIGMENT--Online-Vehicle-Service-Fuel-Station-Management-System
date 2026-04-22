<%@ include file="Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Branch Network</title>
<link rel="stylesheet" href="css/Branches.css">
</head>
<body>
   <div class="branches-container">
        <h1>Branch Network</h1>
      
    <div class="branch">
        <img src="images/Katubedda.jpg" alt="Katubedda Branch">
        <h2>Katubedda Branch</h2>
        <p><strong>Address:</strong> 244 Galle Rd, Moratuwa, Sri Lanka</p>
        <p><strong>Phone:</strong> 037 234 5678</p>
    </div>

    <div class="branch">
        <img src="images/Kandy.jpg" alt="Kandy Branch">
        <h2>Kandy Branch</h2>
        <p><strong>Address:</strong> 456 Peradeniya Rd, Kandy</p>
        <p><strong>Phone:</strong> 037 222 3333</p>
    </div>

    <div class="branch">
        <img src="images/Delkanda.jpg" alt="Delkanda Branch">
        <h2>Delkanda Grand 1</h2>
        <p><strong>Address:</strong> 103, Old Kesbewa Road, Gangodawila, Nugegoda</p>
        <p><strong>Phone:</strong> 037 234 5678</p>
    </div>

    <div class="branch">
        <img src="images/Gampaha.jpg" alt="Gampaha Branch">
        <h2>Gampaha Grand 1</h2>
        <p><strong>Address:</strong> 154, Asgiriya Road, Gampaha</p>
        <p><strong>Phone:</strong> 037 222 3333</p>
    </div>

    <div class="branch">
        <img src="images/Rathmalana.jpg" alt="Rathmalana Branch">
        <h2>Rathmalana Branch</h2>
        <p><strong>Address:</strong> 66 - Attidiya Road, Mount Lavinia</p>
        <p><strong>Phone:</strong> 037 222 5555</p>
    </div>

    <div class="branch">
        <img src="images/Maharagama.jpg" alt="Maharagama Branch">
        <h2>Maharagama Branch</h2>
        <p><strong>Address:</strong> no 161 Dehiwala Road, Maharagama</p>
        <p><strong>Phone:</strong> 037 222 6666</p>
    </div>

    <div class="branch">
        <img src="images/Thalawathugoda.jpg" alt="Thalawathugoda Branch">
        <h2>Thalawathugoda Branch</h2>
        <p><strong>Address:</strong> 276 Hokandara Road, Thalawathugoda</p>
        <p><strong>Phone:</strong> 037 222 7777</p>
    </div>

    <div class="branch">
        <img src="images/Mathara.jpg" alt="Mathara Branch">
        <h2>Mathara Branch</h2>
        <p><strong>Address:</strong> 319, Akuressa Rd, Godagama</p>
        <p><strong>Phone:</strong> 037 222 8888</p>
    </div>

    <!-- Embed Google Map with multiple branch markers -->
   <div class="map-container">
    <iframe src="https://www.google.com/maps/d/u/0/embed?mid=1h-rl_LvhIlUKOu5GOSd6om-CAh3cPnM" width="100%" height="400" style="border:20;" allowfullscreen=""></iframe>
  </div>

    
</div>
</body>
<%@ include file="Footer.jsp" %>
</html>