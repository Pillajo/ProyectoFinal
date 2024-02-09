
package CONTROLADOR;

import MODELO.Modelo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author josep
 */
@WebServlet(name = "Servlet", urlPatterns = {"/Servlet"})
public class Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

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
       
     HttpSession session = request.getSession();
        Modelo model = (Modelo) session.getAttribute("qq");

        String enteredUsername = request.getParameter("txtuser");
        String enteredPassword = request.getParameter("txtpass");
        // Verifica si ya existe un modelo en la sesión o si es nulo
        if (model == null) {
            // Si es nulo, crea un nuevo modelo y lo establece en la sesión
            model = new Modelo();
            session.setAttribute("qq", model);
        }
        // Realiza la validación de credenciales usando el método validateCredentials del modelo
        boolean isValid = model.validateCredentials(enteredUsername, enteredPassword);
        // Si las credenciales son válidas, redirige a la página "nex.jsp"
        if (isValid) {
            // Reinicia los intentos de inicio de sesión (con el método resetAttempts del modelo)
            model.resetAttempts();
            response.sendRedirect("Menu.jsp");
        } else {
            // Si las credenciales no son válidas
            int remainingAttempts = model.getRemainingAttempts();
            // Si quedan intentos, muestra el mensaje con la cantidad de intentos restantes
            if (remainingAttempts > 0) {
                request.setAttribute("ok", "Intentos: " + remainingAttempts);
            } else {
                // Si no quedan intentos, muestra un mensaje indicando que la cuenta está suspendida
                // y proporciona un enlace externo 
                request.setAttribute("ok", "Su cuneta ha sido suspendida <a href='https://support.hp.com/us-en'>¿Algo salio mal?</a>");
            }
            // Redirige de nuevo a la página de inicio de sesión "index.jsp" con el mensaje apropiado
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
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
