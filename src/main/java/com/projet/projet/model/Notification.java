package com.projet.projet.model;

public class Notification {

    public Notification() {}

    public static String addFriend(String login) {
        StringBuilder sb = new StringBuilder();
        sb.append("Vous êtes désormais amis avec ");
        sb.append(login);
        sb.append(".");

        return sb.toString();
    }

    public static String removeFriend(String login) {
        StringBuilder sb = new StringBuilder();
        sb.append("Vous n'êtes plus amis avec ");
        sb.append(login);
        sb.append(".");

        return sb.toString();
    }

    public static String declareCovid(String login) {
        StringBuilder sb = new StringBuilder();
        sb.append(login);
        sb.append(" est positif au covid. Vous êtes un cas contact potentiel, veuillez vous faire tester au plus vite.");

        return sb.toString();
    }
}
