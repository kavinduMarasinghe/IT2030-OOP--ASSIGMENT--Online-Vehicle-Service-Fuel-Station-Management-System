<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>


<html>
<head>
    <title>Supplier Settings</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background-color: #f4f4f4;
        }
        .settings-container {
            max-width: 600px;
            background: #fff;
            padding: 20px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0px 2px 10px rgba(0,0,0,0.1);
        }
        input, select, button {
            width: 100%;
            margin: 10px 0;
            padding: 12px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            background-color: #FF6961;
            color: white;
            font-weight: bold;
            cursor: pointer;
             transition: background-color 0.3s;
        }
        
          .settingimg {
        margin-left:80px;
        width:400px;
        height:300px;
        }
        
        button:hover {
         background-color: #e85b54;
        }
      
    </style>
</head>
<body>

<div class="settings-container">
   
    <img alt="" src="./images/settings-img.jpg" class="settingimg">
    <form action="UpdateSupplierSettingsServlet" method="post">
    
        <label for="supplierName">Supplier Name</label>
        <input type="text" id="supplierName" name="supplierName" value="<%= session.getAttribute("supplierName") %>">

        <label for="email">Email Address</label>
        <input type="email" id="email" name="email" value="<%= session.getAttribute("email") %>">

        <label for="password">Change Password</label>
        <input type="password" id="password" name="password" placeholder="Leave blank to keep current password">

        <label for="notifications">Email Notifications</label>
        <select id="notifications" name="notifications">
            <option value="enabled">Enabled</option>
            <option value="disabled">Disabled</option>
        </select>

        <button type="submit">Save Settings</button>
    </form>
</div>

</body>
</html>
