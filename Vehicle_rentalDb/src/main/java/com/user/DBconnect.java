package com.user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
    
    private static String url = "jdbc:mysql://localhost:3306/vehicle_rental_db";
    private static String userName = "root";
    private static String password = "Ridmi@2002";
    
    private static Connection con;

    
    private DBconnect() {}

    // Public method to provide global access to the single instance
    public static Connection getConnection() {
        if (con == null) {  // Check if instance is already created
            synchronized (DBconnect.class) { //thread Safety
                if (con == null) {
                    try {
                        Class.forName("com.mysql.jdbc.Driver"); // Updated Driver
                        con = DriverManager.getConnection(url, userName, password);
                        System.out.println("Database connection successful!");
                    } catch (Exception e) {
                        System.out.println("Database connection failed: " + e);
                    }
                }
            }
        }
        return con;
    }
}
