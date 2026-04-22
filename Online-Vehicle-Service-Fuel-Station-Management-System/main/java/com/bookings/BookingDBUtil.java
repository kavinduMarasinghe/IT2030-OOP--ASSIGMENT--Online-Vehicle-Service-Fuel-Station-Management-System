package com.bookings;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookingDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertBooking(String firstname, String lastname, String phone, String vehicleType, String vehicleNumber, String service, String branch, String date, String time, String comments) {
			
			boolean isSuccess = false;
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "insert into appointments values (0, '"+firstname+"', '"+lastname+"', '"+phone+"', '"+vehicleType+"', '"+vehicleNumber+"', '"+service+"', '"+branch+"', '"+date+"', '"+time+"', '"+comments+"')";
				int rs = stmt.executeUpdate(sql);
				
				if (rs > 0) 
					isSuccess = true;
				else
					isSuccess = false;
			}
			catch (Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
	}
	
		
	public static List<Booking> getAllBookings() {
	    ArrayList<Booking> bookings = new ArrayList<>();

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();

	        String sql = "SELECT * FROM appointments";
	        rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	            int id = rs.getInt(1);
	            String fname = rs.getString(2);
	            String lname = rs.getString(3);
	            String phone = rs.getString(4);
	            String vehiType = rs.getString(5);
	            String vehiNum = rs.getString(6);
	            String service = rs.getString(7);
	            String branch = rs.getString(8);
	            String date = rs.getString(9);
	            String time = rs.getString(10);
	            String comments = rs.getString(11);

	            Booking b = new Booking(id, fname, lname, phone, vehiType, vehiNum, service, branch, date, time, comments);
	            bookings.add(b);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return bookings;
	}
	
	
	public static List<Booking> getBookingDetailsByID(String Id) {
		  		  
		int convertedID = Integer.parseInt(Id);
		  		  
		ArrayList<Booking> booking = new ArrayList<>();
		  		  
		try { 
			  			  
			con = DBConnect.getConnection(); 			  
			stmt = con.createStatement();
			  
			String sql = "select * from appointments where apt_id = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
	  
			while(rs.next()) { 
				
				int id = rs.getInt(1);   
				String fname = rs.getString(2);
				String lname = rs.getString(3); 
				String phone = rs.getString(4); 
				String vehiType = rs.getString(5); 
				String vehiNum = rs.getString(6); 
				String service = rs.getString(7); 
				String branch = rs.getString(8); 
				String date = rs.getString(9); 
				String time = rs.getString(10); 
				String comments = rs.getString(11);
			  
				  
				Booking b = new Booking(id, fname, lname, phone, vehiType, vehiNum, service, branch, date, time, comments); 
				booking.add(b); 
			  
			} 
		  
		} catch (Exception e) {
			  
			e.printStackTrace(); 	  
		}
	    
		return booking; 
	  
	}
	 
	 public static boolean updateBooking(int id, String fname, String lname, String phone, String vehiType, String vehiNum, String service, String branch, String date, String time, String comments) {
		    
		 boolean isSuccess = false;
		 
		 try {
			 con = DBConnect.getConnection();
		     stmt = con.createStatement();
		     
		     String sql = "UPDATE appointments SET f_name='" + fname + "', l_name='" + lname + "', phone='" + phone + "', vehi_type='"+vehiType+"', vehi_num='"+vehiNum+"', service='"+service+"', branch='"+branch+"', date='"+date+"', time='"+time+"', comments='"+comments+"' WHERE apt_id='"+id+"'";
		     int rs = stmt.executeUpdate(sql);
		     
			 if (rs > 0) 
				isSuccess = true;
			 else
				isSuccess = false;
		     
		 } catch (Exception e) {
		        e.printStackTrace();
		 }
		    
		 return isSuccess;
		
	 }
	 
	 public static boolean deleteBooking(int id) {
		 boolean isSuccess = false;
		 
		 try {
			 con = DBConnect.getConnection();
			 stmt = con.createStatement();
			 
			 String sql = "DELETE FROM appointments WHERE apt_id='"+id+"'";
			 int rs = stmt.executeUpdate(sql);
			 
			 if (rs > 0)
				 isSuccess = true;
			 else 
				 isSuccess = false;			 
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		 }
		 
		 return isSuccess;
	 }
	 
	 public static boolean confirmBooking(int id, String fname, String lname, String phone, String vehiType, String vehiNum, String service, String branch, String date, String time, String comments) {
		    
		 boolean isSuccess = false;
		 
		 try {
			 con = DBConnect.getConnection();
		     stmt = con.createStatement();
		     
		     String sql1 = "insert into confirmed_appointments values (0, '"+fname+"', '"+lname+"', '"+phone+"', '"+vehiType+"', '"+vehiNum+"', '"+service+"', '"+branch+"', '"+date+"', '"+time+"', '"+comments+"')";
		     int rs1 = stmt.executeUpdate(sql1);
		     
		     String sql2 = "DELETE FROM appointments WHERE apt_id='"+id+"'";
			 int rs2 = stmt.executeUpdate(sql2);
		     
			 if (rs1 > 0 && rs2 > 0) 
				isSuccess = true;
			 else
				isSuccess = false;
		     
		 } catch (Exception e) {
		        e.printStackTrace();
		 }
		    
		 return isSuccess;
		
	 }
	 
	 public static List<Booking> getAllConfirmedAppointments() {
		    ArrayList<Booking> confirmedBooking = new ArrayList<>();

		    try {
		        con = DBConnect.getConnection();
		        stmt = con.createStatement();

		        String sql = "SELECT * FROM confirmed_appointments";
		        rs = stmt.executeQuery(sql);

		        while (rs.next()) {
		            int id = rs.getInt(1);
		            String fname = rs.getString(2);
		            String lname = rs.getString(3);
		            String phone = rs.getString(4);
		            String vehiType = rs.getString(5);
		            String vehiNum = rs.getString(6);
		            String service = rs.getString(7);
		            String branch = rs.getString(8);
		            String date = rs.getString(9);
		            String time = rs.getString(10);
		            String comments = rs.getString(11);

		            Booking b = new Booking(id, fname, lname, phone, vehiType, vehiNum, service, branch, date, time, comments);
		            confirmedBooking.add(b);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return confirmedBooking;
		}

}
