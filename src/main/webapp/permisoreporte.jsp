<%-- 
    Document   : permisoreporte
    Created on : 01/02/2024, 9:36:16
    Author     : josep
--%>

<%@page import="java.util.List"%>
<%@page import="MODELO.Permiso"%>
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
        
        <h1 class="text-center mb-5">Datos de los Permisos</h1>     
        <div class="container mt-4">
            <form action="Servletpermisover" method="post">
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
                            <a href="Permiso.jsp" class="btn btn-warning btn-sm">EDITAR TODO</a>
                            <a href="Permiso.jsp" class="btn btn-danger btn-sm">Salir</a> 
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="datos" class="form-label">Motivo</label>
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

                        <th>ID</th>
                        <th>MOTIVO</th>                                     
                        <th>FECHA Y HORA DE INICIO</th>
                        <th>FECHA Y HORA DE FINALIZACIÓN</th>
                        <th>OBSERVACIONES</th>                       
                        <th>VALOR A DESCONTAR</th>
                        <th>CÉDULA</th>

                    </tr>
                </thead>
                <!---   ITERAR SOBRE LOS DATOS Y MOSTRAR CADA FILA EN ORDEN --->
                <%
                    if (request.getAttribute("cajitareporte") != null) {
                        List<Permiso> arrCapas = (List<Permiso>) request.getAttribute("cajitareporte");
                        for (Permiso capas : arrCapas) {
                %>

                <tr onclick="redirectToPermisosInsert('<%= capas.getIdPermiso()%>')">
                    <td><%= capas.getIdPermiso()%></td>
                    <td><%= capas.getMotivo()%></td>
                    <td><%= capas.getFechaHoraInicio()%></td>
                    <td><%= capas.getFechaHoraFinal()%></td>         
                    <td><%= capas.getObservaciones()%></td>                    
                    <td><%= capas.getValordescontar()%></td> 
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
                    function redirectToPermiso(id) {
                        window.location.href = "Permiso.jsp?id=" + id;
                    }
                </script>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>
