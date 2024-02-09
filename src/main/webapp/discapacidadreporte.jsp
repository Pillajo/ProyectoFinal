<%-- 
    Document   : discapacidadreporte
    Created on : 01/02/2024, 9:05:57
    Author     : josep
--%>

<%@page import="java.util.List"%>
<%@page import="MODELO.DiscapacidadOenfermedad"%>
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
        <h1 class="text-center mb-5">Discapacidad Reporte</h1>  
        <div class="container mt-4">
            <form action="Servletdiscapacidadver" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="idCedula">Buscar docente</label>
                            <input name="idCedula" type="text" class="form-control form-control-sm" id="idCedula" placeholder="Ingresa la cédula">
                        </div>
                        <div class="form-group">
                            <input name="operacion" type="submit" class="btn btn-info btn-sm" value="FILTRAR">
                            <input name="operacion" type="submit" class="btn btn-info btn-sm" value="MOSTRAR TODOS LOS DATOS">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="deleteId">ID para eliminar</label>
                            <input name="deleteId" type="text" class="form-control form-control-sm" id="deleteId">
                        </div>
                        <div class="form-group">
                            <input name="operacion" type="submit" class="btn btn-info btn-sm" value="ELIMINAR">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="idUpdate">ID para editar </label>
                            <input name="idUpdate" type="text" class="form-control form-control-sm" id="idUpdate">
                        </div>
                        <div class="form-group">
                            <input name="operacion" type="submit" class="btn btn-warning btn-sm" value="EDITAR">
                            <a href="Discapacidad o Enfermedad.jsp" class="btn btn-warning btn-sm">EDITAR TODO</a>
                            <a href="Discapacidad o Enfermedad.jsp" class="btn btn-danger btn-sm">Salir</a> 
                        </div>
                    </div>
                          <div class="col-md-6">
                                <label for="datos" class="form-label">Cambiar situacion</label>
                                <input name="datos" type="text" class="form-control" id="datos">
                                <br>
                            </div>
                </div>
            </form>
        </div>


        <%
            if (request.getAttribute("resultado") != null) {
                out.println(request.getAttribute("resultado"));
                out.println(request.getAttribute("resultadoUpdate"));
            }
        %>


        <div class="col-sm-18">
            <table class="table table-hover">
                <thead>
                    <tr>

                        <th>Id</th>                                     
                        <th>situacion</th>
                        <th>numero del carnet conadis</th>
                        <th>certificado de enfermedad carastrofica</th>
                        <th>tipo de discapacidad</th>
                        <th>porcentaje</th>
                        <th>Tipo de enfermedad</th>
                        <th>tipo relacion</th>
                        <th>Cedula del docente</th>

                    </tr>
                </thead>
                <!---   ITERAR SOBRE LOS DATOS Y MOSTRAR CADA FILA EN ORDEN --->
                <%
                    if (request.getAttribute("cajitareporte") != null) {
                        List<DiscapacidadOenfermedad> arrCapas = (List<DiscapacidadOenfermedad>) request.getAttribute("cajitareporte");
                        for (DiscapacidadOenfermedad capas : arrCapas) {
                %>

                <tr onclick="redirectToEnfermedadInsert('<%= capas.getIdDiscapacidadOenfermedad()%>')">
                    <td><%= capas.getIdDiscapacidadOenfermedad()%></td>
                    <td><%= capas.getSituacion()%></td>
                    <td><%= capas.getSituacionnumeroCarnetConadis()%></td>
                    <td><%= capas.getCertificadoEnfermedadCarastrofica()%></td>         
                    <td><%= capas.getTipoDiscapacidad()%></td>
                    <td><%= capas.getPorcentaje()%></td>
                    <td><%= capas.getTipoEnfermedad()%></td>
                    <td><%= capas.getTipoRelacion()%></td>
                    <td><%= capas.getUsuario_idCedula()%></td>


                    <td class="text-center">
                        <div class="btn-group">

                        </div>
                    </td>
                </tr>

                <%
                        }
                    }
                %>
                <%

                %>

                <script>
                    function redirectToDiscapacidadoEnfermedad(id) {
                        window.location.href = "Discapacidad o Enfermedad.jsp?id=" + id;
                    }
                </script>
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
