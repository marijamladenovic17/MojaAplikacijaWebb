/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package study;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author PC
 */
public class LoginDAO {
    LoginDAO(){}
    
    public String LoginCheck(LoginBean bean){
        Connection con = MyConnection.getConn();
        
        
        String email = bean.getEmail();
        String pword = bean.getPword();
        String newPword = bean.getNewPword();
        try{
            String upi = "select * from usertable where email=? and pword =? and active = 1";
            PreparedStatement pst = con.prepareStatement(upi);
            pst.setString(1, email);
            pst.setString(2, newPword);
            
            
            ResultSet rs = pst.executeQuery();
            while(rs.next()){
                String bdemail = rs.getString("email");
                String bdpword = rs.getString("pword");
                if(bdemail.equalsIgnoreCase(email) && bdpword.equalsIgnoreCase(newPword)){
                    return "success";
                }else{
                    return "error";
                }
            }
       }catch(Exception e){
            System.out.println("From LoginDAO "+e);
        }
        return "error";
    }
}
