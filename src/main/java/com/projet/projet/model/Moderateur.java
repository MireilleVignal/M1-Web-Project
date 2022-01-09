package com.projet.projet.model;

import java.util.Date;

public class Moderateur extends Utilisateur {
    public Moderateur(String login, String password, String nom, String prenom, Date birthday) {
        super(login, password, nom, prenom, birthday);
    }

    public Moderateur(String login) {
        super(login);
    }

    public Moderateur(String login, String password) {
        super(login, password);
    }

    public void deleteActivity() {}

    public void deletePlace() {}

    public void deleteUser() {}

    public void modifyActivity() {}

    public void modifyPlace() {}

    public void modifyUser() {}
}
