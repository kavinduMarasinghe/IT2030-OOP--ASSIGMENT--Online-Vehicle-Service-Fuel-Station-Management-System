<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet">
 <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f6f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-box {
            background-color: #fff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            width: 350px;
            display: block;
        }

        .login-box h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }

        .login-box input[type="text"],
        .login-box input[type="password"] {
            width: 300px;
            padding: 14px 12px;
            margin: 10px 0 20px;
            margin-left: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
            transition: border-color 0.3s;
        }

        .login-box input[type="text"]:focus,
        .login-box input[type="password"]:focus {
            border-color: #4CAF50;
            outline: none;
        }

        .login-box input[type="submit"] {
            width: 320px;
            padding: 14px;
            font-family: 'Orbitron', sans-serif;
            border: none;
            margin-left: 15px;
            border-radius: 6px;
            background-color: #3B82F6;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .login-box input[type="submit"]:hover {
            background-color: #005A9C;
        }
        
        .login-img{
        margin-left:40px;
        width:260px;
        height:180px;
        }
        
        .popup-overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.4);
    display: flex;
    align-items: center;
    justify-content: center;
    z-index: 9999;
}

.popup-box {
    background: #fff;
    padding: 25px 30px;
    border-radius: 8px;
    text-align: center;
    box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
    font-family: 'Segoe UI', sans-serif;
}

.popup-box p {
    margin-bottom: 15px;
    color: #333;
    font-size: 16px;
}

.popup-box button {
    background-color:  #e53935;
    color: white;
    padding: 10px 18px;
    border: none;
    font-weight: bold;
    border-radius: 6px;
    cursor: pointer;
    
}

.popup-box button:hover {
     background-color: #c62828;
}
        
        
    </style>
</head>
<body>
      <div class="login-box">
        <img alt="" src="./images/login.jpg" class="login-img">
        <form action="LoginServlet" method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="LOGIN">
        </form>
    </div>
    <%-- <%@ include file="Footer.jsp" %> --%>
      <!-- Popup Modal -->
<div id="popup" style="display:none;" class="popup-overlay">
  <div class="popup-box">
    <p>Invalid Username or Password.</p>
    <button onclick="closePopup()">Close</button>
  </div>
</div>
      
   <script>
  function openPopup() {
    document.getElementById("popup").style.display = "flex";
  }

  function closePopup() {
    document.getElementById("popup").style.display = "none";
  }
</script>
   
      
</body>

</html> 