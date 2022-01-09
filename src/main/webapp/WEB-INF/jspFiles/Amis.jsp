<%@ page import="java.util.ArrayList" %>
<%@ page import="com.projet.projet.model.Utilisateur" %>
<%@ page import="com.projet.projet.bdd.DatabaseOperator" %><%--
  Created by IntelliJ IDEA.
  User: neko-tenshi
  Date: 06/01/2022
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fr">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width:device-width, initial-scale=1.0" />
    <title>Entourage</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css" />
    <script src="https://kit.fontawesome.com/cabd9486f7.js" crossorigin="anonymous"></script>
    <style>
        .custom-boxes-container .box:last-child { margin-bottom: 1.5rem; }
    </style>
</head>

<body>
<%@include file="header.jsp"%>

<main class="py-6 columns">
    <div class="column is-6">
        <h2 class="title is-2 has-text-centered pb-5">Vos amis :</h2>
        <article class="columns is-multiline is-centered custom-boxes-container">
            <% Utilisateur user = (Utilisateur) request.getSession().getAttribute("user");
            DatabaseOperator bdd = new DatabaseOperator();
            ArrayList<String> friends = bdd.getFriends(user.getLogin());
                for (String s: friends) {%>
            <div class="card-content box column is-5 mx-3">
                <section class="media">
                    <div class="media-left">
                        <figure class="image is-48x48">
                            <img src="https://bulma.io/images/placeholders/96x96.png" alt="Placeholder image">
                        </figure>
                    </div>
                    <div class="media-content">
                        <h4 class="title is-4"><% out.write(s);%></h4>
                    </div>
                    <form method="post" action="amis">
                        <button type="submit" name="deleteFriend-<%out.write(s);%>" class="button is-danger is-rounded is-small media-right">
                            <span class="icon">
                                <i class="fas fa-users-slash"></i>
                            </span>
                            <span>Supprimer</span>
                        </button>
                    </form>
                </section>
            </div>
            <% } %>
        </article>
    </div>

    <div class="column is-6">
        <h2 class="title is-2 has-text-centered pb-5">Utilisateurs inscrits :</h2>
        <article class="columns is-multiline is-centered custom-boxes-container">
            <% ArrayList<String> users = bdd.getAllUsers();
                for (String s: users) {%>
            <div class="card-content box column is-5 mx-3">
                <section class="media">
                    <div class="media-left">
                        <figure class="image is-48x48">
                            <img src="https://bulma.io/images/placeholders/96x96.png" alt="Placeholder image">
                        </figure>
                    </div>
                    <div class="media-content">
                        <h4 class="title is-4"><% out.write(s);%></h4>
                    </div>
                    <form method="post" action="amis">
                        <button type="submit" name="addFriend-<%out.write(s);%>" class="button is-success is-rounded is-small media-right">
                            <span class="icon">
                                <i class="fas fa-users"></i>
                            </span>
                            <span>Ajouter</span>
                        </button>
                    </form>
                </section>
            </div>
            <% }%>
        </article>
    </div>

</main>

<%@include file="footer.jsp"%>

</body>

</html>
