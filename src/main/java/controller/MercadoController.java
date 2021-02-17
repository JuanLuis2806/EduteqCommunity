package controller;

import beans.MercadoFacade;
import entities.Mercado;
import entities.Usuario;
import java.io.IOException;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import services.ObtenerFechas;
import services.SubirArchivoAServidor;

@WebServlet(name = "MercadoController", urlPatterns = {"/mercado", "/agregarProducto"})
@MultipartConfig
public class MercadoController extends HttpServlet {

    private static final String URL_MERCADO = "/mercado";
    private static final String URL_REGISTRO_PRODUCTO = "/agregarProducto";
    private static final String RUTA_VISTAS = "/WEB-INF/";
    private static final int USUARIO_ADMIN = 1;
    private static final int USUARIO_ESTUDIANTE = 2;
    private static final String nombreSesion = "usuario";
    private SubirArchivoAServidor cargarArchivo;
    private ObtenerFechas obtenerFechas;

    @EJB
    private MercadoFacade mercadoFacade;
    private Mercado mercado;

    private Usuario usuario;

    private HttpSession sesion;

    @Override
    public void init() throws ServletException {
        getServletContext().setAttribute("productos", mercadoFacade.findAll());
    }

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
            case URL_REGISTRO_PRODUCTO:
                sesion = request.getSession(true);
                Usuario usuarioProductos = (Usuario) sesion.getAttribute(nombreSesion);
                request.setAttribute("usuario", usuarioProductos);
                request.getRequestDispatcher(RUTA_VISTAS + "/vistas/mercado.jsp").forward(request, response);
                break;
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
            case URL_REGISTRO_PRODUCTO:
                String nombre = request.getParameter("nombre");
                String descripcion = request.getParameter("descripcion");
                String precio = request.getParameter("precio");

                cargarArchivo = new SubirArchivoAServidor(request, "/src/main/webapp/imagenes");
                String imagen = cargarArchivo.__invoke();
                
                String fechaActual = obtenerFechas.fechaActual();
                Date fechaDate = obtenerFechas.parseFecha(fechaActual);
                Date fechaFutura = obtenerFechas.sumarDiasAFecha(fechaDate, 2);

                sesion = request.getSession(true);
                Usuario usuarioProductos = (Usuario) sesion.getAttribute(nombreSesion);

                usuario = new Usuario();
                usuario.setId(usuarioProductos.getId());

                mercado = new Mercado();
                mercado.setNombre(nombre);
                mercado.setDescripcion(descripcion);
                mercado.setImagen(imagen);
                mercado.setPrecio(precio);
                mercado.setIdUsuario(usuario);
                mercadoFacade.create(mercado);
                break;
        }
    }
}
