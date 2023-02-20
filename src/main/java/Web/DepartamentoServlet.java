/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Dominio.Departamento;
import Dominio.Laboratorio;
import Negocio.DepartamentoNegocioInterfaz;
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
@WebServlet(name = "DepartamentoServlet", urlPatterns = {"/DepartamentoServlet"})
public class DepartamentoServlet extends HttpServlet {

    @Inject
    // Ahora definimos nuestra variable
    DepartamentoNegocioInterfaz departamentoNegocioInterfaz;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.InsertarDepartamento(request, response);
                    break;
                case "editar":
                    // this.editarCliente(request, response);
                    break;
                case "eliminar":
                    //this.EliminarCliente(request, response);
                    break;
                case "listarClientes":
                    //List<Cliente> clientes = clienteNegocioInterfaz.listarClientes();
                    // System.out.println("clientes: " + clientes);
                    // Ponemos usuarios en un alcance
                    //request.setAttribute("clientes", clientes);

                    // 4. Redigir el flujo desde el controlador a un JSP
                    response.sendRedirect("listadoClientes.jsp");
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
                    this.InsertarDepartamento(request, response);
                    break;
                case "editar":
                    //this.eliminarCliente(request, response);
                    break;
                case "eliminar":
                    //this.EliminarCliente(request, response);
                    break;
                case "listarDepartamentos":
                    List<Departamento> departamentos = departamentoNegocioInterfaz.listarDepartamentos();
                    System.out.println("departamentos: " + departamentos);
                    // Ponemos usuarios en un alcance
                    request.setAttribute("departamentos", departamentos);

                    // 4. Redigir el flujo desde el controlador a un JSP
                    response.sendRedirect("/listadoDepartamentos.jso");
                    break;
                case "miCuenta":

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

        request.getRequestDispatcher("/departamentos.jsp").forward(request,
                response);

        HttpSession sesion = request.getSession();

    }

    protected void InsertarDepartamento(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String Nombre = request.getParameter("Nombre");
        String Descripcion = request.getParameter("Descripcion");

        Departamento departamento = new Departamento(Nombre, Descripcion);
        departamentoNegocioInterfaz.registrarDepartamento(departamento);
        System.out.println("registrosModificados = " + departamento);
        //4. Redirigimos a la acción por defecto
        request.getRequestDispatcher("/index.jsp").forward(request,
                response);
    }

}
