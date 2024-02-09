<%-- 
    Document   : Evaluacion Desenpeño
    Created on : 19/01/2024, 15:50:36
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
                    <a href="evaluacionreporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h3 class="text-center mb-5">Evaluación Desempeño</h3>
                            <div class="card-body">
                                <form action="Servletevaluacion" method="post">                
                                    <div class="form-group">
                                        <label for="idAsistencia" class="form-label">Id evaluacion de desempeño</label>
                                        <input name="idAsistencia" type="text" class="form-control" id="idAsistencia">
                                    </div>
                                    <div class="form-group">
                                        <label for="usuario_idCedula" class="form-label">Cedula del docente</label>
                                        <input name="usuario_idCedula" type="text" class="form-control" id="usuario_idCedula">
                                    </div>
                                    <div class="form-group">
                                        <label for="periodoEvaluacionDesde" class="form-label">Periodo de evaluacion desde</label>
                                        <input name="periodoEvaluacionDesde" type="date" class="form-control" id="periodoEvaluacionDesde">
                                    </div>
                                    <div class="form-group">
                                        <label for="periodoEvaluacionHasta" class="form-label">Periodo de evaluacion hasta</label>
                                        <input name="periodoEvaluacionHasta" type="date" class="form-control" id="periodoEvaluacionHasta">
                                    </div>
                                    <div class="form-group">
                                        <label for="nombreInstitucion" class="form-label">Nombre de la institucion</label>
                                        <input name="nombreInstitucion" type="text" class="form-control" id="nombreInstitucion">
                                    </div>
                                    <div class="form-group">
                                        <label for="puntaje" class="form-label">Puntaje</label>
                                        <input name="puntaje" type="text" class="form-control" id="puntaje">
                                    </div>
                                    <div class="form-group">
                                        <label for="calificacion" class="form-label">Calificacion</label>
                                        <input name="calificacion" type="text" class="form-control" id="calificacion">
                                    </div>
                                    <div class="form-group">
                                        <label for="observaciones" class="form-label">Observaciones</label>
                                        <input name="observaciones" type="text" class="form-control" id="observaciones">
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