<%-- 
    Document   : Permiso
    Created on : 17/01/2024, 01:38:13 PM
    Author     : josep
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="MODELO.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODELO.UsuarioDAO"%>
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
                    <a href="usuarioreporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h3 class="text-center mb-5">Docente Usuario</h3>
                            <div class="card-body">
                                <form action="Servletusuario" method="POST">
                                    <div class="form-group">
                                        <label for="idCedula" class="form-label">Cedula del docente</label>
                                        <input name="idCedula" type="text" class="form-control" id="idCedula">
                                    </div>
                                    <div class="form-group">
                                        <label for="estado" class="form-label">Estado</label>
                                        <select name="estado" id="estado" class="form-control">
                                            <option value="Activo">Activo</option>
                                            <option value="Inactivo">Inactivo</option>
                                            <option value="Pendiente">Pendiente</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="usuario" class="form-label">Usuario</label>
                                        <input name="usuario" type="text" class="form-control" id="usuario">
                                    </div>
                                    <div class="form-group">
                                        <label for="contrasenia" class="form-label">Contraseña</label>
                                        <input name="contrasenia" type="text" class="form-control" id="contrasenia">
                                    </div>
                                    <div class="form-group">
                                        <label for="nacionalidad" class="form-label">Nacionalidad</label>
                                        <input name="nacionalidad" type="text" class="form-control" id="nacionalidad">
                                    </div>
                                    <div class="form-group">
                                        <label for="regimen" class="form-label">Regimen</label>
                                        <input name="regimen" type="text" class="form-control" id="regimen">
                                    </div>
                                    <div class="form-group">
                                        <label for="nombres" class="form-label">Nombres</label>
                                        <input name="nombres" type="text" class="form-control" id="nombres">
                                    </div>
                                    <div class="form-group">
                                        <label for="apellidos" class="form-label">Apellidos</label>
                                        <input name="apellidos" type="text" class="form-control" id="apellidos">
                                    </div>
                                    <div class="form-group">
                                        <label for="fechaNacimiento" class="form-label">Fecha de nacimiento</label>
                                        <input name="fechaNacimiento" type="date" class="form-control" id="fechaNacimiento">
                                    </div>
                                    <div class="form-group">
                                        <label for="estadoCivil" class="form-label">Estado civil</label>
                                        <input name="estadoCivil" type="text" class="form-control" id="estadoCivil">
                                    </div>
                                    <div class="form-group">
                                        <label for="fechaAntecedentesServicioPublico" class="form-label">Fecha antecedentes de servicio publico</label>
                                        <input name="fechaAntecedentesServicioPublico" type="date" class="form-control" id="fechaAntecedentesServicioPublico">
                                    </div>
                                    <div class="form-group">
                                        <label for="fechaUltimaDeclaracionDeBienes" class="form-label">Fecha de la ultima declaracion de bienes</label>
                                        <input name="fechaUltimaDeclaracionDeBienes" type="date" class="form-control" id="fechaUltimaDeclaracionDeBienes">
                                    </div>
                                    <div class="form-group">
                                        <label for="tipoSangre" class="form-label">Tipo de sangre</label>
                                        <select name="tipoSangre" id="tipoSangre" class="form-control">
                                            <option value="A+">A+</option>
                                            <option value="A-">A-</option>
                                            <option value="B+">B+</option>
                                            <option value="B-">B-</option>
                                            <option value="O+">O+</option>
                                            <option value="O-">O-</option>
                                            <option value="AB+">AB+</option>
                                            <option value="AB-">AB-</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="sexo" class="form-label">Sexo</label>
                                        <select name="sexo" id="sexo" class="form-control">
                                            <option value="Masculino">Masculino</option>
                                            <option value="Femenino">Femenino</option>
                                            <option value="Otro">Otro</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="direccion" class="form-label">Direccion</label>
                                        <input name="direccion" type="text" class="form-control" id="direccion">
                                    </div>
                                    <div class="form-group">
                                        <label for="etnia" class="form-label">Etnia</label>
                                        <select name="etnia" id="etnia" class="form-control">
                                            <option value="Indígena">Indígena</option>
                                            <option value="Afrodescendiente">Afrodescendiente</option>
                                            <option value="Blanco">Blanco</option>
                                            <option value="Mestizo">Mestizo</option>
                                            <option value="Mulato">Mulato</option>
                                            <option value="Zambo">Zambo</option>
                                            <option value="Otro">Otro</option>
                                        </select>
                                    </div>     
                                    <input name="operacion" type="submit" class="btn btn-info" value="Guardar" >    
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
