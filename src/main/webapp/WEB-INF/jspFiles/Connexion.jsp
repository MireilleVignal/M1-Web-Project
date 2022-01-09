<%--
  Created by IntelliJ IDEA.
  User: neko-tenshi
  Date: 03/12/2021
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="fr">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width:device-width, initial-scale=1.0" />
    <title>Connexion</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.9.3/css/bulma.min.css" />
    <script src="https://kit.fontawesome.com/cabd9486f7.js" crossorigin="anonymous"></script>
</head>

<body>

<%@include file="header.jsp"%>
<main class="columns is-centered is-gapless">

    <div class="column is-9">
        <article class="columns is-vcentered px-6">
            <section class="column section">

                <form class="box" method="post" action="connexion" id="formConnexionId">
                    <h3 class="title is-3 has-text-centered">Se connecter</h3>

                    <div class="field">
                        <label class="label" for="userLoginId">Login :</label>
                        <div class="control">
                            <input class="input is-dark" type="text" name="userLogin" id="userLoginId" placeholder="Votre login...">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label" for="userPasswordId">Mot de passe : </label>
                        <div class="control">
                            <input class="input is-dark" type="password" name="userPassword" id="userPasswordId" placeholder="Votre mot de passe...">
                        </div>
                        <a class="level-right mt-2" href="#">Mot de passe oublié ?</a>
                    </div>

                    <div class="field  has-text-centered">
                        <div class="control">
                            <input type="submit" class="button is-link" value="Se connecter"/>
                        </div>
                    </div>
                </form>
            </section>

            <section class="column is-offset-1 section">

                <form class="box" method="post" action="inscription" id="formInscriptionId">
                    <h3 class="title is-3 has-text-centered">S'inscrire</h3>

                    <div class="field">
                        <label class="label" for="userLoginInscriptionId">Login :</label>
                        <div class="control">
                            <input class="input is-dark" type="text" name="userLoginInscription" id="userLoginInscriptionId" placeholder="Votre login...">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label" for="userLastNameInscriptionId">Nom :</label>
                        <div class="control">
                            <input class="input is-dark" type="text" name="userLastNameInscription" id="userLastNameInscriptionId" placeholder="Votre nom...">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label" for="userFirstNameInscriptionId">Prénom :</label>
                        <div class="control">
                            <input class="input is-dark" type="text" name="userFirstNameInscription" id="userFirstNameInscriptionId" placeholder="Votre prénom...">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label" for="userBirthdayInscriptionId">Date de naissance :</label>
                        <div class="control">
                            <input class="input is-dark" type="date" name="userBirthdayInscription" id="userBirthdayInscriptionId" placeholder="Votre date de naissance...">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label" for="userPasswordInscriptionId">Mot de passe :</label>
                        <div class="control">
                            <input class="input is-dark" type="password" name="userPasswordInscription" id="userPasswordInscriptionId" placeholder="Votre mot de passe...">
                        </div>
                    </div>

                    <div class="field">
                        <label class="label" for="userCheckPasswordInscriptionId">Confirmez votre mot de passe :</label>
                        <div class="control">
                            <input class="input is-dark" type="password" name="userCheckPasswordInscription" id="userCheckPasswordInscriptionId" placeholder="Confirmation...">
                        </div>
                    </div>

                    <div class="control has-text-centered">
                        <input type="submit" class="button is-link" value="S'inscrire"/>
                    </div>
                </form>
            </section>
        </article>
    </div>

</main>

<%@include file="footer.jsp"%>

</body>

</html>

