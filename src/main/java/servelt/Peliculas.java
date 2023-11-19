/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servelt;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Pelicula;
import control.operations;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.Min;

/**
 *
 * @author David Gomez
 */
@WebServlet(name = "Peliculas", urlPatterns = {"/Peliculas"})
public class Peliculas extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            operations BD = new operations();
//            List<Pelicula> peliculas = BD.getPeliculasDB();
//
//            
//            for(Pelicula pelicula:peliculas){
//            
//            out.println(" <div class=\"col-4\"> ");
//            out.println("<div class=\"card mb-4\">");
//            out.println("<a href=\"#!\"><img class=\"card-img-top\" src=\""+pelicula.getFoto()+"\" alt=\"...\"/></a> ");
//            out.println("<div class=\"card-body\">");
//            out.println("<div class=\"small text-muted\">Calificacion</div>");
//            out.println("<h2 class=\"card-title h4\">"+pelicula.getNombre()+"</h2>");
//            out.println("<p class=\"card-text\">"+pelicula.getAutor()+"</p>");
//            out.println("<p class=\"card-text\">"+pelicula.getDescripcion()+"</p>");
//            out.println("<a class=\"btn btn-primary\" href=\"#calificarModal\" data-toggle=\"modal\" data-target=\"#calificarModal\">Calificar</a>");
//            out.println("</div>");
//            out.println("</div>");
//            out.println("</div>");
//            }
//        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        operations BD = new operations();
        List<Pelicula> listaPeliculas=BD.getPeliculasDB();
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println("Tamaño de la lista: " + listaPeliculas.size());
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        //HttpSession misesion=request.getSession() ;
        request.setAttribute("listaPeliculas", listaPeliculas);
        //response.sendRedirect("lista.jsp");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/lista.jsp");
        dispatcher.forward(request, response);
        
    }
    //misession.setAttribute("peliculas",peliculas);
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        /*String input=request.getParameter("nombre");
        out.println(""+input);*/
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
