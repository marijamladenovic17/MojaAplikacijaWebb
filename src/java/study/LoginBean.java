/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package study;

/**
 *
 * @author PC
 */
public class LoginBean {
    private String email;
    private String pword;
    private String newPword;

    public LoginBean(String email, String pword, String newPword) {
        this.email = email;
        this.pword = pword;
        this.newPword = newPword;
    }
    
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPword() {
        return pword;
    }

    public void setPword(String pword) {
        this.pword = pword;
    }

    public String getNewPword() {
        return newPword;
    }

    public void setNewPword(String newPword) {
        this.newPword = newPword;
    }
    
    
}
