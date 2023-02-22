/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web.Eliminar;

import Dominio.Cliente;
import Negocio.ClienteNegocioInterfaz;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "EliminarCli", urlPatterns = {"/EliminarCli"})
public class EliminarCli extends HttpServlet {
    
    @Inject
    // Ahora definimos nuestra variable
    ClienteNegocioInterfaz clienteNegocioInterfaz;
    
    @Override
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
        
        String nif = request.getParameter("eliminar");
        Cliente cliente = new Cliente(nif);
        cliente = clienteNegocioInterfaz.encontrarClientePorID(cliente);
        clienteNegocioInterfaz.eliminarCliente(cliente);
        request.getRequestDispatcher("/Empleado?accion=listarClientes").forward(request,
                response);
        
    }
    
}
