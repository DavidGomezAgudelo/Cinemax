<%-- 
    Document   : header
    Created on : 18/11/2023, 6:36:17 p. m.
    Author     : David Gomez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <header>
            <nav class="navbar navbar-expand-lg navbar-dark" id="navbarPropio">
                <div class="container">
                    <a class="navbar-brand" href="#!">Catalogo de las peliculas mas taquilleras</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <li class="nav-item"><a class="nav-link" href="index.jsp">Inicio</a></li>
                            <li class="nav-item"><a class="nav-link" href="lista.jsp">Catalogo</a></li>
                            <li class="nav-item"><a class="nav-link" href="registro.jsp">Registro</a></li>
                            <li class="nav-item">
                    <form class="nav-link" action="${pageContext.request.contextPath}/Peliculas" method="get">
                        <button type="submit" class="btn btn-link">Catalogo</button>
                    </form>
                </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
</html>
