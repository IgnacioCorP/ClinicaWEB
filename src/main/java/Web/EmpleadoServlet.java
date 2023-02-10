/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Dominio.Empleado;
import Dominio.EmpleadoPK;
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //1. Leer los parametros de nuestro request
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "editar":
                   // this.editarCliente(request, response);
                    break;
                case "eliminar":
                    //this.eliminarCliente(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws IOException, ServletException {
        
        // 1. Leemos los parametros de nuestro request
        String accion = request.getParameter("accion");
        if (accion != null){
            switch (accion){
                case "insertar":
                    this.insertarEmpleado(request, response);
                    break;
                case "modificar":
                    //this.modificarCliente(request, response);
                    break;
                default: 
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }
    
    private void accionDefault(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Obtenemos el listado de los cliente
        List<Empleado> empleados = empleadoNegocioInterfaz.listarEmpleados();
        request.getRequestDispatcher("/empleado.jsp").forward(request,
                response);

        // 2. Definimos un objeto session para compartir nuestro atributos en un contexto más amplio
        HttpSession sesion = request.getSession();

        // 3. Compartir en el nuevo alcance los atributos
        sesion.setAttribute("empleados", empleados);
        sesion.setAttribute("totalEmpleados", empleados.size());
        //sesion.setAttribute("saldoTotal", calcularTotal(clientes));
    }
    
    // Método que inserta un nueva cliente
    private void insertarEmpleado(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //1. Recuperamos los parámetros del request
        String nombre = request.getParameter("Nombre");
        String email = request.getParameter("Email");
        String clave = request.getParameter("Email");

        EmpleadoPK empleadoPK = new EmpleadoPK();
        //2. Creamos nuestro objeto Cliente
        Empleado empleado = new Empleado(empleadoPK,nombre, email,clave);
        //3. Invocamos al método de acceso a datos que inserta un cliente
        //4. Redirigimos a la acción por defecto
        this.accionDefault(request, response);
    }

    /*
    private void editarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Recuperamos los parámetros
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        
        // 2. Ahora invocamos el método buscar cliente de acceso a datos
        Cliente cliente = new ClientesDaoJDBC().buscar(new Cliente(idCliente));
        
        // 3. Ahora compartimos el cliente en el alcance de request
        request.setAttribute("cliente", cliente);
        
        String jspeditar = "/WEB-INF/paginas/cliente/editarCliente.jsp";
        
        // 4. Redirigimos y propagamos
        request.getRequestDispatcher(jspeditar).forward(request, response);
        
    }
    
    private void modificarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Recuperamos los parámetros pasamos por el formulario
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        
        double saldo = 0;
        String saldoString = request.getParameter("saldo");
        if (saldoString != null && !"".equals(saldoString)){
            saldo = Double.parseDouble(saldoString);
        }
        
        // 2. Creamos el objeto del cliente que queremos actualizar
        Cliente cliente = new Cliente(idCliente, nombre, apellidos, email,telefono, saldo);
        
        // 3. Invocamos el método de acceso a datos para actualizar el cliente
        int registrosModificados = new ClientesDaoJDBC().actualizar(cliente);
        System.out.println("Registros modificados = " + registrosModificados);
        
        // 4. Redirigimos a la acción default
        this.accionDefault(request, response);
        
    }
    
    private void eliminarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Obtenemos los parámetros
        int idCliente = Integer.parseInt(request.getParameter("idCliente"));
        
        // 2. Crear el objeto del Cliente
        Cliente cliente = new Cliente(idCliente);
        
        // 3. Invocamos al método de acceso que elimina el cliente
        int registrosModificados = new ClientesDaoJDBC().eliminar(cliente);
        System.out.println("Número de clientes elminados: " + registrosModificados);
        
        // 4. Redirigimos al flujo de default
        this.accionDefault(request, response);
        
        
        
        
    }*/

}
