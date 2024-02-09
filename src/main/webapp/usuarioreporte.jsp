<%-- 
    Document   : usuarioreporte
    Created on : 01/02/2024, 9:13:41
    Author     : josep
--%>

<%@page import="java.util.List"%>
<%@page import="MODELO.Usuario"%>
<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    </head>
    <body>
        <h1 class="text-center mb-5">Datos de los Usuarios</h1>  
        <div class="container mt-4">
            <form action="Servletverusuarios" method="post">
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
                            <a href="Docente Usuario.jsp" class="btn btn-warning btn-sm">EDITAR TODO</a>
                            <a href="Docente Usuario.jsp" class="btn btn-danger btn-sm">Salir</a> 
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="datos">Horas Cumplidas (ocho)</label>
                            <input name="datos" type="text" class="form-control form-control-sm" id="datos" placeholder="Si / No">
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


        <div class="col-sm-18">
            <table class="table table-hover">
                <thead>
                    <tr>

                        <th>CEDULA</th>   
                        <th>ESTADO</th> 
                        <th>USUARIO</th> 
                        <th>CONTRASEÑA</th> 
                        <th>NACIONALIDAD</th> 
                        <th>REGIMEN</th>
                        <th>NOMBRES</th>
                        <th>APELLIDOS</th> 
                        <th>FECHA NACIMIENTO</th> 
                        <th>ESTADO CIVIL</th> 
                        <th>FECHA ANTECEDENTES SERVICIO PUBLICO</th> 
                        <th>ULTIMA DECLARACION DE BIENES</th>
                        <th>TIPO SANGRE</th>
                        <th>SEXO</th> 
                        <th>DIRECCION</th> 
                        <th>ETNIA</th> 

                    </tr>
                </thead>
                <!---   ITERAR SOBRE LOS DATOS Y MOSTRAR CADA FILA EN ORDEN --->
                <%
                    if (request.getAttribute("cajitareporte") != null) {
                        List<Usuario> arrCapas = (List<Usuario>) request.getAttribute("cajitareporte");
                        for (Usuario capas : arrCapas) {
                %>

                <td><%= capas.getIdCedula()%></td>
                <td><%= capas.getEstado()%></td>
                <td><%= capas.getUsuario()%></td>
                <td><%= capas.getContrasenia()%></td>
                <td><%= capas.getNacionalidad()%></td>         
                <td><%= capas.getRegimen()%></td>                    
                <td><%= capas.getNombres()%></td> 
                <td><%= capas.getApellidos()%></td>
                <td><%= capas.getFechaNacimiento()%></td>
                <td><%= capas.getEstadoCivil()%></td>
                <td><%= capas.getFechaAntecedentesServicioPublico()%></td>
                <td><%= capas.getFechaUltimaDeclaracionDeBienes()%></td>         
                <td><%= capas.getTipoSangre()%></td>                    
                <td><%= capas.getSexo()%></td> 
                <td><%= capas.getDireccion()%></td>
                <td><%= capas.getEtnia()%></td>


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
                    function redirectToDocenteUsuario(id) {
                        window.location.href = "Docente Usuario.jsp?id=" + id;
                    }
                </script>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </body> 
</html>


