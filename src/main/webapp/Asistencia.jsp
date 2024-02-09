<%-- 
    Document   : Asistencia
    Created on : 16/01/2024, 12:54:18 PM
    Author     : josep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <style>
        </style>
    <body>
        <div class="container mt-1">
            <div class="row">
                <div class="col-lg-10 mx-auto">
                    <a href="Menu.jsp" class="btn btn-info">Regresar</a>
                    <a href="asistenciareporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h2 class="text-center mb-5">Asistencia</h2>
                            <form action="Servletasistencias" method="post">
                                <div class="form-group">
                                    <h1>Algunos campos no se podran editar</h1>
                                    <label for="idAsistencia" class="form-label">Id Asistencia</label>
                                    <input name="idAsistencia" type="text" class="form-control" id="idAsistencia">
                                </div>
                                <div class="form-group">
                                    <label for="usuario_idCedula" class="form-label">Cédula</label>
                                    <input name="usuario_idCedula" type="text" class="form-control" id="usuario_idCedula">
                                </div>
                                <div class="form-group">
                                    <label for="fechaAsistencia" class="form-label">Fecha de la asistencia</label>
                                    <input name="fechaAsistencia" type="date" class="form-control" id="fechaAsistencia">
                                </div>
                                <div class="form-group">
                                    <label for="horaEntrada" class="form-label">Hora de entrada</label>
                                    <input name="horaEntrada" type="time" class="form-control" id="horaEntrada">
                                </div>
                                <div class="form-group">
                                    <label for="horaSalida" class="form-label">Hora de salida</label>
                                    <input name="horaSalida" type="time" class="form-control" id="horaSalida">
                                </div>
                                <div class="form-group">
                                    <label for="obserbaciones" class="form-label">Observaciones</label>
                                    <input name="obserbaciones" type="text" class="form-control" id="obserbaciones">
                                </div>
                                <div class="form-group" style="display: none;">
                                    <label for="cumpleOchoHoras" class="form-label">Cumple Ocho Horas</label>
                                    <input name="cumpleOchoHoras" type="text" class="form-control" id="cumpleOchoHoras">
                                </div>
                                <div class="form-group"  style="display: none;">
                                    <label for="horasTrabajadas" class="form-label">Horas de Trabajo</label>
                                    <input name="horasTrabajadas" type="time" class="form-control" id="horasTrabajadas">
                                </div>
                                <div class="form-group">
                                    <label for="hojaRuta" class="form-label">Hoja de ruta</label>
                                    <input name="hojaRuta" type="text" class="form-control" id="hojaRuta">
                                </div>
                                <div class="form-group">
                                    <label for="horaInicioHojaRuta" class="form-label">Hora inicio: hoja ruta</label>
                                    <input name="horaInicioHojaRuta" type="time" class="form-control" id="horaInicioHojaRuta">
                                </div>
                                <div class="form-group">
                                    <label for="horaFinHojaRuta" class="form-label">Hora fin: hoja ruta</label>
                                    <input name="horaFinHojaRuta" type="time" class="form-control" id="horaFinHojaRuta">
                                </div>
                                <br>
                                <br>
                                <input name="operacion" type="submit" class="btn btn-info" value="Guardar"> 
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

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </body>
</html>

