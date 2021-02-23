/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.DivisionFacade;
import beans.PerfilFacade;
import beans.PublicacionFacade;
import beans.PublicacionUsuarioFacade;
import beans.UsuarioFacade;
import com.google.gson.Gson;
import dtos.PreguntaDTO;
import entities.Division;
import entities.Perfil;
import entities.Publicacion;
import entities.PublicacionUsuario;
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

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
@WebServlet(name = "ForoController", urlPatterns = {
    Urls.URL_FORO,
    Urls.URL_CREAR_PUBLICACION,
    Urls.URL_CREAR_COMENTARIO,
    Urls.URL_OBTENER_PUNBLICACION_RESPUESTA
})
public class ForoController extends HttpServlet {

    @EJB
    private PublicacionFacade publicacionFacade;
    private Publicacion publicacion;
    @EJB
    private PerfilFacade perfilFacade;
    private Perfil perfil;
    @EJB
    private PublicacionUsuarioFacade puf;
    private PublicacionUsuario publicacionUsuario;
    @EJB
    private UsuarioFacade usuarioFacade;
    private Usuario usuario;
     @EJB
    private DivisionFacade divisionFacade;
    private Division division;
    
    
   private HttpSession session;

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
            case Urls.URL_FORO: {
                session = request.getSession(true);
                if (session.getAttribute("perfil") != null) {
                    perfil = (Perfil) session.getAttribute("perfil");
                } else {
                    response.sendRedirect("login");
                }
                
                request.setAttribute("perfil", perfil);
                
                request.getRequestDispatcher(Urls.RUTA_VISTAS_ESTUDIANTE + "Foro.jsp").forward(request, response);
                break;
            }
            
            case Urls.URL_OBTENER_PUNBLICACION_RESPUESTA: {

                List<List<PreguntaDTO>> publicacions = new ArrayList<>();
                List<Publicacion> publicaciones = publicacionFacade.findAll();
                
                for (Publicacion publicacion : publicaciones) {
                    perfil = perfilFacade.find(publicacion.getIdPerfil().getId());
                    List<PreguntaDTO> preguntas = new ArrayList<>();
                    PreguntaDTO pregunta = new PreguntaDTO();
                    pregunta.setPublicacionId(publicacion.getId());
                    pregunta.setContenido(publicacion.getContenido());
                    pregunta.setIdDivisionPublicacion(publicacion.getIdDivision().getId());
                    pregunta.setDivision(publicacion.getIdDivision().getNombre());
                    pregunta.setNombre(perfil.getNombre());
                    pregunta.setFoto(perfil.getFotoPerfil());
                    pregunta.setCarrera(perfil.getIdCarrera().getNombre());
                    preguntas.add(pregunta);
                    
                    List<PublicacionUsuario> pus = puf.obtenerPublicaciones(publicacion);
                    
                    if (pus != null) {
                        for (PublicacionUsuario pu : pus) {
                            PreguntaDTO respuesta = new PreguntaDTO();
                            respuesta.setPublicacionId(pu.getIdPublicacion().getId());
                            respuesta.setContenido(pu.getComentario());
                            respuesta.setIdDivisionPublicacion(pu.getIdPublicacion().getId());
                            respuesta.setDivision(pu.getIdPublicacion().getIdDivision().getNombre());
                            respuesta.setNombre(pu.getIdPerfil().getNombre());
                            respuesta.setFoto(pu.getIdPerfil().getFotoPerfil());
                            respuesta.setCarrera(pu.getIdPerfil().getIdCarrera().getNombre());
                            preguntas.add(respuesta);

                        }
                    }

                    publicacions.add(preguntas);

                }
                
                Gson gson = new Gson();
                String result = gson.toJson(publicacions);
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
            case Urls.URL_CREAR_PUBLICACION: {
                int perfilId = Integer.parseInt(request.getParameter("perfilId"));
                int divisionId = Integer.parseInt(request.getParameter("divisionId"));
                String contenido = request.getParameter("pregunta");

                perfil = new Perfil();
                perfil = perfilFacade.find(perfilId);
                
                division = divisionFacade.find(divisionId);

                publicacion = new Publicacion();
                publicacion.setIdDivision(division);
                publicacion.setIdPerfil(perfil);
                publicacion.setContenido(contenido);
                publicacionFacade.create(publicacion);

                PreguntaDTO pregunta = new PreguntaDTO();
                pregunta.setPublicacionId(publicacion.getId());
                pregunta.setContenido(publicacion.getContenido());
                pregunta.setNombre(perfil.getNombre());
                pregunta.setFoto(perfil.getFotoPerfil());
                pregunta.setDivision(perfil.getIdUsuario().getIdDivision().getNombre());
                pregunta.setCarrera(perfil.getIdCarrera().getNombre());
                pregunta.setIdDivisionPublicacion(publicacion.getIdDivision().getId());

                Gson gson = new Gson();
                String result = gson.toJson(pregunta);
                response.getWriter().write(result);

                break;
            }

            case Urls.URL_CREAR_COMENTARIO: {
                int perfilId = Integer.parseInt(request.getParameter("perfilId"));
                int preguntaId = Integer.parseInt(request.getParameter("preguntaId"));
                String contenido = request.getParameter("respuesta");

                perfil = perfilFacade.find(perfilId);
                publicacion = publicacionFacade.find(preguntaId);
                publicacionUsuario = new PublicacionUsuario();
                publicacionUsuario.setIdPublicacion(publicacion);
                publicacionUsuario.setIdPerfil(perfil);
                publicacionUsuario.setComentario(contenido);
                puf.create(publicacionUsuario);

                PreguntaDTO pregunta = new PreguntaDTO();
                pregunta.setPublicacionId(publicacion.getId());
                pregunta.setContenido(publicacionUsuario.getComentario());
                pregunta.setNombre(perfil.getNombre());
                pregunta.setFoto(perfil.getFotoPerfil());
                pregunta.setDivision(perfil.getIdUsuario().getIdDivision().getNombre());
                pregunta.setCarrera(perfil.getIdCarrera().getNombre());
                pregunta.setIdDivisionPublicacion(publicacion.getIdDivision().getId());

                Gson gson = new Gson();
                String result = gson.toJson(pregunta);
                response.getWriter().write(result);
                break;
            }
            

        }
    }

}
