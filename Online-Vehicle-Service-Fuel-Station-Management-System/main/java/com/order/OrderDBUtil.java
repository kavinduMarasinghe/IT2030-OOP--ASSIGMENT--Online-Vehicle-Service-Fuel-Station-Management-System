package com.order;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class OrderDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

    public static boolean insertOrder(String supplier_name, String product_name,int quantity,String expected_date, String status) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = SupplierDBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "insert into purchase_orders values (0, '"+supplier_name+"', '"+product_name+"','"+quantity+"', '"+expected_date+"', '"+status+"')";

    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }

    



public static List<PurchaseOrder> getAllOrders() {
ArrayList<PurchaseOrder> orders = new ArrayList<>();

try {
    con = SupplierDBConnect.getConnection();
    stmt = con.createStatement();

    String sql = "SELECT * FROM purchase_orders";
    rs = stmt.executeQuery(sql);

    while (rs.next()) {
        int id = rs.getInt(1);
        String  supplier_name = rs.getString(2);
        String product_name = rs.getString(3);
        String quantityStr = rs.getString(4);
        int quantity = Integer.parseInt(quantityStr);
        String expected_date = rs.getString(5);
        String status = rs.getString(6);

     

        PurchaseOrder ord = new PurchaseOrder(id,supplier_name,product_name,quantity,expected_date,status);
        orders.add(ord);
    }
} catch (Exception e) {
    e.printStackTrace();
}

return orders;
}


public static List<PurchaseOrder> getOrderDetailsByIDToUpdate(String Id) {
  		  
int convertedID = Integer.parseInt(Id);
  		  
ArrayList<PurchaseOrder> order = new ArrayList<>();
  		  
try { 
	  			  
	con = SupplierDBConnect.getConnection(); 			  
	stmt = con.createStatement();
	  
	String sql = "select * from purchase_orders where id = '"+convertedID+"'";
	rs = stmt.executeQuery(sql);

	while(rs.next()) { 
		
		int id = rs.getInt(1);   
		    String  supplier_name = rs.getString(2);
	        String product_name = rs.getString(3);
	        String quantityStr = rs.getString(4);
	        int quantity = Integer.parseInt(quantityStr);
	        String expected_date = rs.getString(5);
	        String status = rs.getString(6);
	  
		  
		PurchaseOrder ord = new PurchaseOrder(id,supplier_name,product_name,quantity,expected_date,status);
		order.add(ord); 
	  
	} 
  
} catch (Exception e) {
	  
	e.printStackTrace(); 	  
}

return order; 

}


public static boolean updateOrder(int id, String supplier_name, String product_name,int quantity,String expected_date, String status) {
    
	 boolean isSuccess = false;
	 
	 try {
		 con = SupplierDBConnect.getConnection();
	     stmt = con.createStatement();
	     
	     String sql = "UPDATE purchase_orders SET supplier_name='" + supplier_name + "', product_name='" + product_name + "', quantity='" + quantity + "', expected_date='"+expected_date+"', status='"+status+"' WHERE id='"+id+"'";
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



public static boolean deleteOrder(int id) {
	 boolean isSuccess = false;
	 
	 try {
		 con = SupplierDBConnect.getConnection();
		 stmt = con.createStatement();
		 
		 String sql = "DELETE FROM purchase_orders WHERE id='"+id+"'";
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


