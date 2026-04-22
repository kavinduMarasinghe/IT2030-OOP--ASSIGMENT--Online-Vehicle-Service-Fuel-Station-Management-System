package com.mechanic;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MechanicDBUtil {

		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;

		 // INSERT mechanic record
		
		public static boolean insertMechanicService(String customerName, String vehicleInfo, String partNoteType,
				String currentStatus, String delayReason, String partsUsed, double timeSpent, String notes) {
		
			boolean isSuccess = false;
		
			try {
				con = MechanicDBConnect.getConnection();
				stmt = con.createStatement();
		
				String sql = "INSERT INTO mechanic_services VALUES (0, '" + customerName + "', '" + vehicleInfo + "', '" +
						partNoteType + "', '" + currentStatus + "', '" + delayReason + "', '" + partsUsed + "', " +
						timeSpent + ", '" + notes + "')";
		
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
		
		
		// READ all mechanic service records
		
		public static List<MechanicService> getAllMechanicService() {
		    ArrayList<MechanicService> serviceLists = new ArrayList<>();

		    try {
		        con = MechanicDBConnect.getConnection();
		        stmt = con.createStatement();
		        String sql = "SELECT * FROM mechanic_services";
		        rs = stmt.executeQuery(sql);

		        while (rs.next()) {
		            int id = rs.getInt(1);
		            String customerName = rs.getString(2);
		            String vehicleInfo = rs.getString(3);
		            String partNoteType = rs.getString(4);
		            String currentStatus = rs.getString(5);
		            String delayReason = rs.getString(6);
		            String partsUsed = rs.getString(7);
		            double timeSpent = rs.getDouble(8);
		            String notes = rs.getString(9);

		            MechanicService m = new MechanicService(id, customerName, vehicleInfo, partNoteType, currentStatus, delayReason, partsUsed, timeSpent, notes);
		            serviceLists.add(m);
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return serviceLists;
		}
		
		
		
		// GET mechanic service by ID (for updating)
		
		public static List<MechanicService> getMechanicServiceByIDToUpdate(String id) {

		    int convertedID = Integer.parseInt(id);
		    ArrayList<MechanicService> mechanicList = new ArrayList<>();

		    try {
		        con = MechanicDBConnect.getConnection();
		        stmt = con.createStatement();

		        String sql = "SELECT * FROM mechanic_services WHERE serviceId = '" + convertedID + "'";
		        rs = stmt.executeQuery(sql);

		        while (rs.next()) {
		            int Id = rs.getInt(1);
		            String customerName = rs.getString(2);
		            String vehicleInfo = rs.getString(3);
		            String partNoteType = rs.getString(4);
		            String currentStatus = rs.getString(5);
		            String delayReason = rs.getString(6);
		            String partsUsed = rs.getString(7);
		            double timeSpent = rs.getDouble(8);
		            String notes = rs.getString(9);

		            MechanicService mechanic = new MechanicService(Id, customerName, vehicleInfo, partNoteType, currentStatus, delayReason, partsUsed, timeSpent, notes);
		            mechanicList.add(mechanic);
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return mechanicList;
		}

		
		
		// UPDATE mechanic service record
		
		public static boolean updateMechanicService(int serviceId, String customerName, String vehicleInfo, String partNoteType,
                String currentStatus, String delayReason, String partsUsed, double timeSpent, String notes) {
		    
			 boolean isSuccess = false;
			 
			 try {
				 con = MechanicDBConnect.getConnection();
			     stmt = con.createStatement();
			     
			     String sql = "UPDATE mechanic_services SET customerName ='" + customerName + "', vehicleInfo='" + vehicleInfo + "', partNoteType='" + partNoteType + "', currentStatus='"+currentStatus+"', delayReason='"+delayReason+"', partsUsed='"+partsUsed+"', timeSpent='"+timeSpent+"', notes='"+notes+"' WHERE serviceId='"+serviceId+"'";
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
		
				
		
	  // DELETE mechanic service record by ID
		
	   public static boolean deleteMechanicService(int id) {
			 boolean isSuccess = false;
			 
			 try {
				 con = MechanicDBConnect.getConnection();
				 stmt = con.createStatement();
				 
				 String sql = "DELETE FROM mechanic_services WHERE serviceId='"+id+"'";
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

}

	
		
	

	   


							