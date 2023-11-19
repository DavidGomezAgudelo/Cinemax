<%-- 
    Document   : miJSP
    Created on : 19/11/2023, 3:32:12 p. m.
    Author     : David Gomez
--%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Lista desde Servlet</title>
</head>
<body>
    <h2>Lista de Elementos</h2>
    <ul>
        <% 
            List<String> listaElementos = (List<String>)request.getAttribute("listaElementos");
            for (String elemento : listaElementos) {
                out.println("<li>" + elemento + "</li>");
            }
        %>
    </ul>
</body>
</html>