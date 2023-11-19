<%-- 
    Document   : testlist
    Created on : 19/11/2023, 2:28:09 p. m.
    Author     : David Gomez
--%>

<%@page import="java.util.List"%>
<%@page import="model.Pelicula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>ggggg</h1>
        <%
        List<Pelicula> listaPeliculas = (List<Pelicula>) request.getSession().getAttribute("listaPeliculas");
        for (Pelicula peli:listaPeliculas) {
                out.println(peli.getNombre());
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
