<%-- 
    Document   : Discapacidad o Enfermedad
    Created on : 17/01/2024, 02:17:23 PM
    Author     : josep
--%>

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
                    <a href="discapacidadreporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h3 class="text-center mb-5">Discapacidad o Enfermedad</h3>
                            <div class="card-body">
                                <form action="Servletenfermedad" method="post">
                                     <div class="form-group">
                                    <label for="idUpdate" class="form-label">Id Discapacidad o enfermedad</label>
                                    <input name="idUpdate" type="text" class="form-control" id="idUpdate">
                                </div>
                                <div class="form-group">
                                    <label for="usuario_idCedula" class="form-label">Cedula del docente</label>
                                    <input name="usuario_idCedula" type="text" class="form-control" id="usuario_idCedula">
                                </div>
                                <div class="form-group">
                                    <label for="situacion" class="form-label">Situacion</label>
                                    <input name="situacion" type="text" class="form-control" id="situacion">
                                </div>
                                <div class="form-group">
                                    <label for="situacionnumeroCarnetConadis" class="form-label">Numero del carnet de conadis</label>
                                    <input name="situacionnumeroCarnetConadis" type="text" class="form-control" id="situacionnumeroCarnetConadis">
                                </div>
                                <div class="form-group">
                                    <label for="certificadoEnfermedadCarastrofica" class="form-label">Certificado de enfermedad carastrofica</label>
                                    <input name="certificadoEnfermedadCarastrofica" type="text" class="form-control" id="certificadoEnfermedadCarastrofica">
                                </div>
                                <div class="form-group">
                                    <label for="tipoDiscapacidad" class="form-label">Tipo de discapacidad</label>
                                    <input name="tipoDiscapacidad" type="text" class="form-control" id="tipoDiscapacidad">
                                </div>
                                <div class="form-group">
                                    <label for="porcentaje" class="form-label">Porcentaje</label>
                                    <input name="porcentaje" type="text" class="form-control" id="porcentaje">
                                </div>
                                <div class="form-group">
                                    <label for="tipoEnfermedad" class="form-label">Tipo de enfermedad</label>
                                    <input name="tipoEnfermedad" type="text" class="form-control" id="tipoEnfermedad">
                                </div>
                                <div class="form-group">
                                    <label for="tipoRelacion" class="form-label">Tipo de relacion</label>
                                    <input name="tipoRelacion" type="text" class="form-control" id="tipoRelacion">
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

