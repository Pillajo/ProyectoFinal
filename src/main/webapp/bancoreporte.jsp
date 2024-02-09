<%-- 
    Document   : bancoreporte
    Created on : 01/02/2024, 9:32:11
    Author     : josep
--%>

<%@page import="java.util.List"%>
<%@page import="MODELO.InformacionBancaria"%>
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
        <h1 class="text-center mb-5">Informacion Bancaria</h1>
        <form action="Servletbancover" method="post">
            <div class="container mt-4">
                <div class="container-fluid">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="idCedula" class="form-label">Buscar docente</label>
                            <input name="idCedula" type="text" class="form-control form-control-sm" id="idCedula" placeholder="Ingresa la cédula">
                            <div class="mt-2">
                                <input name="operacion" type="submit" class="btn btn-info btn-sm mr-2" value="FILTRAR">
                                <input name="operacion" type="submit" class="btn btn-info btn-sm mr-2" value="MOSTRAR TODOS LOS DATOS">
                                
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="deleteId" class="form-label">ID para eliminar informacion bancaria</label>
                            <input name="deleteId" type="text" class="form-control form-control-sm" id="deleteId">
                            <div class="mt-2">
                                <input name="operacion" type="submit" class="btn btn-info btn-sm mr-2" value="ELIMINAR">
                            </div>
                        </div> 
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="idUpdate" class="form-label">ID para editar institucion financiera</label>
                            <input name="idUpdate" type="text" class="form-control form-control-sm" id="idUpdate">
                            <div class="mt-2">
                                <input name="operacion" type="submit" class="btn btn-warning btn-sm mr-2" value="EDITAR">
                                <a href="Informacion Bancaria.jsp" class="btn btn-warning btn-sm">EDITAR TODO</a>
                                <a href="Informacion Bancaria.jsp" class="btn btn-danger btn-sm">Salir</a>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="datos" class="form-label">Institucion financiera</label>
                            <input name="datos" type="text" class="form-control form-control-sm" id="datos">
                        </div>
                    </div>
                </div>
            </div>
        </form>



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

                        <th>Institucion financiera</th>
                        <th>Tipo tipo de cuenta</th>
                        <th>Numero de cuenta</th>
                        <th>Cedula del docente</th>
                    </tr>
                </thead>
                <!---   ITERAR SOBRE LOS DATOS Y MOSTRAR CADA FILA EN ORDEN --->
                <%
                    if (request.getAttribute("cajitareporte") != null) {
                        List<InformacionBancaria> arrCapas = (List<InformacionBancaria>) request.getAttribute("cajitareporte");
                        for (InformacionBancaria capas : arrCapas) {
                %>

                <tr onclick="redirectToInformacionBancariaInsert('<%= capas.getIdInformacionBancaria()%>')">
                    <td><%= capas.getIdInformacionBancaria()%></td>
                    <td><%= capas.getInstitucionFinanciera()%></td>
                    <td><%= capas.getTipoCuenta()%></td>
                    <td><%= capas.getNumeroCuenta()%></td>         
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
                    function redirectToInformacionBancaria(id) {
                        window.location.href = "Informacion Bancaria.jsp?id=" + id;
                    }
                </script>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>
