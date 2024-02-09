
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>

        <!-- Enlace a Bootstrap CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    </head>
    <body>

        <div class="container mt-4 col-md-4 ">
            <div class="card col-md-4sm-10">
                <div class="card-body">
                    <form class="form-sign" action="Servlet" method="post">
                        <div class="form-group text-center">
                            <h4>Login</h4>                        
                            <img src="imagenes/int.png" alt="70" with="150"/>
                            <label> Bienvenido al Sistema</label>
                        </div>
                        <div class="form-group ">
                            <label><i class="bi bi-person-circle"></i>Usuario:</label>
                            <input type="text" name="txtuser" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><i class="bi bi-shield-lock"></i>Contraseña:</label>
                            <input type="password" name="txtpass" class="form-control">
                        </div>
                        <button type="submit" name="action" value="Ingresar" class="btn btn-primary btn-block">Iniciar Sesión</button>
                    </form>

                    <div class="error-message">
                        <% if (request.getAttribute("ok") != null) {%>
                        <%= request.getAttribute("ok")%>
                        <% }%>

                    </div>
                </div>
            </div>
        </div>



        <!-- Enlace a Bootstrap JS y jQuery (Requeridos para el funcionamiento de Bootstrap) -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </body>
</html>



