<%-- 
    Document   : lista.jsp
    Created on : 18/11/2023, 4:23:29 p. m.
    Author     : David Gomez
--%>

<%@page import="java.util.List"%>
<%@page import="model.Pelicula"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Catalogo</title>

        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link rel="stylesheet" href="./css/styles.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>

    <body>
        <%@ include file="header.jsp" %>
        <main>
            <div class="container mt-5">
                <div class="row" action="Peliculas" method="POST">



                    <%
                        List<Pelicula> listaPeliculas = (List<Pelicula>) request.getAttribute("listaPeliculas");

                        for (Pelicula pelicula : listaPeliculas) {%>
                    <div class="col-4">
                        <div class="card mb-4">
                            <a href="#!"><img class="card-img-top" src="<%= pelicula.getFoto()%>" alt="..."/></a>
                            <div class="card-body">
                                <div class="small text-muted">Calificacion</div>
                                <h2 class="card-title h4"><%= pelicula.getNombre()%></h2>
                                <p class="card-text"><%= pelicula.getAutor()%></p>
                                <p class="card-text"><%= pelicula.getDescripcion()%></p>
                                <!-- Agregamos un atributo data con la ID de la película -->
                               <a class="btn btn-primary" href="#calificarModal<%= pelicula.getId_pelicula()%>" data-toggle="modal" data-target="#calificarModal<%= pelicula.getId_pelicula()%>" data-pelicula-id="<%= pelicula.getId_pelicula()%>">Calificar</a>
                                
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="calificarModal<%= pelicula.getId_pelicula()%>" tabindex="-1" role="dialog" aria-labelledby="calificarModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="calificarModalLabel">Calificar Película</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <!-- Formulario de calificación -->
                                    <form id="calificarForm" action="calificar" method="POST">
                                        <input type="hidden" id="peliculaId" name="peliculaId" value="<%= pelicula.getId_pelicula()%>">
                                        <div class="form-group">
                                            <label for="calificacion">Calificación:</label>
                                            <output id="calificacionValor">6</output>
                                            <input type="range" class="form-range" id="calificacion" name="calificacion" min="1" max="10" step="1" required>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Enviar Calificación</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% }
                        /**/%>




                </div>
            </div>
            <div class="container cod1" id="PeliculasContainer">
                <!-- Productos se cargarán aquí dinámicamente con JavaScript -->
            </div>

            <!-- Button trigger modal -->

        </main>
        <footer class="py-5 " id="navbarPropio">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; CineMax El Vandolero</p></div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
        <script src="./JavaScript/modal.js"></script>
    </body>

</html>
