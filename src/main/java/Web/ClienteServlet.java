/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Dominio.Cliente;
import Negocio.ClienteNegocioInterfaz;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
public class ClienteServlet extends HttpServlet {

    // Ahora hacemos la inyección del componente EJB local al servlet
    @Inject
    // Ahora definimos nuestra variable
    ClienteNegocioInterfaz clienteNegocioInterfaz; // Cremos una instancia de nuestra if local

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse respose)
            throws ServletException, IOException {

        /**
         * Ahora este método va acceder al listado de usuarios por medio de la
         * instancia que estamos recibiendo el EJB
         */
        List<Cliente> clientes = clienteNegocioInterfaz.listarClientes();
        System.out.println("clientes: " + clientes);
        // Ponemos usuarios en un alcance
        request.setAttribute("clientes", clientes);

        // Redirigimos al JSP
        request.getRequestDispatcher("/listadoClientes.jsp").forward(request,
                respose);
    }

  
}
