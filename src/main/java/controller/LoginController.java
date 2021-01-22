/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.UsuarioFacade;
import entities.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "UsuarioController", urlPatterns = {"/login", "/inicio", "/verificar"})
public class LoginController extends HttpServlet {

    @EJB
    private UsuarioFacade usuariofacade;

    private HttpSession session;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        switch (request.getServletPath()) {
            case "/login":
                request.getRequestDispatcher("Login.jsp").forward(request, response);
                break;
            case "/inicio":
                session = request.getSession(true);
                if (session.getAttribute("usuario") != null) {
                    Usuario usuario = (Usuario) session.getAttribute("usuario");
                    request.setAttribute("usuario", usuario);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        switch (request.getServletPath()) {
            case "/verificar":
                String correo = request.getParameter("correo");
                String contrasena = request.getParameter("contrasena");
                Usuario usuario = usuariofacade.login(correo, contrasena);
                if (usuario != null) {
                    session = request.getSession(true);
                    session.setAttribute("usuario", usuario);
                    response.sendRedirect("inicio");
                } else {
                    response.sendRedirect("login?id=1");
                }
                break;
        }
    }
}
