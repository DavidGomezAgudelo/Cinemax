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

        <link rel="icon" type="image/x-icon" href="css/claqueta.png" />
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
                        List<Double> promedios = (List<Double>) request.getAttribute("promedios");

                        for (int i = 0; i < listaPeliculas.size(); i++) {
                            Pelicula pelicula = listaPeliculas.get(i);
                            Double promedio = promedios.get(i);

                    %>
                    <div class="col-4">
                        <div class="card mb-4">
                            <a href="#!"><img class="card-img-top" src="<%= pelicula.getFoto()%>" alt="..."/></a>
                            <div class="card-body">
                                <div class="small text-muted">Calificacion: <%=promedio%></div>
                                <h2 class="card-title h4"><%= pelicula.getNombre()%></h2>
                                <p class="card-text"><%= pelicula.getAutor()%></p>
                                <p class="card-text"><%= pelicula.getDescripcion()%></p>
                                <!-- Agregamos un atributo data con la ID de la película -->
                                <a class="btn btn-primary" href="#calificarModal<%= pelicula.getId_pelicula()%>" data-toggle="modal" data-target="#calificarModal<%= pelicula.getId_pelicula()%>" data-pelicula-id="<%= pelicula.getId_pelicula()%>">Calificar</a>
                                <a class="btn btn-warning" href="#editarModal<%= pelicula.getId_pelicula()%>" data-toggle="modal" data-target="#editarModal<%= pelicula.getId_pelicula()%>" data-pelicula-id="<%= pelicula.getId_pelicula()%>">Editar</a>
                                <a class="btn btn-danger" href="#" data-toggle="modal" data-target="#eliminarModal<%= pelicula.getId_pelicula()%>" data-pelicula-id="<%= pelicula.getId_pelicula()%>">Eliminar</a>

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
                                            <output id="calificacionValor<%= pelicula.getId_pelicula()%>">6</output>
                                            <input type="range" class="form-range" id="calificacion<%= pelicula.getId_pelicula()%>" name="calificacion" min="1" max="10" step="1" required data-pelicula-id="<%= pelicula.getId_pelicula()%>">
                                        </div>

                                        <button type="submit" class="btn btn-primary">Enviar Calificación</button>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="editarModal<%= pelicula.getId_pelicula()%>" tabindex="-1" role="dialog" aria-labelledby="editarModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editarModalLabel">Calificar Película</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <!-- Formulario de calificación -->

                                    <form  id="editarForm" action="Editar" method="post">
                                        <input type="hidden" id="peliculaId" name="peliculaId" value="<%= pelicula.getId_pelicula()%>">
                                        <div class="mb-3">
                                            <label class="form-label" for="nombreDeLaPelicula" >Nombre De la Pelicula</label>
                                            <input class="form-control" type="text" name="nombre" value="<%= pelicula.getNombre()%>" required/>
                                            <div class="invalid-feedback" data-sb-feedback="nombreDeLaPelicula:required">Nombre De la Pelicula es obligatoria.</div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="nombreDelAutor">Nombre del Autor</label>
                                            <input class="form-control"  type="text" name="autor" value="<%= pelicula.getAutor()%>" required />
                                            <div class="invalid-feedback" data-sb-feedback="nombreDelAutor:required">Nombre del Autor es obligatoria.</div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="linkFoto">Link Foto</label>
                                            <textarea class="form-control" type="text" name="link" style="height: 10rem;" required"><%=pelicula.getFoto()%></textarea>
                                            <div class="invalid-feedback" data-sb-feedback="linkFoto:required">Link Foto es obligatoria.</div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="descripcion">Descripcion</label>
                                            <textarea class="form-control" id="descripcion" type="text" name="descripcion" style="height: 10rem;" required><%= pelicula.getDescripcion()%></textarea>
                                            <div class="invalid-feedback" data-sb-feedback="descripcion:required">Descripcion es obligatoria.</div>
                                        </div>
                                        <div class="d-none" id="submitSuccessMessage">
                                            <div class="text-center mb-3">
                                                <div class="fw-bolder">EXITO!</div>
                                            </div>
                                        </div>
                                        <div class="d-none" id="submitErrorMessage">
                                            <div class="text-center text-danger mb-3">Error sending message!</div>
                                        </div>
                                        <div class="d-grid">
                                            <button class="btn bg-warning btn-lg" type="submit">ENVIAR</button>
                                        </div>
                                    </form>    
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="eliminarModal<%= pelicula.getId_pelicula()%>" tabindex="-1" role="dialog" aria-labelledby="eliminarModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="eliminarModalLabel">Confirmar Eliminación</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p>¿Estás seguro de que deseas eliminar esta película?</p>
                                </div>
                                <div class="modal-footer">
                                    <!-- Utilizamos un formulario para la eliminación -->
                                    <form id="eliminarForm<%= pelicula.getId_pelicula()%>" action="Eliminar" method="POST">
                                        <input type="hidden" name="id_eliminar" value="<%= pelicula.getId_pelicula()%>">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                        <button type="submit" class="btn btn-danger">Eliminar</button>
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
