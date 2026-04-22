<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Form</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f4f8;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .contact-form {
            background-color: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            width: 400px;
            max-width: 500px;
        }

        .contact-form h2 {
            margin-bottom: 20px;
            color: #333;
            font-weight: 600;
        }

        .contact-form input,
        .contact-form textarea {
            width: 380px;
            padding: 14px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: border-color 0.2s;
        }

        .contact-form input:focus,
        .contact-form textarea:focus {
            border-color: #3399FF;
            outline: none;
        }

        .contact-form button {
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
        .contact-form button:hover {
            color: Black;
        }
        
         .contact{
        width: 400px;
        height: 300px;
        }
        
    </style>
</head>
<body>
 
    <form action="https://api.web3forms.com/submit" method="post" class="contact-form">
       <img alt="" src="./images/contact.jpg" class="contact"><br>
        <input type="hidden" name="access_key" value="199312d1-80f1-4f05-8e95-a51084eed0dd">
        <input type="text" name="name" placeholder="Your Name" required />
        <input type="email" name="email" placeholder="Your Email" required />
        <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
        <button type="submit">SEND MESSAGE</button>
    </form>

</body>
</html>
