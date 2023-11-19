/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servelt;

import control.operations;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "MostrarTablaServlet", urlPatterns = {"/MostrarTablaServlet"})
public class MostrarTablaServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtén la lista de películas
        operations BD = new operations();
        List<Pelicula> listaPeliculas = BD.getPeliculasDB();
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println("Tamaño de la lista: " + listaPeliculas.size());
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        if (listaPeliculas != null) {
            // Almacena la lista como un atributo de solicitud
            request.setAttribute("listaPeliculas", listaPeliculas);

            // Redirige a la JSP que mostrará la tabla
            RequestDispatcher dispatcher = request.getRequestDispatcher("mostrarTabla.jsp");
            dispatcher.forward(request, response);
        } else {
            // Maneja el caso en el que la lista es null (puedes redirigir a una página de error, por ejemplo)
            response.sendRedirect("paginaDeError.jsp");
        }
    }
}