package com.projet.projet.model;

public class Lieu {
    private String nom;
    private String adresse;
    private String ville;
    private int codePostal;

    public Lieu(String nom, String adresse, String ville, int codePostal) {
        this.nom = nom;
        this.adresse = adresse;
        this.ville = ville;
        this.codePostal = codePostal;
    }

    public Lieu() {}

    public String getNom() {
        return nom;
    }

    public String getAdresse() {
        return adresse;
    }

    public String getVille() {
        return ville;
    }

    public int getCodePostal() {
        return codePostal;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public void setCodePostal(int codePostal) {
        this.codePostal = codePostal;
    }

    public String getCompleteAdress() {
        StringBuilder sb = new StringBuilder();

        sb.append(adresse);
        sb.append("\n");
        sb.append(codePostal);
        sb.append(" ");
        sb.append(ville);

        return sb.toString();
    }
}
