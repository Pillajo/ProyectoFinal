<%-- 
    Document   : Contacto de Emergencia
    Created on : 17/01/2024, 08:24:16 PM
    Author     : josep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    </head>
    <body>
        <div class="container mt-1">
            <div class="row">
                <div class="col-lg-10 mx-auto">
                    <a href="Menu.jsp" class="btn btn-info">Regresar</a>
                    <a href="contactoreporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h3 class="text-center mb-5">Contacto de Emergencia</h3>
                            <div class="card-body">
                                <form action="Servletcontacto" method="post">               
                                       <div class="form-group">
                                    <label for="idEditar" class="form-label">Id contacto emergencia</label>
                                    <input name="idEditar" type="text" class="form-control" id="idEditar">
                                </div>
                                <div class="form-group">
                                    <label for="usuario_idCedula" class="form-label">Cedula del docente</label>
                                    <input name="usuario_idCedula" type="text" class="form-control" id="usuario_idCedula">
                                </div>
                                <div class="form-group">
                                    <label for="nombres" class="form-label">Nombres</label>
                                    <input name="nombres" type="text" class="form-control" id="nombres">
                                </div>
                                <div class="form-group">
                                    <label for="apellidos" class="form-label">Apellidos</label>
                                    <input name="apellidos" type="text" class="form-control" id="apellidos">
                                </div>
                                <div class="form-group">
                                    <label for="telefonoCelular" class="form-label">Telefono celular</label>
                                    <input name="telefonoCelular" type="text" class="form-control" id="telefonoCelular">
                                </div>
                                <div class="form-group">
                                    <label for="telefonoConvencional" class="form-label">Telefono convencional</label>
                                    <input name="telefonoConvencional" type="text" class="form-control" id="telefonoConvencional">
                                </div>                        
                                   <input type="submit" name="operacion" value="Guardar" class="btn btn-info"> 
                                   <input name="operacion" type="submit" class="btn btn-primary" value="Editar"> 
                                    <%
                                        if (request.getAttribute("cajitamensajesbd") != null) {
                                            out.println(request.getAttribute("cajitamensajesbd"));
                                        }
                                    %>
                                </form>                   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>

