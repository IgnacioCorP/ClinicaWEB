/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Dominio.Departamento;
import Negocio.DepartamentoNegocioInterfaz;
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
@WebServlet(name = "EliminarServlet", urlPatterns = {"/Eliminar"})
public class EliminarServlet extends HttpServlet {

    @Inject
    // Ahora definimos nuestra variable
    DepartamentoNegocioInterfaz departamentoNegocioInterfaz;

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
        
        int ID_dep = Integer.valueOf(request.getParameter("eliminar"));
        Departamento departamento = new Departamento(ID_dep);
        departamento = departamentoNegocioInterfaz.encontrarDepartamentoPorID(departamento);
        departamentoNegocioInterfaz.eliminarDepartamento(departamento);
        request.getRequestDispatcher("/Departamento?accion=listarDepartamentos").forward(request,
                response);
        
    }

}
