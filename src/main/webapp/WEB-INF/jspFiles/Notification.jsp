<%@ page import="com.projet.projet.model.Utilisateur" %>
<%@ page import="com.projet.projet.bdd.DatabaseOperator" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: neko-tenshi
  Date: 01/01/2022
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fr">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width:device-width, initial-scale=1.0" />
    <title>Notifications</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css" />
    <script src="https://kit.fontawesome.com/cabd9486f7.js" crossorigin="anonymous"></script>
</head>

<body class="accueil">
<%@include file="header.jsp"%>

<main class="columns is-centered my-6">
    <div class="column is-10">
        <article class="box columns is-vcentered my-4 py-1 px-2">
            <% Utilisateur user = (Utilisateur) request.getSession().getAttribute("user");
                DatabaseOperator bdd = new DatabaseOperator();
                ArrayList<String> notif = bdd.getNotification(user.getLogin());
                for (String s: notif) {%>
            <figure class="column is-narrow is-flex is-justify-content-center">
                <p class ="image is-128x128">
                    <img src="https://bulma.io/images/placeholders/96x96.png" alt="Placeholder image">
                </p>
            </figure>
            <div class="column">
                <p class="subtitle is-4 content has-text-justified">
                    <% out.write(s); %>
                </p>
            </div>
            <% } %>
        </article>
    </div>
</main>

<%@include file="footer.jsp"%>

</body>

</html>
