<%-- 
    Document   : mostrarTabla
    Created on : 19/11/2023, 11:13:21 a. m.
    Author     : David Gomez
--%>

<%@page import="java.util.List"%>
<%@page import="model.Pelicula"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mostrar Tabla</title>
</head>
<body>
    
    <h1>Tabla de Películas</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Autor</th>
            </tr>
        </thead>
        <tbody>
            <%-- Obtén la lista de películas del atributo de solicitud --%>
            <% List<Pelicula> listaPeliculas = (List<Pelicula>) request.getAttribute("listaPeliculas"); %>
            <c:out value="Tamaño de la lista: ${listaPeliculas.size()}" />
            <%-- Itera sobre la lista y llena la tabla --%>
            <c:forEach var="pelicula" items="${listaPeliculas}">
                <tr>
                    
                    <td>${pelicula.getnombre()}</td>
                    <td>${pelicula.descripcion}</td>
                    <td>ddd</td>
                </tr>
            </c:forEach>
                    
            <c:forEach var="peli" items="${listaPelicula}">

      <tr>
       <td><c:out value="${peli.nombre}" /></td>
       <td><c:out value="${peli.autor}" /></td>
       <td><c:out value="${peli.foto}" /></td>

       <td><a href="edit?id=<c:out value='${todo.id}' />">Edit</a>
        &nbsp;&nbsp;&nbsp;&nbsp; <a
        href="delete?id=<c:out value='${todo.id}' />">Delete</a></td>

       <!--  <td><button (click)="updateTodo(todo.id)" class="btn btn-success">Update</button>
                 <button (click)="deleteTodo(todo.id)" class="btn btn-warning">Delete</button></td> -->
      </tr>
     </c:forEach>
        </tbody>
    </table>
                 <script>
        // Función para simular un clic en el botón cuando la página se carga
        function ejecutarBoton() {
            document.getElementById("preteter").click();
            
        }
    </script>
</body>
</html>
