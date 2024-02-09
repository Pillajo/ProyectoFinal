/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;

import MODELO.Asistencia;
import MODELO.AsistenciaDAO;
import MODELO.Capasitacion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.time.temporal.ChronoUnit;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author josep
 */
@WebServlet(name = "Servletasistencias", urlPatterns = {"/Servletasistencias"})
public class Servletasistencias extends HttpServlet {

    AsistenciaDAO test;
    String mensaje;

    @Override
    public void init() throws ServletException {
        //recbo os datos para dar la orde de conexion bd
        String jdbcURL = getServletContext().getInitParameter("jdbcURL");
        String jdbcUSERName = getServletContext().getInitParameter("jdbcUSERName");
        String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");
        try {
            test = new AsistenciaDAO(jdbcURL, jdbcUSERName, jdbcPassword);
            mensaje = ("conexion exitosa");
        } catch (SQLException ex) {
            Logger.getLogger(Servlet.class.getName()).log(Level.SEVERE, null, ex);
            mensaje = ("Error de conexion");
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Servlet1</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servlet1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        //zona de variables
     int idAsistencia;
    String fechaAsistencia;
    String horaEntrada;
    String horaSalida;
    String obserbaciones;
    String cumpleOchoHoras;
    String hojaRuta;
    String horaInicioHojaRuta;
    String horaFinHojaRuta;
    int usuario_idCedula;

    String op;

    // Captura de datos del formulario
    fechaAsistencia = request.getParameter("fechaAsistencia");
    horaEntrada = request.getParameter("horaEntrada");
    horaSalida = request.getParameter("horaSalida");
    obserbaciones = request.getParameter("obserbaciones");
    hojaRuta = request.getParameter("hojaRuta");
    horaInicioHojaRuta = request.getParameter("horaInicioHojaRuta");
    horaFinHojaRuta = request.getParameter("horaFinHojaRuta");
    usuario_idCedula = Integer.parseInt(request.getParameter("usuario_idCedula"));

    // Verificación de existencia de idAsistencia en la solicitud
    String idAsistenciaParam = request.getParameter("idAsistencia");
    if (idAsistenciaParam != null && !idAsistenciaParam.isEmpty()) {
        idAsistencia = Integer.parseInt(idAsistenciaParam);
    } else {
        idAsistencia = 0; // O asigna el valor que desees para indicar que no se proporcionó un id
    }

    op = request.getParameter("operacion");

    switch (op.toUpperCase()) {
        case "GUARDAR":
            // Determinar las horas trabajadas en horas y minutos
            LocalTime horaEntradaLocal = LocalTime.parse(horaEntrada);
            LocalTime horaSalidaLocal = LocalTime.parse(horaSalida);
            long diferenciaMinutos = ChronoUnit.MINUTES.between(horaEntradaLocal, horaSalidaLocal);

            // Calcular las horas y los minutos por separado
            long horas = diferenciaMinutos / 60;
            long minutos = diferenciaMinutos % 60;

            // Formatear las horas trabajadas en un formato adecuado para el campo TIME de la base de datos
            String horasTrabajadasFormato = String.format("%02d:%02d:00", horas, minutos);

            // Determinar si se cumplieron las ocho horas de trabajo
            cumpleOchoHoras = (diferenciaMinutos >= 480) ? "Sí" : "No";

            // Crear un objeto Asistencia con los parámetros y el resultado del cálculo
            Asistencia objInsert = new Asistencia(fechaAsistencia, horaEntrada,
                    horaSalida, obserbaciones, cumpleOchoHoras, hojaRuta, horaInicioHojaRuta,
                    horaFinHojaRuta, usuario_idCedula, horasTrabajadasFormato);

            if (test.registrarAsistecia(objInsert)) {
                mensaje = "Datos insertados correctamente";
            } else {
                mensaje = "Error en la inserción de datos";
            }
            break;

        case "EDITAR":
            // Determinar las horas trabajadas en horas y minutos
            LocalTime horaEntradaLocalEdit = LocalTime.parse(horaEntrada);
            LocalTime horaSalidaLocalEdit = LocalTime.parse(horaSalida);
            long diferenciaMinutosEdit = ChronoUnit.MINUTES.between(horaEntradaLocalEdit, horaSalidaLocalEdit);

            // Calcular las horas y los minutos por separado
            long horasEdit = diferenciaMinutosEdit / 60;
            long minutosEdit = diferenciaMinutosEdit % 60;

            // Formatear las horas trabajadas en un formato adecuado para el campo TIME de la base de datos
            String horasTrabajadasFormatoEdit = String.format("%02d:%02d:00", horasEdit, minutosEdit);

            // Determinar si se cumplieron las ocho horas de trabajo
            cumpleOchoHoras = (diferenciaMinutosEdit >= 480) ? "Sí" : "No";

            Asistencia objact = new Asistencia(idAsistencia, fechaAsistencia,
                    horaEntrada, horaSalida, obserbaciones, cumpleOchoHoras,
                    hojaRuta, horaInicioHojaRuta,
                    horaFinHojaRuta, usuario_idCedula, horasTrabajadasFormatoEdit);

            if (test.EditarTODO(objact)) {
                mensaje = "Registro actualizado";
            } else {
                mensaje = "Error al actualizar el registro";
            }
            break;

        default:
            mensaje = "Operación no reconocida";
    }
    request.setAttribute("cajitamensajesbd", mensaje);

    RequestDispatcher objdevuelve = request.getRequestDispatcher("Asistencia.jsp");
    objdevuelve.forward(request, response);
}
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
