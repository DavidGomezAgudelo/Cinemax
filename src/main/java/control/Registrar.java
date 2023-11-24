/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import model.Pelicula;

/**
 *
 * @author David Gomez
 */
@WebServlet(name = "Registar", urlPatterns = {"/Registar"})
public class Registrar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
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
        String nombre=request.getParameter("nombre");
        String descripcion=request.getParameter("descripcion");
        String foto=request.getParameter("link");
        String autor=request.getParameter("autor");
        Pelicula pelicula=new Pelicula(nombre,foto,autor,descripcion);
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println("----------------------------------------------");
        System.out.println("nombre: "+nombre);
        System.out.println("autor: "+autor);
        System.out.println("foto: "+foto);
        System.out.println("description: "+descripcion);
        operations BD = new operations();
        BD.addPeliculaDB(pelicula);
        response.sendRedirect("registro.jsp");
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
