<%-- 
    Document   : Discapacidad o Enfermedad
    Created on : 17/01/2024, 02:17:23 PM
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
                    <a href="formacionreporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h3 class="text-center mb-5">Formacion Academica</h3>
                            <div class="card-body">
                                <form action="Servletformacionacademica" method="post">
                                    <div class="form-group">
                                        <label for="idFormacionAcademica" class="form-label">Id Formación Academica</label>
                                        <input name="idFormacionAcademica" type="text" class="form-control" id="idFormacionAcademica">
                                    </div>
                                    <div class="form-group">
                                        <label for="usuario_idCedula" class="form-label">Cédula del docente</label>
                                        <input name="usuario_idCedula" type="text" class="form-control" id="usuario_idCedula">
                                    </div>
                                    <div class="form-group">
                                        <label for="nivelInstrucion" class="form-label">Nivel de instrución</label>
                                        <input name="nivelInstrucion" type="text" class="form-control" id="nivelInstrucion">
                                    </div>
                                    <div class="form-group">
                                        <label for="numeroRegistroCertificado" class="form-label">Número de registro certificado</label>
                                        <input name="numeroRegistroCertificado" type="text" class="form-control" id="numeroRegistroCertificado">
                                    </div>
                                    <div class="form-group">
                                        <label for="institucionEducativa" class="form-label">Institución educativa</label>
                                        <input name="institucionEducativa" type="text" class="form-control" id="institucionEducativa">
                                    </div>
                                    <div class="form-group">
                                        <label for="numeroAniosAprobados" class="form-label">Número de años aprobados</label>
                                        <input name="numeroAniosAprobados" type="text" class="form-control" id="numeroAniosAprobados">
                                    </div>
                                    <div class="form-group">
                                        <label for="areaConocimiento" class="form-label">Área de Conocimiento</label>
                                        <input name="areaConocimiento" type="text" class="form-control" id="areaConocimiento">
                                    </div>
                                    <div class="form-group">
                                        <label for="egresadoOgraduado" class="form-label">Egresado o graduado</label>
                                        <input name="egresadoOgraduado" type="text" class="form-control" id="egresadoOgraduado">
                                    </div>
                                    <div class="form-group">
                                        <label for="tituloObtenido" class="form-label">Título obtenido</label>
                                        <input name="tituloObtenido" type="text" class="form-control" id="tituloObtenido">
                                    </div>
                                    <div class="form-group">
                                        <label for="pais" class="form-label">País</label>
                                        <input name="pais" type="text" class="form-control" id="pais">
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

