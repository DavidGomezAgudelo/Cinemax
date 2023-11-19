/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servelt;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author David Gomez
 */
@WebServlet(name = "Connection", urlPatterns = {"/Connection"})
public class Connection extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String datos = obtenerDatos();
        request.setAttribute("datos", datos);
        request.getRequestDispatcher("/miJSP.jsp").forward(request, response);
    }

    private String obtenerDatos() {
        // Lógica para obtener datos
        return "Estos son los datos obtenidos.";
    }
}