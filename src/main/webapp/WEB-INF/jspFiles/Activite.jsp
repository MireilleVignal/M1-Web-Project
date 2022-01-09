<%@ page import="com.projet.projet.model.Utilisateur" %>
<%@ page import="com.projet.projet.bdd.DatabaseOperator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.projet.projet.model.Activite" %><%--
  Created by IntelliJ IDEA.
  User: neko-tenshi
  Date: 06/01/2022
  Time: 20:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fr">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width:device-width, initial-scale=1.0" />
    <title>Activités</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css" />
    <script src="https://kit.fontawesome.com/cabd9486f7.js" crossorigin="anonymous"></script>
</head>

<body>

<%@include file="header.jsp"%>

<main class="">

    <article class="columns is-centered is-vcentered px-6">

        <section class="column is-4 section">

            <form class="box" method="post" action="" id="formActivityId">
                <h3 class="title is-3 has-text-centered">Renseigner une nouvelle activité</h3>

                <div class="field">
                    <label class="label" for="newPlaceId">Lieu :</label>
                    <div class="control">
                        <input class="input is-dark" type="text" name="newPlace" id="newPlaceId" placeholder="Le lieu de votre activité...">
                    </div>
                </div>

                <div class="field">
                    <label class="label" for="newActivityId">Nom de l'activité :</label>
                    <div class="control">
                        <input class="input is-dark" type="text" name="newActivity" id="newActivityId" placeholder="Le nom de votre activité...">
                    </div>
                </div>

                <div class="field">
                    <label class="label" for="beginTimeId">Début :</label>
                    <div class="control">
                        <input class="input is-dark" type="datetime-local" name="beginTime" id="beginTimeId" placeholder="Votre nom...">
                    </div>
                </div>

                <div class="field">
                    <label class="label" for="endTimeId">Fin :</label>
                    <div class="control">
                        <input class="input is-dark" type="datetime-local" name="endTime" id="endTimeId" placeholder="Votre prénom...">
                    </div>
                </div>

                <div class="control has-text-centered">
                    <input type="submit" class="button is-link" value="Envoyer ma nouvelle activité"/>
                </div>
            </form>
        </section>
    </article>

    <h3 class="title is-3 has-text-centered">Liste des dernières activités : </h3>

    <article class="columns is-centered">
        <table class="table is-striped is-hoverable has-text-centered mt-3 mb-6">
            <thead>
            <tr>
                <th><abbr title="Lieu">Lieu</abbr></th>
                <th><abbr title="Activité">Activité</abbr></th>
                <th><abbr title="Date">Date</abbr></th>
                <th><abbr title="HeureDebut">Heure de début</abbr></th>
                <th><abbr title="HeureFin">Heure de fin</abbr></th>
            </tr>
            </thead>
            <tbody>
            <% Utilisateur user = (Utilisateur) request.getSession().getAttribute("user");
                DatabaseOperator bdd = new DatabaseOperator();
                ArrayList<Activite> activities = bdd.getActivity(user.getLogin());
                for (Activite a: activities) {%>
            <tr>
                <td><% out.write(a.getLieu().getNom());%>></td>
                <td><% out.write(a.getNom());%>></td>
                <td>Date de l'activité</td>
                <td><% out.write(a.getDebut().toString());%>></td>
                <td><% out.write(a.getFin().toString());%>></td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </article>

</main>

<%@include file="footer.jsp"%>

</body>

</html>
