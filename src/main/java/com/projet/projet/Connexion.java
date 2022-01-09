package com.projet.projet;

import com.projet.projet.bdd.DatabaseOperator;
import com.projet.projet.model.Utilisateur;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Connexion", value = "/connexion")
public class Connexion extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/jspFiles/Connexion.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("userLogin");
        String password = request.getParameter("userPassword");

        DatabaseOperator bdd = new DatabaseOperator();

        HttpSession session = request.getSession();

        Utilisateur user = bdd.getUser(login, password);

        session.setAttribute("user", user);

        this.getServletContext().getRequestDispatcher("/WEB-INF/jspFiles/Profil.jsp").forward(request, response);
    }
}
