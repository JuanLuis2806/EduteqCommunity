package controller;

import beans.DivisionFacade;
import com.google.gson.Gson;
import dtos.CarreraDTO;
import entities.Carrera;
import entities.Division;
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

@WebServlet(name = "DivisionController", urlPatterns = {
    Urls.URL_OBTENER_CARRERAS,})
public class DivisionController extends HttpServlet {

    @EJB
    private DivisionFacade divisionFacade;

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
            case Urls.URL_OBTENER_CARRERAS: {
                int idDivision = Integer.parseInt(request.getParameter("idDivision"));
                Division division = divisionFacade.find(idDivision);
                List<Carrera> divisiones = division.getCarreraList();

                List<CarreraDTO> carreras = new ArrayList<>();
                for (Carrera carrera : divisiones) {
                    carreras.add(new CarreraDTO(carrera.getId(), carrera.getNombre(), carrera.getIdDivision().getId(), carrera.getIdDivision().getNombre()));
                }

                Gson gson = new Gson();
                String result = gson.toJson(carreras);

                PrintWriter out = response.getWriter();
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                out.print(result);
                out.flush();
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
    }

}
