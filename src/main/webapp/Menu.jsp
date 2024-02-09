<<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Menú con Redirecciones</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 0;
            }
            #menu-container {
                width: 100%;
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                align-items: center;
                padding: 20px;
                box-sizing: border-box;
            }
            .menu-option {
                width: 180px;
                height: 180px;
                margin: 10px;
                border: 2px solid #ccc;
                border-radius: 10px;
                background-color: #fff;
                transition: all 0.3s ease;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                text-decoration: none;
            }
            .menu-option:hover {
                background-color: #e0e0e0;
                cursor: pointer;
            }
            .menu-option img {
                max-width: 120px;
                max-height: 120px;
                margin-bottom: 10px;
            }
            .menu-option div {
                font-size: 20px;
                text-align: center;
            }
            #title {
                text-align: center;
                font-size: 40px;
                margin-top: 30px;
            }
        </style>
    </head>
    <body>
        <h1 id="title">Sistema de Talento Humano</h1>
        <div id="menu-container">
            <a href="Docente Usuario.jsp" class="menu-option">
                <img src="imagenes/docente.png" alt=""/>
                <div>Usuario</div>
            </a>
            <a href="Asistencia.jsp" class="menu-option">
                <img src="imagenes/asistencia.jpg" alt=""/>
                <div>Asistencia</div>
            </a>
            <a href="Capacitacion.jsp" class="menu-option">
                <img src="imagenes/capasitacion.jpg" alt=""/>
                <div>Capacitacion</div>
            </a>
            <a href="Contacto de Emergencia.jsp" class="menu-option">
                <img src="imagenes/contactoemergencia.png" alt=""/>
                <div>Contacto de Emergencia</div>
            </a>
            <a href="Datos Conyuge.jsp" class="menu-option">
                <img src="imagenes/conyuge.png" alt=""/>
                <div>Datos de Conyuge</div>
            </a>
            <a href="Datos Hijo.jsp" class="menu-option">
                <img src="imagenes/hijo.png" alt=""/>
                <div>Datos de Hijo</div>
            </a>
            <a href="Discapacidad o Enfermedad.jsp" class="menu-option">
                <img src="imagenes/discapacidad.png" alt=""/>
                <div>Discapacidad o Enfermedad</div>
            </a>          
            <a href="Evaluacion Desenpeno.jsp" class="menu-option">
                <img src="imagenes/evaluacion.png" alt=""/>
                <div>Evaluacion Desempeño</div>
            </a>
            <a href="Formacion Academica.jsp" class="menu-option">
                <img src="imagenes/formacionacademica.jpg" alt=""/>
                <div>Formacion Academica</div>
            </a>
            <a href="Inclucion Laboral.jsp" class="menu-option">
                <img src="imagenes/inclucion.jpg" alt=""/>
                <div>Inclucion Laboral</div>
            </a>
            <a href="Informacion Bancaria.jsp" class="menu-option">
                <img src="imagenes/banco.jpg" alt=""/>
                <div>Informacion Bancaria</div>
            </a>
            <a href="Permiso.jsp" class="menu-option">
                <img src="imagenes/permiso.png" alt=""/>
                <div>Permisos</div>
            </a>
            <a href="Situacion Senescyt.jsp" class="menu-option">
                <img src="imagenes/senescyt.jpg" alt=""/>
                <div>Situacion Senescyt</div>
            </a>
            <a href="Trayectoria Laboral.jsp" class="menu-option">
                <img src="imagenes/trayectoria.jpg" alt=""/>
                <div>Trayectoria Laboral</div>
            </a>
            <a href="index.jsp" class="menu-option">
                <img src="imagenes/salir.jpg" alt=""/>
                <div>Salir</div>
            </a>
        </div>

    </body>
</html>
