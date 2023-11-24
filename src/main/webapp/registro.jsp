<%-- 
    Document   : registro
    Created on : 18/11/2023, 4:24:41 p. m.
    Author     : David Gomez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Registro</title>
        <link rel="icon" type="image/x-icon" href="css/claqueta.png" />
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    </head>

    <body>
        
         <%@ include file="header.jsp" %>
         
         <%
         // id="contactForm" data-sb-form-api-token="API_TOKEN" 
         //class="btn colorpropio btn-lg disabled"  id="submitButton" 
         %>
    <body>
        
            <div class="container">

     </form>
            <h2 class="txt-center">INGRESAR PELICULAS!</h1>
            <form  id="contactForm" action="Registar" method="post">
                <div class="mb-3">
                    <label class="form-label" for="nombreDeLaPelicula">Nombre De la Pelicula</label>
                    <input class="form-control" type="text" name="nombre" placeholder="Nombre De la Pelicula" required/>
                    <div class="invalid-feedback" data-sb-feedback="nombreDeLaPelicula:required">Nombre De la Pelicula es obligatoria.</div>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="nombreDelAutor">Nombre del Autor</label>
                    <input class="form-control" name="autor" type="text" placeholder="Nombre del Autor" required />
                    <div class="invalid-feedback" data-sb-feedback="nombreDelAutor:required">Nombre del Autor es obligatoria.</div>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="linkFoto">Link Foto</label>
                    <textarea class="form-control" id="linkFoto" type="text" name="link" placeholder="Link Foto" style="height: 10rem;" required"></textarea>
                    <div class="invalid-feedback" data-sb-feedback="linkFoto:required">Link Foto es obligatoria.</div>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="descripcion">Descripcion</label>
                    <textarea class="form-control" id="descripcion" type="text" name="descripcion" placeholder="Descripcion" style="height: 10rem;" required></textarea>
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
                    <button class="btn colorpropio btn-lg" type="submit">ENVIAR</button>
                </div>
            </form>

            <p>
                
            </p> 
        </div>
    </div>
    <footer class="py-5 " id="navbarPropio">
        <div class="container"><p class="m-0 text-center text-white">Copyright &copy; CineMax El Vandolero</p></div>
    </footer>


        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <style>
            .colorpropio {
                background-color: #872341; 
                color:white
            }
        </style>
    </body>
</html>
<style>
