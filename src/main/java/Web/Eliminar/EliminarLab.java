/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web.Eliminar;

import Dominio.Laboratorio;
import Negocio.LaboratorioNegocioInterfaz;
import java.io.IOException;
import java.io.PrintWriter;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alumno Mañana
 */
@WebServlet(name = "EliminarLab", urlPatterns = {"/EliminarLab"})
public class EliminarLab extends HttpServlet {

     @Inject
    // Ahora definimos nuestra variable
    LaboratorioNegocioInterfaz laboratorioNegocioInterfaz;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int ID_lab = Integer.valueOf(request.getParameter("eliminar"));
        Laboratorio laboratorio = new Laboratorio(ID_lab);
        laboratorio = laboratorioNegocioInterfaz.encontrarLaboratorioPorID(laboratorio);
        laboratorioNegocioInterfaz.eliminarLaboratorio(laboratorio);
        request.getRequestDispatcher("/Laboratorio?accion=listarLaboratorios").forward(request,
                response);
        
    }

  

}
