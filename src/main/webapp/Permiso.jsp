<%-- 
    Document   : Permiso
    Created on : 17/01/2024, 01:38:13 PM
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
                    <a href="permisoreporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h3 class="text-center mb-5">Registro de Permisos</h3>
                            <div class="card-body">
                                <form action="Servletpermiso" method="post">
                                    <div class="form-group">
                                        <label for="idPermiso" class="form-label">Id Permiso</label>
                                        <input name="idPermiso" type="text" class="form-control" id="idPermiso">
                                    </div>
                                    <div class="form-group">
                                        <label for="usuario_idCedula" class="form-label">Cédula del docente</label>
                                        <input name="usuario_idCedula" type="text" class="form-control" id="usuario_idCedula">
                                    </div>
                                    <div class="form-group">
                                        <label for="motivo" class="form-label">Motivo</label>
                                        <input name="motivo" type="text" class="form-control" id="motivo">
                                    </div>
                                    <div class="form-group">
                                        <label for="fechaHoraInicio" class="form-label">Fecha y hora de Inicio</label>
                                        <input name="fechaHoraInicio" type="datetime-local" class="form-control" id="fechaHoraInicio">
                                    </div>
                                    <div class="form-group">
                                        <label for="fechaHoraFinal" class="form-label">Fecha y hora Final</label>
                                        <input name="fechaHoraFinal" type="datetime-local" class="form-control" id="fechaHoraFinal">
                                    </div>
                                    <div class="form-group">
                                        <label for="observaciones" class="form-label">Observaciones</label>
                                        <input name="observaciones" type="text" class="form-control" id="observaciones">
                                    </div>
                                    <div class="form-group">
                                        <label for="valordescontar" class="form-label">Valor a descontar</label>
                                        <input name="valordescontar" type="text" class="form-control" id="valordescontar">
                                    </div>              
                                    <input type="submit" name="operacion" value="Guardar" class="btn btn-info">
                                    <input type="submit" name="operacion" value="Editar" class="btn btn-primary">
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
