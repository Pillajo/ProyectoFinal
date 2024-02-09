<%-- 
    Document   : Capacitacion
    Created on : 17/01/2024, 07:11:30 PM
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
                    <a href="capacitacionreporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h2 class="text-center mb-5">Capacitacion</h2>
                            <form action="Servletcapacitacion" method="POST">
                                <div class="form-group">
                                    <div class="form-group">
                                    <label for="idCapasitacion" class="form-label">Id Capacitacion</label>
                                    <input name="idCapasitacion" type="text" class="form-control" id="idCapasitacion">
                                </div>
                                <div class="form-group">
                                    <label for="cedula" class="form-label">Cedula del docente</label>
                                    <input name="usuario_idCedula" type="text" class="form-control" id="cedula">
                                </div>
                                <div class="form-group">
                                    <label for="nombreEvento" class="form-label">Nombre del evento</label>
                                    <input name="nombreEvento" type="text" class="form-control" id="fechaAsistencia">
                                </div>
                                <div class="form-group">
                                    <label for="tipoEvento" class="form-label">Tipo de evento</label>
                                    <input name="tipoEvento" type="text" class="form-control" id="horaEntrada">
                                </div>
                                <div class="form-group">
                                    <label for="auspiciante" class="form-label">Auspiciante del evento</label>
                                    <input name="auspiciante" type="text" class="form-control" id="horaSalida">
                                </div>
                                <div class="form-group">
                                    <label for="duracionHoras" class="form-label">Duracion del evento (horas)</label>
                                    <input name="duracionHoras" type="time" class="form-control" id="obserbaciones">
                                </div>
                                <div class="form-group">
                                    <label for="tipoCertificado" class="form-label">Tipo de certificado</label>
                                    <input name="tipoCertificado" type="text" class="form-control" id="cumpleOchoHoras">
                                </div>
                                <div class="form-group">
                                    <label for="certificadoPor" class="form-label">Certificado por</label>
                                    <input name="certificadoPor" type="text" class="form-control" id="hojaRuta">
                                </div>
                                <div class="form-group">
                                    <label for="fechaInicio" class="form-label">Fecha de inicio</label>
                                    <input name="fechaInicio" type="date" class="form-control" id="horaInicioHojaRuta">
                                </div>
                                <div class="form-group">
                                    <label for="fechaFin" class="form-label">Fecha fin</label>
                                    <input name="fechaFin" type="date" class="form-control" id="horaFinHojaRuta">
                                </div>
                                <div class="form-group">
                                    <label for="pais" class="form-label">Pais</label>
                                    <input name="pais" type="text" class="form-control" id="horaFinHojaRuta">
                                </div>                
                                <input type="submit" name="operacion" value="Guardar" class="btn btn-info">
                                <input type="submit" name="operacion" value="Editar" class="btn btn-info">
                                <%
                                    if (request.getAttribute("cajitamensajesbd") != null) {
                                        out.println(request.getAttribute("cajitamensajesbd"));
                                    }
                                %>
                            </form>                   
                        </div>
                    </div>                      
                </div>
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
                </body>
                </html>
