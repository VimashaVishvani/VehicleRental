package com.newUser;

import com.user.*;

public class newUserUtil extends userDbUtil {
	 public static boolean addUser(user newuser1) {
	    	
	    	
    	 try {       
    		 con = DBconnect.getConnection();
    		 stmt = con.createStatement();
		
		        // SQL query to insert a new booking
    		  String sql = "INSERT INTO user (name, password, gmail, phonNumber, role,verification) VALUES ('" + newuser1.getName() + "', '" + 
                      newuser1.getPassword() + "', '" + newuser1.getGmail() + "', '" + newuser1.getPhoneNumber() + "', '" + 
                      newuser1.getRole() + "','Unverified')";
		
		        int rowsAffected = stmt.executeUpdate(sql);
		        
		        // Check if insertion was successful
		        if (rowsAffected > 0) {
		            return true;
		        } else {
		            return false;
		        }
		        
    		}catch(Exception e) {
				e.printStackTrace();
				return false;
			}
		        
		      
		    }
    
}
