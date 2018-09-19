/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package novo;

/**
 *
 * @author PC
 */
public class Obavestenje {
    private int obavestenjeID;
    private String text;
    private String naslov;

    public Obavestenje() {
    }

    public Obavestenje(int obavestenjeID, String text, String naslov) {
        this.obavestenjeID = obavestenjeID;
        this.text = text;
        this.naslov = naslov;
    }

    public String getNaslov() {
        return naslov;
    }

    public void setNaslov(String naslov) {
        this.naslov = naslov;
    }

    public int getObavestenjeID() {
        return obavestenjeID;
    }

    public void setObavestenjeID(int obavestenjeID) {
        this.obavestenjeID = obavestenjeID;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }
    
    
}
