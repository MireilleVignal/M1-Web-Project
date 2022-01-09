package com.projet.projet;

import com.projet.projet.model.Lieu;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "Activite", value = "/activite")
public class Activite extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/jspFiles/Activite.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("newActivity");
        String lieu = request.getParameter("newPlace");

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        String debut = request.getParameter("beginTime");
        String fin = request.getParameter("endTime");

        Date begin = new Date();
        Date end = new Date();

        try {
            begin = sdf.parse(debut);
            end = sdf.parse(fin);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Lieu l = new Lieu();
        l.setAdresse(lieu);

        com.projet.projet.model.Activite a = new com.projet.projet.model.Activite(name, l, begin, end);
    }
}
