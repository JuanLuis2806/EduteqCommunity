package controller;

import beans.MercadoFacade;
import entities.Mercado;
import entities.Usuario;
import interfaces.Urls;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import services.SubirArchivoAServidor;

@WebServlet(name = "MercadoController", urlPatterns = {
    Urls.URL_REGISTRO_PRODUCTO
})
@MultipartConfig
public class MercadoController extends HttpServlet {

    private static final String nombreSesion = "usuario";
    private SubirArchivoAServidor cargarArchivo;

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
            case Urls.URL_REGISTRO_PRODUCTO:
                sesion = request.getSession(true);
                Usuario usuarioProductos = (Usuario) sesion.getAttribute(nombreSesion);

                if (null == usuarioProductos) {
                    response.sendRedirect(Urls.URL_LOGIN);
                }

                request.setAttribute("usuario", usuarioProductos);

                List<Mercado> productos = new ArrayList<>();
                productos = mercadoFacade.findAllProducts();
                productos.get(0).getIdUsuario().getMatricula();
              

                request.setAttribute("productos", productos);
                request.getRequestDispatcher(Urls.RUTA_VISTAS + "/vistas/mercado.jsp").forward(request, response);
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
            case Urls.URL_REGISTRO_PRODUCTO:
                String nombre = request.getParameter("nombre");
                String descripcion = request.getParameter("descripcion");
                String precio = request.getParameter("precio");

                cargarArchivo = new SubirArchivoAServidor(request, "/src/main/webapp/imagenes");
                String imagen = cargarArchivo.__invoke();

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

                response.getWriter().print("OK");
                break;
        }
    }
}
