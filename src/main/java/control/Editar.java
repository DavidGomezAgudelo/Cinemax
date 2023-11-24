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
@WebServlet(name = "Editar", urlPatterns = {"/Editar"})
public class Editar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
        String id=request.getParameter("peliculaId");
        String nombre=request.getParameter("nombre");
        String descripcion=request.getParameter("descripcion");
        String foto=request.getParameter("link");
        String autor=request.getParameter("autor");
        Pelicula pelicula=new Pelicula(nombre,foto,autor,descripcion);
        pelicula.setId_pelicula(Integer.parseInt(id));
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println("id: "+id);
        System.out.println("nombre: "+nombre);
        System.out.println("autor: "+autor);
        System.out.println("foto: "+foto);
        System.out.println("description: "+descripcion);
        
        operations BD = new operations();
        BD.updatePeliculaDB(pelicula);
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
