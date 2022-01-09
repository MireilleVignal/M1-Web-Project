package com.projet.projet;

import com.projet.projet.bdd.DatabaseOperator;
import com.projet.projet.model.Utilisateur;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "Inscription", value = "/inscription")
public class Inscription extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DatabaseOperator bdd = new DatabaseOperator();

        String login = request.getParameter("userLoginInscription");
        String name = request.getParameter("userLastNameInscription");
        String firstName = request.getParameter("userFirstNameInscription");
        String password = request.getParameter("userPasswordInscription");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String birth = request.getParameter("userBirthdayInscription");
        Date birthday = new Date();
        try {
            birthday = sdf.parse(birth);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        bdd.addUser(login, name, firstName, new java.sql.Date(birthday.getTime()), password);

        HttpSession session = request.getSession();
        Utilisateur user = new Utilisateur(login, password, name, firstName, birthday);
        session.setAttribute("user", user);

        this.getServletContext().getRequestDispatcher("/WEB-INF/jspFiles/Profil.jsp").forward(request, response);
    }
}
