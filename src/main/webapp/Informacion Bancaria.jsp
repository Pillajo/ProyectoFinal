<%-- 
    Document   : Informacion Bancaria
    Created on : 17/01/2024, 10:05:55 PM
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
                    <a href="bancoreporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h3 class="text-center mb-5">Información Bancaria</h3>
                            <div class="card-body">
                                <form action="Servletinformacionbancaria" method="post">               
                                    <div class="form-group">
                                        <label for="idAsistencia" class="form-label">Id información bancaria</label>
                                        <input name="idAsistencia" type="text" class="form-control" id="idAsistencia">
                                    </div>
                                    <div class="form-group">
                                        <label for="usuario_idCedula" class="form-label">Cedula del docente</label>
                                        <input name="usuario_idCedula" type="text" class="form-control" id="usuario_idCedula">
                                    </div>
                                    <div class="form-group">
                                        <label for="institucionFinanciera" class="form-label">Institucion financiera</label>
                                        <input name="institucionFinanciera" type="text" class="form-control" id="institucionFinanciera">
                                    </div>
                                    <div class="form-group">
                                        <label for="tipoCuenta" class="form-label">Tipo de cuenta</label>
                                        <select name="tipoCuenta" id="tipoCuenta" class="form-control">
                                            <option value="Cuenta Corriente">Cuenta Corriente</option>
                                            <option value="Cuenta de Ahorro">Cuenta de Ahorro</option>
                                            <option value="Cuenta de Nómina">Cuenta de Nómina</option>
                                            <!-- Agrega más opciones según sea necesario -->
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="numeroCuenta" class="form-label">Numero de cuenta</label>
                                        <input name="numeroCuenta" type="text" class="form-control" id="numeroCuenta">
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
