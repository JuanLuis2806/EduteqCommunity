package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author juan
 */
@WebServlet(name = "UsuarioController", urlPatterns = {"/registro", "/perfil"})
public class UsuarioController extends HttpServlet {

    private static final String URL_REGISTRO_USUARIO = "/registro";
    private static final String URL_REGISTRO_PERFIL = "/perfil";
    private static final String RUTA_VISTAS = "/WEB-INF/";

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

        switch (request.getServletPath()) {
            case URL_REGISTRO_USUARIO: {
                request.getRequestDispatcher(RUTA_VISTAS + "Registro.jsp").forward(request, response);
                break;
            }

            case URL_REGISTRO_PERFIL: {
                request.getRequestDispatcher(RUTA_VISTAS + "Perfil.jsp").forward(request, response);
                break;

            }

        }
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

        switch (request.getServletPath()) {
            case URL_REGISTRO_USUARIO: {

                break;
            }

        }
    }

}
