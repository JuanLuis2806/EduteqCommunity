package controller;

import beans.CarreraFacade;
import beans.DivisionFacade;
import beans.EstadoFacade;
import beans.UsuarioFacade;
import entities.Perfil;
import entities.Usuario;
import interfaces.Estatus;
import interfaces.Urls;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginController", urlPatterns = {
    Urls.URL_LOGIN,
    Urls.URL_LOGIN_VALIDAR_DATOS,
    Urls.URL_PRINCIPAL_PERFIL,
    Urls.URL_CERRAR_SESION
})
public class LoginController extends HttpServlet {

    @EJB
    private UsuarioFacade usuariofacade;
    private HttpSession session;
    @EJB
    private EstadoFacade estadoFacade;
    @EJB
    private CarreraFacade carreraFacade;
    @EJB
    private DivisionFacade divisionFacade;

    @Override
    public void init() throws ServletException {
        getServletContext().setAttribute("estados", estadoFacade.findAll());
        getServletContext().setAttribute("divisiones", divisionFacade.findAll());
        
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        switch (request.getServletPath()) {
            case Urls.URL_LOGIN: {
                request.getRequestDispatcher(Urls.RUTA_VISTAS + "Login.jsp").forward(request, response);
                break;
            }
            case Urls.URL_PRINCIPAL_PERFIL: {
                session = request.getSession(true);
                Perfil perfil = new Perfil();
                String vista = "";
                if (session.getAttribute("usuario") != null) {
                    Usuario usuario = (Usuario) session.getAttribute("usuario");
                    if (usuario.getIdTipoUsuario().getId() == Estatus.ESTATUS_ADMINISTRADOR) {
                        vista = "mi-cuenta-admin";
                    }
                    if (usuario.getIdTipoUsuario().getId() == Estatus.ESTATUS_ESTUDIANTE) {
                        vista = "mi-cuenta-usuario";
                    }
                    
                    if (usuario.getPerfilList().size() > 0) {
                        perfil = usuario.getPerfilList().get(0);
                    }
                    
                    session.setAttribute("perfil", perfil);
                    request.setAttribute("perfil", perfil);
                    request.setAttribute("usuario", usuario);
                    request.getRequestDispatcher(Urls.RUTA_VISTAS_ESTUDIANTE + vista + ".jsp").forward(request, response);
                }
                break;
            }
            
            case Urls.URL_CERRAR_SESION: {
                session = request.getSession(true);
                session.removeAttribute("perfil");
                session.removeAttribute("usuario");
                session.invalidate();
                
                response.sendRedirect("login");
                break;
            }
                
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        switch (request.getServletPath()) {
            case Urls.URL_LOGIN_VALIDAR_DATOS: {
                String correo = request.getParameter("correo");
                String contrasena = request.getParameter("contrasena");
                Usuario usuario = usuariofacade.login(correo, contrasena);
                if (usuario != null) {
                    session = request.getSession(true);
                    session.setAttribute("usuario", usuario);
                    response.getWriter().print("OK");
                    break;
                }
                response.getWriter().print("ContrasenaIncorrecta");
                break;
            }
        }
    }
}
