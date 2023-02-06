/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Dominio.Cliente;
import Dominio.Producto;
import Negocio.ProductoNegocioInterfaz;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "ProductosServlet", urlPatterns = {"/Productos"})
public class ProductosServlet extends HttpServlet {

   
    // Ahora hacemos la inyección del componente EJB local al servlet
    @Inject
    // Ahora definimos nuestra variable
    ProductoNegocioInterfaz productoNegocioInterfaz; // Cremos una instancia de nuestra if local

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse respose)
            throws ServletException, IOException {

    
        List<Producto> productos;
        productos = productoNegocioInterfaz.listarProductos();
        System.out.println("productos: " + productos);
        // Ponemos usuarios en un alcance
        request.setAttribute("productos", productos);

        // Redirigimos al JSP
        request.getRequestDispatcher("/ListaProductos.jsp").forward(request,
                respose);
    }

   
}
