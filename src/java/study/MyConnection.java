/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package study;
import java.sql.Connection;
import java.sql.DriverManager;
/**
 *
 * @author PC
 */
public class MyConnection {
    static Connection conn;

    public static Connection getConn() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/email_validation", "root", "");
        } catch (Exception e) {
            System.out.println("From my connection");
        }
        return conn;
    }
    public static Connection getConn1() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mojaaplikacijanovo", "root", "");
        } catch (Exception e) {
            System.out.println("From my connection");
        }
        return conn;
    }
    
    
}
