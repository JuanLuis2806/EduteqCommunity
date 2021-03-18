/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.EventosFacade;
import beans.TipoEventoFacade;
import beans.UsuarioFacade;
import entities.Eventos;
import entities.TipoEvento;
import entities.Usuario;
import interfaces.Urls;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import services.SubirArchivoAServidor;

@WebServlet(name = "EventosController", urlPatterns = {Urls.URL_EVENTOS, Urls.URL_LISTAEVENTOS, Urls.URL_REGISTROEVENTOS})
public class EventosController extends HttpServlet {

    private SubirArchivoAServidor archivoServidor;
    private HttpSession session;

    @EJB
    private EventosFacade EventosFacade;
    private Eventos evento;

    @EJB
    private UsuarioFacade usuarioFacade;
    private Usuario usuario;

    @EJB
    private TipoEventoFacade TipoEventoFacade;
    private TipoEvento TipoEvento;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        switch (request.getServletPath()) {
            case Urls.URL_EVENTOS: {
                request.getRequestDispatcher(Urls.RUTA_VISTAS + "Eventos_Administrador.jsp").forward(request, response);
            }

            case Urls.URL_LISTAEVENTOS: {

                List<Eventos> Eventos = new ArrayList<>();

                Eventos = EventosFacade.findAll();

                request.setAttribute("Eventos", Eventos);
                request.getRequestDispatcher(Urls.RUTA_VISTAS + "Eventos_Administrador.jsp").forward(request, response);

                break;
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        switch (request.getServletPath()) {

            case Urls.URL_REGISTROEVENTOS: {

                int id = Integer.parseInt(request.getParameter("id"));
                int idUsuario = Integer.parseInt(request.getParameter("usuario"));
                String descripcion = request.getParameter("descripcion");
                String nombre = request.getParameter("nombre");
                String tipoEvento = request.getParameter("tipoEvento");
                archivoServidor = new SubirArchivoAServidor(request, "/src/main/webapp/imagenes");
                String nombreImagen = archivoServidor.__invoke();

                usuario = new Usuario();

                TipoEvento = new TipoEvento();

                evento = new Eventos();
                evento.setId(id);
                evento.setIdUsuario(usuario);
                evento.setDescripcion(descripcion);
                evento.setNombre(nombre);
                evento.setImagen(nombreImagen);
                evento.setTipoEvento(TipoEvento);

                session = request.getSession(true);
                session.setAttribute("usuario", usuario);
               
                response.getWriter().print("ok");

                break;

            }

        }

    }

}
