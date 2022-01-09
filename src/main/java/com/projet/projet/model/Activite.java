package com.projet.projet.model;

import java.util.Date;

public class Activite {
    private String nom;
    private Lieu lieu;
    private Date debut;
    private Date fin;

    public Activite(String nom, Lieu lieu, Date debut, Date fin) {
        this.nom = nom;
        this.lieu = lieu;
        this.debut = debut;
        this.fin = fin;
    }

    public Activite() {}

    public String getNom() {
        return nom;
    }

    public Lieu getLieu() {
        return lieu;
    }

    public Date getDebut() {
        return debut;
    }

    public Date getFin() {
        return fin;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setLieu(Lieu lieu) {
        this.lieu = lieu;
    }

    public void setDebut(Date debut) {
        this.debut = debut;
    }

    public void setFin(Date fin) {
        this.fin = fin;
    }
}
