/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionManager {
    //Hardcode-ovane vrednosti mogle bi biti izvucene iz nekog conf fajla.
    private static String url = "jdbc:mysql://localhost:3306/catering";    
    private static String driver = "com.mysql.cj.jdbc.Driver";   
    private static String username = "root";   
    private static String password = "";
    private static Connection con;
  
    // Vrsi konekciju na bazu catering i vraca Connection objekat
    public static Connection getConnection() {
        try {
            Class.forName(driver);
            try {
                con = DriverManager.getConnection(url, username, password);
               
            } catch (SQLException ex) {
                System.out.println("Greska pri kreiranju konekcije"); 
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("Driver nije pronadjen"); 
        }
         return con;
    }
}
