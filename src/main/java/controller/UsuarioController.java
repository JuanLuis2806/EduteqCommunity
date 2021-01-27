package controller;

import beans.CarreraFacade;
import beans.DivisionFacade;
import beans.EstadoFacade;
import beans.PerfilFacade;
import beans.TipoUsuarioFacade;
import beans.UsuarioFacade;
import entities.Carrera;
import entities.Division;
import entities.Estado;
import entities.Perfil;
import entities.TipoUsuario;
import entities.Usuario;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import services.SubirArchivoAServidor;

/**
 *
 * @author juan
 */
@WebServlet(name = "UsuarioController", urlPatterns = {"/registro", "/perfil"})
@MultipartConfig
public class UsuarioController extends HttpServlet {

    private static final String URL_REGISTRO_USUARIO = "/registro";
    private static final String URL_REGISTRO_PERFIL = "/perfil";
    private static final String RUTA_VISTAS = "/WEB-INF/";
    private static final int USUARIO_ADMIN = 1;
    private static final int USUARIO_ESTUDIANTE = 2;
    private SubirArchivoAServidor archivoServidor;

    @EJB
    private DivisionFacade divisionFacade;
    private Division division;
    @EJB
    private EstadoFacade estadoFacade;
    private Estado estado;
    @EJB
    private UsuarioFacade usuarioFacade;
    private Usuario usuario;
    @EJB
    private TipoUsuarioFacade tipoUsuarioFacade;
    private TipoUsuario tipoUsuario;
    @EJB
    private PerfilFacade perfilFacade;
    private Perfil perfil;
    @EJB
    private CarreraFacade carreraFacade;
    private Carrera carrera;
    

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
                List<Division> divisiones = new ArrayList<>();
                List<Estado> estados = new ArrayList<>();
                List<Carrera> carreras = new ArrayList<>();

                divisiones = divisionFacade.findAll();
                estados = estadoFacade.findAll();
                carreras = carreraFacade.findAll();

                request.setAttribute("divisiones", divisiones);
                request.setAttribute("estados", estados);
                request.setAttribute("carreras", carreras);
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
                String correo = request.getParameter("correo");
                String matricula = request.getParameter("matricula");

                if (null != usuarioFacade.findByCorreo(correo)) {
                    response.getWriter().print("Correo existente!");
                    break;
                }

                if (null != usuarioFacade.findByMatricula(matricula)) {
                    response.getWriter().print("Matricula existente!");
                    break;
                }
                
                response.getWriter().print("OK");

                break;
            }
            case URL_REGISTRO_PERFIL: {
                String nombre = request.getParameter("nombre");
                String apellidos = request.getParameter("apellidos");
                String alias = request.getParameter("alias");
                String pasatiempo = request.getParameter("pasatiempo");
                String fechaNaciemiento = request.getParameter("fechaNaciemiento");
                int edad = Integer.parseInt(request.getParameter("edad"));
                int  estadoId = Integer.parseInt(request.getParameter("estado"));
                int divisionId = Integer.parseInt(request.getParameter("division"));
                int carreraId = Integer.parseInt(request.getParameter("carrera"));
                String sexo = request.getParameter("sexo");
                String correo = request.getParameter("correo");
                String matricula = request.getParameter("matricula");
                String password = request.getParameter("password");

                archivoServidor = new SubirArchivoAServidor(request, "/src/main/webapp/imagenes");
                String nombreImagen = archivoServidor.__invoke();
                
                tipoUsuario = new TipoUsuario();
                tipoUsuario = tipoUsuarioFacade.find(USUARIO_ESTUDIANTE);
                
                division = new Division();
                division = divisionFacade.find(divisionId);
                
                carrera = new Carrera();
                carrera = carreraFacade.find(carreraId);
                
                estado = new Estado();
                estado = estadoFacade.find(estadoId);
                
                
                usuario = new Usuario();
                usuario.setIdTipoUsuario(tipoUsuario);
                usuario.setIdDivision(division);
                usuario.setCorreo(correo);
                usuario.setMatricula(matricula);
                usuario.setContrasena(password);
                usuarioFacade.create(usuario);
                
                perfil = new Perfil();
                perfil.setIdUsuario(usuario);
                perfil.setNombre(nombre);
                perfil.setApellidos(apellidos);
                perfil.setAlias(alias);
                perfil.setPasatiempos(pasatiempo);
                perfil.setFechaNacimiento(fechaNaciemiento);
                perfil.setSexo(sexo);
                perfil.setIdCarrera(carrera);
                perfil.setFotoPerfil(nombreImagen);
                perfil.setEdad(edad);
                perfil.setIdEstado(estado);
                perfilFacade.create(perfil);
                
                response.getWriter().println("OK");
                break;
            }
        }
    }
}
