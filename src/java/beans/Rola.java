/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

import java.io.Serializable;

public class Rola implements Serializable{

    private int rolaID;
    private String nazivRole;
    
    public Rola() {
    }

    public Rola(int rolaID, String nazivRole) {
        this.rolaID = rolaID;
        this.nazivRole = nazivRole;
    }
    
    public int getRolaID() {
        return rolaID;
    }

    public void setRolaID(int rolaID) {
        this.rolaID = rolaID;
    }

    public String getNazivRole() {
        return nazivRole;
    }

    public void setNazivRole(String nazivRole) {
        this.nazivRole = nazivRole;
    }
    
}

