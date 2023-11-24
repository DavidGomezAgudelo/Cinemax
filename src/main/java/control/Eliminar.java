/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Pelicula;

/**
 *
 * @author David Gomez
 */
@WebServlet(name = "Eliminar", urlPatterns = {"/Eliminar"})
public class Eliminar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            System.out.println("<h1>aaa</h1>");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String id = request.getParameter("id_eliminar");
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println(id);
        operations BD = new operations();
        BD.deletePeliculaDB(Integer.parseInt(id));
        List<Pelicula> listaPeliculas=BD.getPeliculasDB();
        System.out.println("----------------------------------------------");
        System.out.println("Tamaño de la lista: " + listaPeliculas.size());
        System.out.println("----------------------------------------------");
        List<Double> promedios = BD.PromediosList(listaPeliculas);
        request.setAttribute("promedios", promedios);    
        request.setAttribute("listaPeliculas", listaPeliculas);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/lista.jsp");
        dispatcher.forward(request, response);
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
