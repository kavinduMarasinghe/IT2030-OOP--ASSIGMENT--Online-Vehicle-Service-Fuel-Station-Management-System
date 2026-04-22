<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Update Mechanic Record</title>
<link href="https://fonts.googleapis.com/css2?family=Orbitron&display=swap" rel="stylesheet">
<style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 30px;
        }

        h2 {
            text-align: center;
            color: #004d99;
            margin-bottom: 30px;
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
	        font-weight: 700;
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

        input[type="submit"] {
		    padding: 12px;
		    background-color: #004d99; 
		    color: #ffffff;
		    font-size: 16px;
		    border: none;
		    border-radius: 6px;
		    cursor: pointer;
		    font-family: 'Orbitron', sans-serif;
		    width: 100%;
		    transition: color 0.3s ease, background-color 0.3s ease;
		}

		input[type="submit"]:hover {
		    color: black;
		    background-color: #003366; 
		}



    </style>
</head>
<body>
       <h2>Update Mechanic Service Record</h2>
       
	    <form action="MechanicUpdateServlet" method="post">
	    
	        Service Id: <input type="text" name="serviceId" value="${mechanicList.serviceId}" readonly><br/>
	        Customer Name: <input type="text" name="customerName" value="${mechanicList.customerName}"/><br/>
	        Vehicle Info: <input type="text" name="vehicleInfo" value="${mechanicList.vehicleInfo}"/><br/>
	        Part Note Type: <input type="text" name="partNoteType" value="${mechanicList.partNoteType}"/><br/>
	        Status: <input type="text" name="currentStatus" value="${mechanicList.currentStatus}"/><br/>
	        Delay Reason: <input type="text" name="delayReason" value="${mechanicList.delayReason}"/><br/>
	        Parts Used: <input type="text" name="partsUsed" value="${mechanicList.partsUsed}"/><br/>
	        Time Spent: <input type="text" name="timeSpent" value="${mechanicList.timeSpent}"/><br/>
	        Notes: <textarea name="notes">${mechanicList.notes}</textarea><br/>
	        
	        <input type="submit" value="UPDATE">
	        
	    </form>
	    
</body>
</html>



  