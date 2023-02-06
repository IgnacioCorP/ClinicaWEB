
import Dominio.Cliente;
import Negocio.ClienteNegocioInterfaz;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrarClienteServlet")
public class RegistrarClienteServlet extends HttpServlet {
    // Ahora hacemos la inyección del componente EJB local al servlet

    @Inject
    // Ahora definimos nuestra variable
    ClienteNegocioInterfaz clienteNegocioInterfaz; // Cremos una instancia de nuestra if local

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MMM-yyyy", Locale.ENGLISH);
        String nif = request.getParameter("Nif");
        String nombre = request.getParameter("Nombre");
        String apellido = request.getParameter("Apellido");
        String telefono = request.getParameter("Telefono");
        String email = request.getParameter("Email");
        String clave = request.getParameter("Clave");
        Date fechaNac;
        try {
            fechaNac = formatter.parse(request.getParameter("Fecha_nac"));
            Cliente cliente = new Cliente(nif, nombre, apellido, telefono, email, fechaNac, clave);
            clienteNegocioInterfaz.registrarCliente(cliente);
            response.sendRedirect("index.jsp");
        } catch (ParseException ex) {
            Logger.getLogger(RegistrarClienteServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
