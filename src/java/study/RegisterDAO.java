/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package study;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC
 */
public class RegisterDAO {

    public RegisterDAO() {
    }

    public String RegisterUser(RegisterBean rb) {
        String fname = rb.getFname();
        String lname = rb.getLlanme();
        String email = rb.getEmail();
        String pword = rb.getPword();
        String myhash = rb.getMyhash();
         String imeRoditelja = rb.getImeRoditelja();
        String jmbg = rb.getJmbg();
        String mobilni = rb.getMobilni();
        String fiksni = rb.getFiksni();
        String pol = rb.getPol();
        
        Connection conn = MyConnection.getConn();
        String sqlQuery = "insert into usertable(fname,lname,email,pword,hash,imeRoditelja,jmbg,pol,mobilni,fiksni) values(?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sqlQuery);
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, email);
            ps.setString(4, pword);
            ps.setString(5, myhash);
            ps.setString(6 , imeRoditelja);
            ps.setString(7, jmbg);
            ps.setString(8, pol);
            ps.setString(9, mobilni);
            ps.setString(10, fiksni);
            
            int i = ps.executeUpdate();
            
            if(i!=0){
                SendingEmail se = new SendingEmail(email,myhash);
                se.sendEmail();
                return "SUCCESS";
            }else {
                System.out.println("Greska");
            }
            
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return "error";
    }
}
