<%-- 
    Document   : formacionreporte
    Created on : 01/02/2024, 9:22:18
    Author     : josep
--%>

<%@page import="java.util.List"%>
<%@page import="MODELO.FormacionAcademica"%>
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
        <h1 class="text-center mb-5">Datos Informacion Academica</h1> 
        <div class="container mt-4">
            <form action="Servletacademicover" method="post">
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
                            <a href="Formacion Academica.jsp" class="btn btn-warning btn-sm">EDITAR TODO</a>
                            <a href="Formacion Academica.jsp" class="btn btn-danger btn-sm">Salir</a> 
                        </div>
                    </div>
                    <div class="col-md-6">
                        <label for="datos" class="form-label">Años Aprovados</label>
                        <input name="datos" type="text" class="form-control" id="datos" placeholder="minimo 2 años...">
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
                        <th>NIVEL INSTITUCIONAL</th>
                        <th>NÚMERO DE REGISTROS CERTIFICADOS</th>
                        <th>INSTITUCIÓN EDUCATIVA</th>     
                        <th>NÚMERO DE AÑOS APROVADOS</th>                                    
                        <th>AREA CONOCIMIENTO</th>
                        <th>EGRESADO/GRADUEDO</th>
                        <th>TITULO OBTENIDO</th>
                        <th>PAÍS</th>
                        <th>CÉDULA DEL DOCENTE</th>

                    </tr>
                </thead>
                <!---   ITERAR SOBRE LOS DATOS Y MOSTRAR CADA FILA EN ORDEN --->
                <%
                    if (request.getAttribute("cajitareporte") != null) {
                        List<FormacionAcademica> arrCapas = (List<FormacionAcademica>) request.getAttribute("cajitareporte");
                        for (FormacionAcademica capas : arrCapas) {
                %>

                <tr onclick="redirectToFormacionAcademicaInsert('<%= capas.getIdFormacionAcademica()%>')">
                    <td><%= capas.getIdFormacionAcademica()%></td>
                    <td><%= capas.getNivelInstrucion()%></td>
                    <td><%= capas.getNumeroRegistroCertificado()%></td>
                    <td><%= capas.getInstitucionEducativa()%></td>         
                    <td><%= capas.getNumeroAniosAprobados()%></td>
                    <td><%= capas.getAreaConocimiento()%></td>
                    <td><%= capas.getEgresadoOgraduado()%></td>
                    <td><%= capas.getTituloObtenido()%></td>
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
                    function redirectToFormacionAcademica(id) {
                        window.location.href = "Formacion Academica.jsp?id=" + id;
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
