<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <nav class="navbar is-link" role="navigation" aria-label="main navigation">
        <p class="navbar-start">
            <a class="navbar-item is-size-2" href="accueil">CovidApp</a>
            <span class="navbar-item">si tu le chope, on te chope !</span>
        </p>
        <p class="navbar-end">
            <a class="navbar-item" href="accueil">Accueil</a>
            <% if(request.getSession().getAttribute("user") != null) { %>
            <a class="navbar-item" href="activite">Activités</a>
            <a class="navbar-item" href="notification">Notifications</a>
            <a class="navbar-item" href="amis">Amis</a>
            <a class="navbar-item" href="profil">Mon Profil</a>
            <a class="navbar-item" href="deconnexion">Déconnexion</a>
            <% } else { %>
            <a class="navbar-item" href="connexion">S'inscrire / Se connecter</a>
            <% } %>
        </p>
    </nav>
</header>
