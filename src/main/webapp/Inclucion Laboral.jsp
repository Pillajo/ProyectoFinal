<%-- 
    Document   : Inclucion Laboral
    Created on : 17/01/2024, 10:48:18 PM
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
                    <a href="inclucionreporte.jsp" class="btn btn-info">Ver Datos</a>
                    <div class="card">
                        <div class="card-body p-5">
                            <h3 class="text-center mb-5">Inclución Laboral</h3>
                            <div class="card-body">
                                <form action="Servletinclucionlaboral" method="post">                    
                                    <div class="form-group">
                                        <label for="idAsistencia" class="form-label">Id inclucion laboral</label>
                                        <input name="idAsistencia" type="text" class="form-control" id="idAsistencia">
                                    </div>
                                    <div class="form-group">
                                        <label for="usuario_idCedula" class="form-label">Cédula del Docente</label>
                                        <input name="usuario_idCedula" type="text" class="form-control" id="usuario_idCedula">
                                    </div>
                                    <div class="form-group">
                                        <label for="migrante" class="form-label">Es Migrante</label>
                                        <select name="migrante" id="migrante" class="form-control">
                                            <option value="Si">Sí</option>
                                            <option value="No">No</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="nacionalidad" class="form-label">Nacionalidad</label>
                                        <input name="nacionalidad" type="text" class="form-control" id="nacionalidad">
                                    </div>
                                    <div class="form-group">
                                        <label for="embarazo" class="form-label">Embarazo</label>
                                        <input name="embarazo" type="text" class="form-control" id="embarazo">
                                    </div>
                                    <div class="form-group">
                                        <label for="mesesEmbarazo" class="form-label">Meses de embarazo</label>
                                        <input name="mesesEmbarazo" type="text" class="form-control" id="mesesEmbarazo">
                                    </div>
                                    <div class="form-group">
                                        <label for="licencia" class="form-label">Licencia de embarazo</label>
                                        <input name="licencia" type="text" class="form-control" id="licencia">
                                    </div>
                                    <div class="form-group">
                                        <label for="porcentaje" class="form-label">Porcentaje</label>
                                        <input name="porcentaje" type="text" class="form-control" id="porcentaje">
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