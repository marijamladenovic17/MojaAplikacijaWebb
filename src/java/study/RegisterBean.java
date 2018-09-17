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
public class RegisterBean {
    private String fname;
    private String llanme;
    private String email;
    private String pword;
    private String myhash;
    String pol;
    private String imeRoditelja;
    private String jmbg;
    private String mobilni;
    private String fiksni;

    public RegisterBean() {
    }

    public RegisterBean(String fname, String llanme, String email, String pword, String myhash, String imeRoditelja, String jmbg, String mobilni, String fiksni) {
        this.fname = fname;
        this.llanme = llanme;
        this.email = email;
        this.pword = pword;
        this.myhash = myhash;
        this.imeRoditelja = imeRoditelja;
        this.jmbg = jmbg;
        this.mobilni = mobilni;
        this.fiksni = fiksni;
    }

    public void setPol(String pol) {
        this.pol = pol;
    }

    public String getPol() {
        return pol;
    }

    
    
    

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLlanme() {
        return llanme;
    }

    public void setLlanme(String llanme) {
        this.llanme = llanme;
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

    public String getMyhash() {
        return myhash;
    }

    public void setMyhash(String myhash) {
        this.myhash = myhash;
    }

    public String getImeRoditelja() {
        return imeRoditelja;
    }

    public void setImeRoditelja(String imeRoditelja) {
        this.imeRoditelja = imeRoditelja;
    }

    public String getJmbg() {
        return jmbg;
    }

    public void setJmbg(String jmbg) {
        this.jmbg = jmbg;
    }

    public String getMobilni() {
        return mobilni;
    }

    public void setMobilni(String mobilni) {
        this.mobilni = mobilni;
    }

    public String getFiksni() {
        return fiksni;
    }

    public void setFiksni(String fiksni) {
        this.fiksni = fiksni;
    }
    
    
    
    
}
