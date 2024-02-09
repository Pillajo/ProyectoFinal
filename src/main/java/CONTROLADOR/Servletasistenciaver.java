/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CONTROLADOR;

import MODELO.Asistencia;
import MODELO.AsistenciaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
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
@WebServlet(name = "Servletasistenciaver", urlPatterns = {"/Servletasistenciaver"})
public class Servletasistenciaver extends HttpServlet {

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
            out.println("<title>Servlet Servletasistenciaver</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servletasistenciaver at " + request.getContextPath() + "</h1>");
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
        int idUpdate = 0;
        String datos = "";

        String op = request.getParameter("operacion");
        ArrayList<Asistencia> arrobj = new ArrayList();

        switch (op.toUpperCase()) {

            case "EDITAR":
    try {
        
                idUpdate = Integer.parseInt(request.getParameter("idUpdate"));
                datos = request.getParameter("datos");
                Asistencia objupdate = new Asistencia(idUpdate, datos);
                if (test.Editar(objupdate)) {

                    mensaje = "Registro actualizado correctamente";
                } else {
                    mensaje = "Error al actualizar el registro";
                }
                request.setAttribute("resultado", mensaje);
            } catch (NumberFormatException e) {
                mensaje = "Error al procesar el ID para editar";
            }
            break;

            case "ELIMINAR":
                String variableDelet = request.getParameter("deleteId");
                if (variableDelet != null && !variableDelet.trim().isEmpty()) {
                    try {
                        int deleteId = Integer.parseInt(variableDelet);
                        if (test.Eliminar(deleteId)) {
                            mensaje = "Registro eliminado correctamente";
                        } else {
                            mensaje = "Error al eliminar";
                        }
                        request.setAttribute("resultado", mensaje);
                    } catch (NumberFormatException e) {
                        mensaje = "Error al procesar el ID para eliminar";
                    }
                }
                break;

            case "MOSTRAR TODOS LOS DATOS":
                arrobj = test.SelecionarTodo();
                // Puedes agregar más lógica aquí si es necesario
                break;

            case "FILTRAR":
                String variableFiltro = request.getParameter("idCedula");
                if (variableFiltro != null && !variableFiltro.trim().isEmpty()) {
                    try {
                        int usuario_idCedula = Integer.parseInt(variableFiltro);
                        arrobj = test.SelecionarUno(usuario_idCedula);
                        // Puedes agregar más lógica aquí si es necesario
                    } catch (NumberFormatException e) {
                        mensaje = "Error al procesar el ID para filtrar";
                    }
                }
                break;

            default:
                mensaje = "Operación no reconocida";
        }

        request.setAttribute("cajitareporte", arrobj);

        RequestDispatcher objdevuelve = request.getRequestDispatcher("asistenciareporte.jsp");
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
