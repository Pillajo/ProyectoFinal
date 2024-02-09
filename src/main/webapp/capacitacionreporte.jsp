<%-- 
    Document   : capacitacionreporte
    Created on : 01/02/2024, 8:33:05
    Author     : josep
--%>

<%@page import="java.util.List"%>
<%@page import="MODELO.Capasitacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h2 class="text-center mb-5">Datos de las Capacitacion</h2>
        <div class="container mt-4">
            <div class="container-fluid">
                <form action="Servletcapacitacionver" method="post">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="idCedula" class="form-label">Buscar docente</label>
                            <input name="idCedula" type="text" class="form-control form-control-sm" id="idCedula" placeholder="Ingresa la cédula">
                            <input name="operacion" type="submit" class="btn btn-info btn-sm" value="FILTRAR">
                            <input name="operacion" type="submit" class="btn btn-info btn-sm" value="MOSTRAR TODOS LOS DATOS">
                        </div>
                        <div class="col-md-6">
                            <label for="deleteId" class="form-label">ID para eliminar </label>
                            <input name="deleteId" type="text" class="form-control form-control-sm" id="deleteId">
                            <input name="operacion" type="submit" class="btn btn-info btn-sm" value="ELIMINAR">                          
                        </div> 
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="idUpdate" class="form-label">ID para editar </label>
                            <input name="idUpdate" type="text" class="form-control form-control-sm" id="idUpdate">
                            <div class="mt-2">
                                <input name="operacion" type="submit" class="btn btn-warning btn-sm mr-2" value="EDITAR">
                                <a href="Capacitacion.jsp" class="btn btn-warning btn-sm mr-2">EDITAR TODO</a>
                                <a href="Capacitacion.jsp" class="btn btn-danger btn-sm">Salir</a> 
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="datos" class="form-label">Nombre del evento</label>
                            <input name="datos" type="text" class="form-control form-control-sm" id="datos">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                        </div>                      
                    </div>
                </form>
            </div>
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
                        <th>Nombre del evento</th>
                        <th>Tipo de evento</th>
                        <th>Auspiciante</th>
                        <th>Duracion en horas</th>
                        <th>Tipo de certificado</th>
                        <th>Certificado por</th>
                        <th>Fecha de inicio</th>
                        <th>Fecha de finanizacion</th>
                        <th>Pais</th>
                        <th>Cedula del docente</th>

                    </tr>
                </thead>
                <!---   ITERAR SOBRE LOS DATOS Y MOSTRAR CADA FILA EN ORDEN --->
                <%
                    if (request.getAttribute("cajitareporte") != null) {
                        List<Capasitacion> arrCapas = (List<Capasitacion>) request.getAttribute("cajitareporte");
                        for (Capasitacion capas : arrCapas) {
                %>

                <tr onclick="redirectToCapasitacionInsert('<%= capas.getIdCapasitacion()%>')">
                    <td><%= capas.getIdCapasitacion()%></td>
                    <td><%= capas.getNombreEvento()%></td>
                    <td><%= capas.getTipoEvento()%></td>
                    <td><%= capas.getAuspiciante()%></td>         
                    <td><%= capas.getDuracionHoras()%></td>
                    <td><%= capas.getTipoCertificado()%></td>
                    <td><%= capas.getCertificadoPor()%></td>
                    <td><%= capas.getFechaInicio()%></td>
                    <td><%= capas.getFechaFin()%></td>
                    <td><%= capas.getPais()%></td>
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
                    function redirectToCapacitacion(id) {
                        window.location.href = "capasitacion.jsp?id=" + id;
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