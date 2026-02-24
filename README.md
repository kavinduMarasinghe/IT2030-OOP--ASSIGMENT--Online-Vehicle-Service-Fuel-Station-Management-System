# IT2030-OOP--ASSIGMENT--Online-Vehicle-Service-Fuel-Station-Management-System
Full-stack Java web system developed using OOP principles to handle bookings, mechanics, fuel management, orders, users, and contact services with JSP/Servlets and MySQL.

# 🚗 Online Vehicle Service & Fuel Station Management System

A full-stack **Java OOP-based web application** designed to digitalize and manage operations of a vehicle service center and fuel station.  
The system handles bookings, mechanic workflows, fuel inventory, supplier orders, and customer communication using **JSP, Servlets, MVC architecture, and MySQL**.

---

## 📌 Project Description

Manual vehicle service and fuel station management can be inefficient and error-prone.  
This system automates daily activities by providing a centralized web platform for:

✔ Service bookings  
✔ Mechanic task updates  
✔ Fuel stock management  
✔ Supplier orders  
✔ Customer inquiries  
✔ Admin controls  

The project follows **Object-Oriented Programming principles** and the **MVC design pattern** to ensure scalability, maintainability, and clean code structure.

---

## 🛠 Technology Stack

### Backend
- Java (OOP)
- Servlets
- JDBC
- DAO Pattern

### Frontend
- JSP
- HTML5
- CSS3
- JavaScript

### Database
- MySQL

### Architecture
- MVC (Model – View – Controller)

### Tools
- Eclipse / IntelliJ IDEA
- Apache Tomcat
- MySQL Workbench
- Git & GitHub

---

## ✨ System Features

### 👤 User Management
- Register/Login
- Session handling
- Role-based access

### 📅 Booking Management
- Create service bookings
- Update appointment details
- Track booking status

### 🔧 Mechanic / Technician Module
- View assigned services
- Update service status
- Add service details
- Record delay reasons
- Trigger customer notifications
- Generate reports

### ⛽ Fuel Station Management
- Manage fuel inventory
- Update stock levels
- Track fuel usage

### 📦 Supplier & Orders Module
- Create supplier orders
- Track deliveries
- Maintain order history

### 📩 Contact Us Module
- Submit customer inquiries
- Secure storage using PreparedStatement

### 🛡 Admin Panel
- Manage users
- Monitor activities

---

## 🧱 Project Structure

Online-Vehicle-Service-Fuel-Station-Management-System
│
├── controller (Servlets)  
├── model (Java Beans)  
├── dao (Database Access)  
├── service (Business Logic)  
├── util (DBConnection)  
├── jsp / css / js  
├── database/schema.sql  
└── README.md  

---

## 🗄 Database Setup

CREATE DATABASE vehicle_service_db;

Update credentials inside DBConnection.java:

url = jdbc:mysql://localhost:3306/vehicle_service_db  
user = root  
password = your_password  

---

## ▶ How to Run

1. Clone repository
git clone https://github.com/your-username/Online-Vehicle-Service-Fuel-Station-Management-System.git

2. Import into IDE as Dynamic Web Project  
3. Configure Tomcat  
4. Setup MySQL database  
5. Run server  

Open:
http://localhost:8080/project-name

---

## 🎯 OOP Concepts Applied
- Encapsulation
- Abstraction
- Inheritance
- Polymorphism
- MVC Pattern
- DAO Pattern

---

## 🎓 Academic Information
Object-Oriented Programming Group Project – SLIIT

---

## 📄 License
Educational purposes only.
