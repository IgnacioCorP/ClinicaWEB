/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Dominio.Laboratorio;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alumno Mañana
 */
@WebServlet(name = "LaboratorioServlet", urlPatterns = {"/Laboratorio"})
public class LaboratorioServlet extends HttpServlet {

    // Ahora hacemos la inyección del componente EJB local al servlet
    @Inject
    // Ahora definimos nuestra variable
    LaboratorioNegocioInterfaz laboratorioNegocioInterfaz; // Cremos una instancia de nuestra if local

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.InsertarLaboratorio(request, response);
                    break;
                case "editar":
                    // this.editarCliente(request, response);
                    break;
                case "eliminar":
                    //this.EliminarCliente(request, response);
                    break;
                case "listarLaboratorios":
                    List<Laboratorio> laboratorios = laboratorioNegocioInterfaz.listarLaboratorios();
                    System.out.println("laboratorios: " + laboratorios);
                    request.setAttribute("laboratorios", laboratorios);
                    request.getRequestDispatcher("/listadoLaboratorios.jsp").forward(request,
                            response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            //this.accionDefault(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.InsertarLaboratorio(request, response);
                    break;
                case "listarLaboratorios":
                    List<Laboratorio> laboratorios = laboratorioNegocioInterfaz.listarLaboratorios();
                    System.out.println("laboratorios: " + laboratorios);
                    request.setAttribute("laboratorios", laboratorios);
                    request.getRequestDispatcher("/listadoLaboratorios.jsp").forward(request,
                            response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            //this.accionDefault(request, response);
        }
    }

    private void accionDefault(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/Laboratorio?accion=listarLaboratorios").forward(request,
                response);
        HttpSession sesion = request.getSession();
    }

    protected void InsertarLaboratorio(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String Nombre_sede = request.getParameter("Nombre_sede");
        String Direccion = request.getParameter("Direccion");
        String Telefono = request.getParameter("Telefono");

        Laboratorio laboratorio = new Laboratorio(Nombre_sede, Direccion, Telefono);
        laboratorioNegocioInterfaz.registrarLaboratorio(laboratorio);
        System.out.println("registrosModificados = " + laboratorio);
        //4. Redirigimos a la acción por defecto
        request.getRequestDispatcher("/Laboratorio?accion=listarLaboratorios").forward(request,
                response);
    }

}
