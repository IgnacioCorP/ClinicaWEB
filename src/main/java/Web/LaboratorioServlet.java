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
                case "editar":
                    //this.eliminarCliente(request, response);
                    break;
                case "eliminar":
                    //this.EliminarCliente(request, response);
                    break;
                case "listarClientes":
                    List<Laboratorio> laboratorios = laboratorioNegocioInterfaz.listarLaboratorios();
                    System.out.println("laboratorios: " + laboratorios);
                    request.setAttribute("laboratorios", laboratorios);
                    break;
                case "miCuenta":
                    Laboratorio laboratorio = (Laboratorio) request.getSession().getAttribute("cliente");
                    laboratorioNegocioInterfaz.encontrarLaboratorioPorID(laboratorio);
                    System.out.println("laboratorio: " + laboratorio);
                    request.setAttribute("laboratorio", laboratorio);
                    response.sendRedirect("listadoLaboratorios.jsp");
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

        // 1. Obtenemos el listado de los cliente
        List<Laboratorio> laboratorios = laboratorioNegocioInterfaz.listarLaboratorios();
        request.getRequestDispatcher("/cliente.jsp").forward(request,
                response);

        // 2. Definimos un objeto session para compartir nuestro atributos en un contexto más amplio
        HttpSession sesion = request.getSession();

        // 3. Compartir en el nuevo alcance los atributos
        sesion.setAttribute("laboratorios", laboratorios);
        sesion.setAttribute("totalLaboratorios", laboratorios.size());
        //sesion.setAttribute("saldoTotal", calcularTotal(clientes));
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
        request.getRequestDispatcher("/index.jsp").forward(request,
                response);
    }

}
