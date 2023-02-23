/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Dominio.Cliente;
import Dominio.Departamento;
import Dominio.Empleado;
import Dominio.EmpleadoPK;
import Dominio.Laboratorio;
import Negocio.ClienteNegocioInterfaz;
import Negocio.EmpleadoNegocioInterfaz;
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
@WebServlet(name = "EmpleadoServlet", urlPatterns = {"/Empleado"})
public class EmpleadoServlet extends HttpServlet {

    @Inject
    // Ahora definimos nuestra variable
    EmpleadoNegocioInterfaz empleadoNegocioInterfaz; // Cremos una instancia de nuestra if local

    @Inject
    // Ahora definimos nuestra variable
    ClienteNegocioInterfaz clienteNegocioInterfaz;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        HttpSession sesion = request.getSession();

        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.InsertarEmpleado(request, response);
                    break;
                case "editar":
                    //this.modificarUsuario(request, response);
                    break;
                case "eliminar":
                    // this.EliminarCliente(request, response);
                    break;
                case "Login":
                    String email = request.getParameter("Email");
                    String contrasena = request.getParameter("Clave");

                    System.out.println("Email " + email);
                    System.out.println("Clave " + contrasena);

                    List<Empleado> usuariosLogin = empleadoNegocioInterfaz.listarEmpleados();
                    System.out.println(usuariosLogin);
                    for (int i = 0; i < usuariosLogin.size(); i++) {

                        String correoUsuario = usuariosLogin.get(i).getEmail();
                        String contraUsuario = usuariosLogin.get(i).getClave();
                        if (correoUsuario.equals(email) && contraUsuario.equals(contrasena)) {
                            System.out.println("conectado");
                            correoUsuario = usuariosLogin.get(i).getEmail();
                            sesion.setAttribute("Email", correoUsuario);
                            System.out.println(usuariosLogin.get(i));
                            request.getRequestDispatcher("empleado.jsp").forward(request, response);
                            return;
                        }
                    }

                    request.setAttribute("mensajeError", "Email o contraseña incorrectos");
                    request.getRequestDispatcher("LoginAdmin.jsp").forward(request, response);

                    break;

                case "listarClientes":
                    List<Cliente> clientes = clienteNegocioInterfaz.listarClientes();
                    System.out.println("clientes: " + clientes);
                    request.setAttribute("clientes", clientes);
                    /*request.getRequestDispatcher("/listadoClientes.jsp").forward(request,
                response);*/
                    break;
                case "listarEmpleados":
                    List<Empleado> empleados = empleadoNegocioInterfaz.listarEmpleados();
                    System.out.println("empleados: " + empleados);
                    request.setAttribute("empleados", empleados);
                    /*request.getRequestDispatcher("listadoEmpleados.jsp").forward(request,
                response);*/
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
        HttpSession sesion = request.getSession();

        if (accion != null) {

            switch (accion) {
                case "insertar":
                    this.InsertarEmpleado(request, response);

                    break;
                case "editar":

                    break;
                case "eliminar":

                    break;
                case "Login":
                    String email = request.getParameter("Email");
                    String contrasena = request.getParameter("Clave");

                    System.out.println("Email " + email);
                    System.out.println("Clave " + contrasena);

                    List<Empleado> usuariosLogin = empleadoNegocioInterfaz.listarEmpleados();
                    System.out.println(usuariosLogin);
                    for (int i = 0; i < usuariosLogin.size(); i++) {

                        String correoUsuario = usuariosLogin.get(i).getEmail();
                        String contraUsuario = usuariosLogin.get(i).getClave();
                        if (correoUsuario.equals(email) && contraUsuario.equals(contrasena)) {
                            System.out.println("conectado");
                            correoUsuario = usuariosLogin.get(i).getEmail();
                            sesion.setAttribute("Email", correoUsuario);
                            System.out.println(usuariosLogin.get(i));
                            response.sendRedirect("empleado.jsp");
                        }
                    }
                    break;

                case "listarClientes":
                    List<Cliente> clientes = clienteNegocioInterfaz.listarClientes();
                    System.out.println("clientes: " + clientes);
                    request.setAttribute("clientes", clientes);
                    request.getRequestDispatcher("/listadoClientes.jsp").forward(request,
                            response);
                    break;
                case "listarEmpleados":
                    this.ListarEmpleados(request, response);

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

        // 1. Obtenemos el listado de los cliente
        request.getRequestDispatcher("/index.jsp").forward(request,
                response);

    }

    protected void InsertarEmpleado(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recuperar los parámetros de la solicitud
        String nif = request.getParameter("Nif");
        String nombre = request.getParameter("Nombre");
        String apellido = request.getParameter("Apellido");
        String telefono = request.getParameter("Telefono");
        String email = request.getParameter("Email");
        String clave = request.getParameter("Clave");
        int departamento = Integer.parseInt(request.getParameter("laboratorio"));
        int laboratorio = Integer.parseInt(request.getParameter("departamento"));

        // Crear una nueva instancia de Empleado
        Empleado empleado = new Empleado(new EmpleadoPK(nif, laboratorio, departamento), nombre, apellido, telefono, email, clave);

        // Agregar el empleado
        empleadoNegocioInterfaz.registrarEmpleado(empleado);

        // Redirigir a la página de confirmación o a la página principal del sitio web
        this.ListarEmpleados(request, response);
    }

    protected void ListarEmpleados(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recuperar los parámetros de la solicitud
        List<Empleado> empleados = empleadoNegocioInterfaz.listarEmpleados();
        System.out.println("empleados: " + empleados);
        request.setAttribute("empleados", empleados);
        request.getRequestDispatcher("listadoEmpleados.jsp").forward(request,
                response);
    }

    

    /* protected void EliminarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nif = request.getParameter("Nif");
        Cliente cliente = new Cliente(nif);
        clienteNegocioInterfaz.eliminarCliente(cliente);
        // 4. Redirigimos al flujo de default
        this.accionDefault(request, response);
    }

    private void editarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Recuperamos los parámetros
        int Nif = Integer.parseInt(request.getParameter("Nif"));

        // 2. Ahora invocamos el método buscar cliente de acceso a datos
        Cliente cliente = new Cliente();

        // 3. Ahora compartimos el cliente en el alcance de request
        request.setAttribute("cliente", cliente);

        String jspeditar = "/editarCliente.jsp";

        // 4. Redirigimos y propagamos
        request.getRequestDispatcher(jspeditar).forward(request, response);

    }*/
}
