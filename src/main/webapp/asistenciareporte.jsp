<%-- 
    Document   : asistenciareporte
    Created on : 01/02/2024, 0:38:30
    Author     : josep
--%>

<%@page import="java.util.List"%>
<%@page import="MODELO.Asistencia"%>
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
        <h1 class="text-center mb-5">Gestion de Asistencias</h1>     
        <div class="container mt-4">
            <form action="Servletasistenciaver" method="post">
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
                            <a href="Asistencia.jsp" class="btn btn-warning btn-sm">EDITAR TODO</a>
                            <a href="Asistencia.jsp" class="btn btn-danger btn-sm">Salir</a> 
                        </div>
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


        <div class="col-sm-20">
            <table class="table table-hover">
                <thead>
                    <tr>

                        <th>ID</th>
                        <th>FECHA</th>
                        <th>HORA ENTRADA</th>
                        <th>HORA SALIDA</th>     
                        <th>OBSERVACIONES</th>                                    
                        <th>CUMPLE OCHO HORAS</th>
                        <th>HORAS TRABAJADAS</th>
                        <th>HOJA RUTA</th>
                        <th>HORA INICIO RUTA</th>
                        <th>HORA FIN RUTA</th>
                        <th>CÉDULA DEL DOCENTE</th>

                    </tr>
                </thead>
                <!---   ITERAR SOBRE LOS DATOS Y MOSTRAR CADA FILA EN ORDEN --->
                <%
                    if (request.getAttribute("cajitareporte") != null) {
                        List<Asistencia> arrCapas = (List<Asistencia>) request.getAttribute("cajitareporte");
                        for (Asistencia capas : arrCapas) {
                %>

                <tr onclick="redirectToAsistenciasInsert('<%= capas.getIdAsistencia()%>')">
                    <td><%= capas.getIdAsistencia()%></td>
                    <td><%= capas.getFechaAsistencia()%></td>
                    <td><%= capas.getHoraEntrada()%></td>
                    <td><%= capas.getHoraSalida()%></td>         
                    <td><%= capas.getObserbaciones()%></td>
                    <td><%= capas.getCumpleOchoHoras()%></td>
                    <td><%= capas.getHorasTrabajadas()%></td>
                    <td><%= capas.getHojaRuta()%></td>
                    <td><%= capas.getHoraInicioHojaRuta()%></td>
                    <td><%= capas.getHoraFinHojaRuta()%></td>
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
                    function redirectToAsistencia(id) {
                        window.location.href = "Asistencia.jsp?id=" + id;
                    }
                </script>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
