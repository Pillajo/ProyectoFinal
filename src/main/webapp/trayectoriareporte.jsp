<%-- 
    Document   : trayectoriareporte
    Created on : 01/02/2024, 9:47:46
    Author     : josep
--%>

<%@page import="java.util.List"%>
<%@page import="MODELO.TrayectoriaLaboral"%>
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
        <h1 class="text-center mb-5">Datos de la Trayectoria Laboral</h1>   
        <div class="container mt-4">
            <form action="Servlettrayectoriaver" method="post">
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
                            <a href="Trayectoria Laboral.jsp" class="btn btn-warning btn-sm">EDITAR TODO</a>
                            <a href="Trayectoria Laboral.jsp" class="btn btn-danger btn-sm">Salir</a> 
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="datos" class="form-label">Institucion o organizacion</label>
                        <input name="datos" type="text" class="form-control" id="datos" placeholder="">
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
                        <th>Cedula del docente</th>
                        <th>Tipo de instrucion</th>
                        <th>Institucion o organizacion</th>
                        <th>Unidad administrativa</th>
                        <th>Puesto</th>
                        <th>Fecha ingreso</th>
                        <th>Modalidad de ingreso</th>
                        <th>Motivo salida</th>
                        <th>Cedula del docente</th>
                    </tr>
                </thead>
                <!---   ITERAR SOBRE LOS DATOS Y MOSTRAR CADA FILA EN ORDEN --->
                <%
                    if (request.getAttribute("cajitareporte") != null) {
                        List<TrayectoriaLaboral> arrCapas = (List<TrayectoriaLaboral>) request.getAttribute("cajitareporte");
                        for (TrayectoriaLaboral capas : arrCapas) {
                %>

                <tr onclick="redirectToTrayectoriaLaboralInsert('<%= capas.getIdTrayectoriaLaboral()%>')">
                    <td><%= capas.getIdTrayectoriaLaboral()%></td>
                    <td><%= capas.getTipoInstrucion()%></td>
                    <td><%= capas.getInstitucionOrganizacion()%></td>
                    <td><%= capas.getUnidadAdministrativa()%></td>         
                    <td><%= capas.getPuesto()%></td>
                    <td><%= capas.getFechaSalida()%></td>
                    <td><%= capas.getFechaIngreso()%></td>
                    <td><%= capas.getModalidadIngreso()%></td>
                    <td><%= capas.getMotivoSalida()%></td>
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
                    function redirectToTrayectoriaLaboral(id) {
                        window.location.href = "Trayectoria Laboral.jsp?id=" + id;
                    }
                </script>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>
