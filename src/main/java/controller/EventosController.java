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
import entities.Perfil;
import entities.TipoEvento;
import entities.Usuario;
import interfaces.Estatus;
import interfaces.Urls;
import java.io.IOException;
import java.io.PrintWriter;
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

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
@WebServlet(name = "EventosController", urlPatterns = {
    Urls.URL_EVENTOS,
    Urls.URL__REGISTAR_EVENTOS_ADMIN,})
@MultipartConfig
public class EventosController extends HttpServlet {

    @EJB
    private TipoEventoFacade tipoEventoFacade;
    @EJB
    private UsuarioFacade usuarioFacade;
    @EJB
    private EventosFacade eventosFacade;

    private SubirArchivoAServidor archivoServidor;

    private HttpSession session;

    private Perfil perfil;

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
            case Urls.URL_EVENTOS: {

                session = request.getSession(true);
                if (session.getAttribute("perfil") != null) {
                    perfil = (Perfil) session.getAttribute("perfil");
                } else {
                    response.sendRedirect("login");
                }

                List<TipoEvento> tiposEventos = tipoEventoFacade.findAll();
                List<Eventos> eventos = eventosFacade.findAll();

                request.setAttribute("eventos", eventos);
                request.setAttribute("tipoEventos", tiposEventos);
                request.setAttribute("perfil", perfil);

                if (perfil.getIdUsuario().getIdTipoUsuario().getId() == Estatus.ESTATUS_ADMINISTRADOR) {
                    request.getRequestDispatcher(Urls.RUTA_VISTAS + "Eventos_Administrador.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher(Urls.RUTA_VISTAS_ESTUDIANTE + "Eventos.jsp").forward(request, response);
                }

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
            case Urls.URL__REGISTAR_EVENTOS_ADMIN: {
                int idUsuario = Integer.parseInt(request.getParameter("usuario"));
                int idTipoEvento = Integer.parseInt(request.getParameter("tipoEvento"));
                String nombre = request.getParameter("nombre");
                String descripcion = request.getParameter("descripcion");
                String fechaInicio = request.getParameter("fechaInicio");
                String fechaFinal = request.getParameter("fechaFinal");

                archivoServidor = new SubirArchivoAServidor(request, "/src/main/webapp/img/noticias");
                String nombreImagen = archivoServidor.__invoke();

                TipoEvento tipoEvento = tipoEventoFacade.find(idTipoEvento);
                Usuario usuario = usuarioFacade.find(idUsuario);

                Eventos evento = new Eventos();
                evento.setIdUsuario(usuario);
                evento.setNombre(nombre);
                evento.setTipoEvento(tipoEvento);
                evento.setDescripcion(descripcion);
                evento.setFechaFinal(fechaFinal);
                evento.setFechaInicio(fechaInicio);
                evento.setImagen(nombreImagen);

                eventosFacade.create(evento);

                response.getWriter().print("OK");
                break;
            }
        }

    }

}
