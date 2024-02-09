<%-- 
    Document   : Trayectoria Laboral
    Created on : 17/01/2024, 10:17:40 PM
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
                    <a href="trayectoriareporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h3 class="text-center mb-5">Trayectoria Laboral</h3>
                            <div class="card-body">
                                <form action="Servlettrayectorialaboral" method="post">
                                    <div class="form-group">
                                        <div class="form-group">
                                            <label for="idAsistencia" class="form-label">Id trayectoria laboral</label>
                                            <input name="idAsistencia" type="text" class="form-control" id="idAsistencia">
                                        </div>
                                        <div class="form-group">
                                            <label for="cedula" class="form-label">Cedula del docente</label>
                                            <input name="usuario_idCedula" type="text" class="form-control" id="cedula">
                                        </div>
                                        <div class="form-group">
                                            <label for="tipoInstrucion" class="form-label">Tipo de instrucion</label>
                                            <input name="tipoInstrucion" type="text" class="form-control" id="tipoInstrucion">
                                        </div>
                                        <div class="form-group">
                                            <label for="institucionOrganizacion" class="form-label">Institucion o organizacion</label>
                                            <input name="institucionOrganizacion" type="text" class="form-control" id="institucionOrganizacion">
                                        </div>
                                        <div class="form-group">
                                            <label for="unidadAdministrativa" class="form-label">Unidad administrativa</label>
                                            <input name="unidadAdministrativa" type="text" class="form-control" id="unidadAdministrativa">
                                        </div>
                                        <div class="form-group">
                                            <label for="puesto" class="form-label">Puesto</label>
                                            <input name="puesto" type="text" class="form-control" id="puesto">
                                        </div>
                                        <div class="form-group">
                                            <label for="fechaIngreso" class="form-label">Fecha ingreso</label>
                                            <input name="fechaIngreso" type="date" class="form-control" id="fechaIngreso">
                                        </div>
                                        <div class="form-group">
                                            <label for="fechaSalida" class="form-label">Fecha salida</label>
                                            <input name="fechaSalida" type="date" class="form-control" id="fechaSalida">
                                        </div>
                                        <div class="form-group">
                                            <label for="modalidadIngreso" class="form-label">Modalidad de ingreso</label>
                                            <input name="modalidadIngreso" type="text" class="form-control" id="modalidadIngreso">
                                        </div>
                                        <div class="form-group">
                                            <label for="motivoSalida" class="form-label">Motivo salida</label>
                                            <input name="motivoSalida" type="text" class="form-control" id="motivoSalida">
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

