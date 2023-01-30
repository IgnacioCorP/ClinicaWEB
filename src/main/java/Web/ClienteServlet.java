/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Dominio.Cliente;
import Negocio.ClienteNegocioInterfaz;
import java.io.IOException;
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
@WebServlet("/clientes")
public class ClienteServlet extends HttpServlet{
     @Inject
    // Ahora definimos nuestra variable
    ClienteNegocioInterfaz clienteInterfaz; // Cremos una instancia de nuestra if local
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse respose)
    throws ServletException, IOException {
        
        /** Ahora este método va acceder al listado de personas por medio
         * de la instancia que estamos recibiendo el EJB         
         */
        List<Cliente> clientes = clienteInterfaz.listarClientes();
        System.out.println("Clientes: " + clientes);
        
        // Ponemos personas en un alcance
        request.setAttribute("Clientes", clientes);
        
        // Redirigimos al JSP
        request.getRequestDispatcher("/listadoClientes.jsp").forward(request, 
                respose);
    }
    
}
