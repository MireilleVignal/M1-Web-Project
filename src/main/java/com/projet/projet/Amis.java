package com.projet.projet;

import com.projet.projet.bdd.DatabaseOperator;
import com.projet.projet.model.Notification;
import com.projet.projet.model.Utilisateur;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.xml.crypto.Data;
import java.io.IOException;

@WebServlet(name = "Amis", value = "/amis")
public class Amis extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/jspFiles/Amis.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Utilisateur user = (Utilisateur) request.getSession().getAttribute("user");
        DatabaseOperator bdd = new DatabaseOperator();

        if (request.getParameter("deleteFriend") != null) {
            bdd.removeFriend(request.getParameter("deleteFriend").split("-", 2)[1]);
            bdd.addNotification(request.getParameter("deleteFriend").split("-", 2)[1], Notification.removeFriend(user.getLogin()));
        }

        if (request.getParameter("addFriend") != null) {
            bdd.addFriend(user.getLogin(), request.getParameter("addFriend").split("-", 2)[1]);
            bdd.addNotification(request.getParameter("deleteFriend").split("-", 2)[1], Notification.addFriend(user.getLogin()));
        }

        doGet(request, response);
    }
}
