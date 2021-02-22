package controller;

import beans.CarreraFacade;
import beans.EstadoFacade;
import beans.PerfilFacade;
import beans.UsuarioFacade;
import com.google.gson.Gson;
import dtos.PerfilUsuario;
import entities.Carrera;
import entities.Estado;
import entities.Perfil;
import entities.Usuario;
import interfaces.Estatus;
import interfaces.Urls;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import services.ObtenerFormatoTablaUsuario;

/**
 *
 * @author juan
 */
@WebServlet(name = "AdminController", urlPatterns = {
    Urls.URL_ADMIN_USUARIOS,
    Urls.URL_ADMIN_OBTENER_USUARIOS,
    Urls.URL_ADMIN_ELIMINAR_USUARIO,
    Urls.URL_ADMIN_ACTIVAR_USUARIO,
    Urls.URL_ADMIN_SUSPENDER_USUARIO
})
public class AdminController extends HttpServlet {

    @EJB
    private PerfilFacade perfilFacade;
    @EJB
    private UsuarioFacade usuarioFacade;
    private Usuario usuario;

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
            case Urls.URL_ADMIN_USUARIOS: {
                request.getRequestDispatcher(Urls.RUTA_VISTAS + "admin-usuarios_1.jsp").forward(request, response);
                break;
            }
            case Urls.URL_ADMIN_OBTENER_USUARIOS: {
                String result = "";
                List<Perfil> perfiles = perfilFacade.findAll();

                List<PerfilUsuario> perfilesUsuario = new ArrayList<>();
                for (Perfil perfile : perfiles) {
                    ObtenerFormatoTablaUsuario oft = new ObtenerFormatoTablaUsuario();
                    String foto = oft.obtenerImagen(perfile.getFotoPerfil());
                    String botones = oft.obtenerEstatusBotones(perfile.getIdUsuario().getEstatus());
                    perfilesUsuario.add(new PerfilUsuario(
                            perfile.getIdUsuario().getId(), perfile.getId(), perfile.getIdUsuario().getIdTipoUsuario().getStatus(),
                            perfile.getIdUsuario().getEstatus(), perfile.getIdUsuario().getCorreo(), perfile.getIdUsuario().getContrasena(), perfile.getIdUsuario().getMatricula(),
                            perfile.getIdUsuario().getIdDivision().getNombre(), foto, botones)
                    );

                }
                Gson gson = new Gson();
                result = gson.toJson(perfilesUsuario);
                response.getWriter().write(result);
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
            case Urls.URL_ADMIN_ELIMINAR_USUARIO: {
                int usuarioId = Integer.parseInt(request.getParameter("usuarioId"));
                usuario = usuarioFacade.find(usuarioId);
                usuario.setEstatus(Estatus.USUARIO_ELIMINADO);
                usuarioFacade.edit(usuario);
                response.getWriter().write("OK");
                break;

            }

            case Urls.URL_ADMIN_ACTIVAR_USUARIO: {
                int usuarioId = Integer.parseInt(request.getParameter("usuarioId"));
                usuario = usuarioFacade.find(usuarioId);
                usuario.setEstatus(Estatus.USUARIO_ACTIVO);
                usuarioFacade.edit(usuario);
                response.getWriter().write("OK");
                break;
            }

            case Urls.URL_ADMIN_SUSPENDER_USUARIO: {
                int usuarioId = Integer.parseInt(request.getParameter("usuarioId"));
                usuario = usuarioFacade.find(usuarioId);
                usuario.setEstatus(Estatus.USUARIO_INACTIVO);
                usuarioFacade.edit(usuario);
                response.getWriter().write("OK");
                break;
            }

        }

    }

}
