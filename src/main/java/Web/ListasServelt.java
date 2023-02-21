/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Dominio.Departamento;
import Dominio.Laboratorio;
import Negocio.DepartamentoNegocioInterfaz;
import Negocio.EmpleadoNegocioInterfaz;
import Negocio.LaboratorioNegocioInterfaz;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
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
@WebServlet ("/NuevoEmpleado")
public class ListasServelt extends HttpServlet {

    @Inject
    // Ahora definimos nuestra variable
    LaboratorioNegocioInterfaz laboratorioNegocioInterfaz;

    @Inject
    // Ahora definimos nuestra variable
    DepartamentoNegocioInterfaz departamentoNegocioInterfaz;

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
        List<Laboratorio> laboratorios = laboratorioNegocioInterfaz.listarLaboratorios();
        request.setAttribute("laboratorios", laboratorios);

        List<Departamento> departamentos = departamentoNegocioInterfaz.listarDepartamentos();
        request.setAttribute("departamentos", departamentos);

        request.getRequestDispatcher("/RegistroAdmin.jsp").forward(request, response);
    }

}
