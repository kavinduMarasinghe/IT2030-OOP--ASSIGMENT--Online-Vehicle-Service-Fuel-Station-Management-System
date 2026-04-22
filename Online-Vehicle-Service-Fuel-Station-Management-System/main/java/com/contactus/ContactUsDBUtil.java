package com.contactus;

import java.sql.Connection;
import java.sql.Statement;

public class ContactUsDBUtil {
	public static boolean insertContactUs(String name, String email, String message) {
        boolean isSuccess = false;

        try {
            Connection con = DBConnect.getConnection();
            Statement stmt = con.createStatement();

            String sql = "INSERT INTO contact_messages VALUES (0, '" + name + "', '" + email + "', '" + message + "', NOW())";
            int rows = stmt.executeUpdate(sql);

            if (rows > 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }
}

