
import Datos.ClienteDao;
import Dominio.Cliente;
import Negocio.ClienteNegocioInterfaz;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/RegistrarClienteServlet")
public class RegistrarClienteServlet extends HttpServlet {
    // Ahora hacemos la inyección del componente EJB local al servlet

    @Inject
    // Ahora definimos nuestra variable
    ClienteNegocioInterfaz clienteNegocioInterfaz; // Cremos una instancia de nuestra if local

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.InsertarCliente(request, response);
                    break;
                case "editar":
                    //this.eliminarCliente(request, response);
                    break;
                case "eliminar":
                    this.EliminarCliente(request, response);
                    break;
                case "listarClientes":
                    List<Cliente> clientes = clienteNegocioInterfaz.listarClientes();
                    System.out.println("clientes: " + clientes);
                    // Ponemos usuarios en un alcance
                    request.setAttribute("clientes", clientes);

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
                    this.InsertarCliente(request, response);
                    break;
                case "editar":
                    //this.eliminarCliente(request, response);
                    break;
                case "eliminar":
                    this.EliminarCliente(request, response);
                    break;
                case "listarClientes":
                    List<Cliente> clientes = clienteNegocioInterfaz.listarClientes();
                    System.out.println("clientes: " + clientes);
                    // Ponemos usuarios en un alcance
                    request.setAttribute("clientes", clientes);

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

    private void accionDefault(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Obtenemos el listado de los cliente
        List<Cliente> clientes = clienteNegocioInterfaz.listarClientes();
        System.out.println("clientes: " + clientes);
        // Ponemos usuarios en un alcance
        request.setAttribute("clientes", clientes);

        request.getRequestDispatcher("/empleado.jsp").forward(request,
                response);

        // 2. Definimos un objeto session para compartir nuestro atributos en un contexto más amplio
        HttpSession sesion = request.getSession();

        // 3. Compartir en el nuevo alcance los atributos
        sesion.setAttribute("clientes", clientes);
        sesion.setAttribute("totalClientes", clientes.size());
        //sesion.setAttribute("saldoTotal", calcularTotal(clientes));
    }

    protected void InsertarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nif = request.getParameter("Nif");
        String nombre = request.getParameter("Nombre");
        String apellido = request.getParameter("Apellido");
        String email = request.getParameter("Email");
        String clave = request.getParameter("Clave");

        Cliente cliente = new Cliente(nif, nombre, apellido, email, clave);
        clienteNegocioInterfaz.registrarCliente(cliente);
        System.out.println("registrosModificados = " + cliente);
        //4. Redirigimos a la acción por defecto
        this.accionDefault(request, response);
    }

    protected void EliminarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nif = request.getParameter("Nif");
        Cliente cliente = new Cliente(nif);
        clienteNegocioInterfaz.eliminarCliente(cliente);
        // 4. Redirigimos al flujo de default
        this.accionDefault(request, response);
    }

}
