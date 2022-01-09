package com.projet.projet.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Utilisateur {
    private String login;
    private String password;
    private String name;
    private String firstName;
    private Date birthday;
    private String url;

    public Utilisateur(String login, String password, String nom, String prenom, Date birthday) {
        this.login = login;
        this.password = password;
        this.name = nom;
        this.firstName = prenom;
        this.birthday = birthday;
    }

    public Utilisateur(String login) {
        this.login = login;
    }

    public Utilisateur(String login, String password) {
        this.login = login;
        this.password = password;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getUrl() {
        return this.url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
