<%-- 
    Document   : Sitiacion Senescyt
    Created on : 17/01/2024, 10:56:18 PM
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
                    <a href="senescytreporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h3 class="text-center mb-5">Situacion Senescyt</h3>
                            <div class="card-body">
                                <form action="Servletsenescyt" method="post">        
                                    <div class="form-group">
                                        <label for="idSituacionSenescyt" class="form-label">Id Senescyt</label>
                                        <input name="idSituacionSenescyt" type="text" class="form-control" id="idSituacionSenescyt">
                                    </div>

                                    <div class="form-group">
                                        <label for="usuario_idCedula" class="form-label">Cédula del docente</label>
                                        <input name="usuario_idCedula" type="text" class="form-control" id="usuario_idCedula">
                                    </div>
                                    <div class="form-group">
                                        <label for="fechaIngreso" class="form-label">Fecha de ingreso</label>
                                        <input name="fechaIngreso" type="date" class="form-control" id="fechaIngreso">
                                    </div>
                                    <div class="form-group">
                                        <label for="fechaSalida" class="form-label">Fecha de salida</label>
                                        <input name="fechaSalida" type="date" class="form-control" id="fechaSalida">
                                    </div>
                                    <div class="form-group">
                                        <label for="modalidad" class="form-label">Modalidad</label>
                                        <input name="modalidad" type="text" class="form-control" id="modalidad">
                                    </div>
                                    <div class="form-group">
                                        <label for="unidad" class="form-label">Unidad</label>
                                        <input name="unidad" type="text" class="form-control" id="unidad">
                                    </div>
                                    <div class="form-group">
                                        <label for="puesto" class="form-label">Puesto</label>
                                        <input name="puesto" type="text" class="form-control" id="puesto">
                                    </div>
                                    <div class="form-group">
                                        <label for="grupoOcupacional" class="form-label">Grupo ocupacional</label>
                                        <input name="grupoOcupacional" type="text" class="form-control" id="grupoOcupacional">
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
