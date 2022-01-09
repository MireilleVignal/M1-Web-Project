package com.projet.projet;

import com.projet.projet.bdd.DatabaseOperator;
import com.projet.projet.model.Notification;
import com.projet.projet.model.Utilisateur;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "Profil", value = "/profil")
public class Profil extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/jspFiles/Profil.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Utilisateur user = (Utilisateur) request.getSession().getAttribute("user");
        DatabaseOperator bdd = new DatabaseOperator();

        if(request.getParameter("editAvatar") != null) {
            bdd.modifyUserAvatar(user.getLogin(), request.getParameter("editAvatar"));
        }

        if(request.getParameter("positivButton") != null) {
            ArrayList<String> friends = bdd.getFriends(user.getLogin());

            for (String ami: friends) {
                bdd.addNotification(ami, Notification.declareCovid(user.getLogin()));
            }
        }

        if(request.getParameter("editLogin") != null) {
            bdd.modifyLogin(user.getLogin(), request.getParameter("editLogin"));
            user.setLogin(request.getParameter("editLogin"));
        }

        if(request.getParameter("editLastName") != null) {
            bdd.modifyLastName(user.getLogin(), request.getParameter("editLastName"));
            user.setName(request.getParameter("editLastName"));
        }

        if(request.getParameter("editFirstName") != null) {
            bdd.modifyFirstName(user.getLogin(), request.getParameter("editFirstName"));
            user.setFirstName(request.getParameter("editFirstName"));
        }

        if(request.getParameter("editPassword") != null) {
            bdd.modifyPassword(user.getLogin(), request.getParameter("editPassword"));
        }

        if(request.getParameter("delateAccount") == null) {
            doGet(request, response);
        }
        else {
            bdd.deleteUser(user.getLogin());
            request.getSession().removeAttribute("user");

            this.getServletContext().getRequestDispatcher("/WEB-INF/jspFiles/Accueil.jsp").forward(request, response);
        }
    }
}
