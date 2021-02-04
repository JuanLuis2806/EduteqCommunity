
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "IndexController", urlPatterns = {"/admin", "/usuarios"})
public class IndexController extends HttpServlet {

    
    private static final String RUTA_VISTAS = "/WEB-INF/vistas_admin/";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        switch (request.getServletPath()) {
            case "/admin":
                
                request.getRequestDispatcher(RUTA_VISTAS+ "index_admin.jsp").forward(request, response);
                break;
                
                  case "/usuarios":
                
                request.getRequestDispatcher(RUTA_VISTAS+ "Usuarios.jsp").forward(request, response);
                break;
     
     }           
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
