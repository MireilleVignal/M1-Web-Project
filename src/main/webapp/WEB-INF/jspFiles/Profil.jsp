<%@ page import="com.projet.projet.model.Utilisateur" %>
<%--
  Created by IntelliJ IDEA.
  User: neko-tenshi
  Date: 06/01/2022
  Time: 09:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="fr">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width:device-width, initial-scale=1.0" />
    <title>Profil</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css" />
    <script src="https://kit.fontawesome.com/cabd9486f7.js" crossorigin="anonymous"></script>
</head>

<body class="accueil">
<%@include file="header.jsp"%>

<main class="columns is-centered my-6">
    <section class="column is-10">

        <div class="columns  is-centered  is-multiline">

            <article class="column is-4-desktop is-full-tablet">
                <figure  class="image is-128x128 mb-6">
                    <img src="https://bulma.io/images/placeholders/96x96.png" alt="avatar utilisateur" />
                </figure>


                <label for="editAvatarId" class="subtitle is-5">Choisir un avatar :</label>
                <form class="field my-3" method="POST" action="profil" id="formEditAvatarId">
                    <input type="text" class="input is-dark" name="editAvatar" id="editAvatarId" placeholder="Modifier votre Avatar..." />
                    <input type="submit" class="button is-info mt-3" onclick="" value="Envoyer l'avatar" />
                </form>

                <h3 class="subtitle is-5 mt-6">Date de naissance :
                        <% Utilisateur user = (Utilisateur) request.getSession().getAttribute("user");
                        out.write((user.getBirthday().toString())); %></h3>


                <form class="mt-6 buttons is-centered" method="POST" action="profil" id="positivButtonId">
                    <input type="submit" class="button is-success is-medium is-rounded" name="positivButton" value="Je suis positif !"/>
                </form>

            </article>

            <article class="column is-5-desktop is-offset-1-desktop is-full-tablet">
                <h2 class="title is-3 has-text-centered mb-6">Vos informations</h2>

                <label for="editLoginId" class="subtitle is-5">Votre Login :<% out.write(user.getLogin()); %></label>
                <form class="field is-grouped my-3" method="POST" action="profil" id="formEditLoginId">
                    <input type="text" class="input is-dark" name="editLogin" id="editLoginId" placeholder="Modifier votre login..." />
                    <input type="submit" class="button is-info ml-3" value="Modifier" onclick="">
                </form>

                <label for="editLastNameId" class="subtitle is-5">Votre Nom :<% out.write(user.getName());%></label>
                <form class="field is-grouped my-3" method="POST" action="profil" id="formEditLastNameId">
                    <input type="text" class="input is-dark" name="editLastName" id="editLastNameId" placeholder="Modifier votre nom..." />
                    <input type="submit" class="button is-info ml-3" value="Modifier" onclick="">
                </form>

                <label for="editFirstNameId" class="subtitle is-5">Votre Prénom :<% out.write(user.getFirstName());%></label>
                <form class="field is-grouped my-3" method="POST" action="profil" id="formEditFirstNameId">
                    <input type="text" class="input is-dark" name="editFirstName" id="editFirstNameId" placeholder="Modifier votre prénom..." />
                    <input type="submit" class="button is-info ml-3" value="Modifier" onclick="">
                </form>

                <hr>

                <p class="title is-4 has-text-centered">Changer votre mot de passe : </p>

                <form class="field" method="POST" action="profil" id="formEditPasswordId">
                    <label for="oldPasswordId">Ancien mot de passe : </label>
                    <p class="control has-icons-left">
                        <input type="password" class="input mb-3 is-dark" name="oldPassword" id="oldPasswordId" placeholder="Ancien mot de passe..." />
                        <span class="icon is-small is-left">
                                        <i class="fas fa-lock"></i>
                                    </span>
                    </p>
                    <label for="editPasswordId">Nouveau mot de passe : </label>
                    <p class="control has-icons-left">
                        <input type="password" class="input mb-3 is-dark" name="editPassword" id="editPasswordId" placeholder="Nouveau mot de passe..." />
                        <span class="icon is-small is-left">
                                        <i class="fas fa-lock"></i>
                                    </span>
                    </p>
                    <label for="editPasswordConfirmId">Confirmer le mot de passe : </label>
                    <p class="control has-icons-left">
                        <input type="password" class="input is-dark" name="editPasswordConfirm" id="editPasswordConfirmId" placeholder="Confirmer le mot de passe..." />
                        <span class="icon is-small is-left">
                                        <i class="fas fa-lock"></i>
                                    </span>
                    </p>
                </form>
                <div class="level-right">
                    <input type="submit" class="button is-info" value="Modifier" onclick="editUserPassword()">
                </div>
                <form class="level-right mt-3" method="POST" action="" id="formDeleteUserId">
                    <input type="submit" class="button is-danger" name="deleteAccount" value="Supprimer mon compte"/>
                </form>
            </article>
        </div>
    </section>
</main>

<%@include file="footer.jsp"%>

</body>

</html>