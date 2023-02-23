/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Web;

import Datos.ProductoDao;
import Dominio.Producto;
import Negocio.ProductoNegocioInterfaz;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Base64;
import java.util.List;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.io.IOUtils;
import java.io.IOException;
import java.io.InputStream;

/**
 *
 * @author Alumno Mañana
 */
@WebServlet(name = "ProductosServlet", urlPatterns = {"/Productos"})
public class ProductosServlet extends HttpServlet {

    // Ahora hacemos la inyección del componente EJB local al servlet
    @Inject

    ProductoNegocioInterfaz productoNegocioInterfaz; // Cremos una instancia de nuestra if local

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.insertarProducto(request, response);
                    break;
                case "editar":
                    // this.editarCliente(request, response);
                    break;
                case "eliminar":
                    //this.EliminarCliente(request, response);
                    break;
                case "listarProductos":
                    this.ListarProductos(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null) {
            switch (accion) {
                case "insertar":
                    this.insertarProducto(request, response);

                    break;
                case "editar":
                    // this.editarCliente(request, response);
                    break;
                case "eliminar":
                    //this.EliminarCliente(request, response);
                    break;
                case "listarProductos":
                    this.ListarProductos(request, response);

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
        request.getRequestDispatcher("/index.jsp").forward(request,
                response);
    }

    private void insertarProducto(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("Nombre");
        double precio = Double.parseDouble(request.getParameter("Precio"));
        Part imagenPart = request.getPart("imagen");

        // Convertir la imagen a un array de bytes
        InputStream inputStream = imagenPart.getInputStream();
        byte[] imagenBytes = IOUtils.toByteArray(inputStream);

        // Crear el objeto Producto con los datos obtenidos
        Producto producto = new Producto(nombre, precio, imagenBytes);

        // Llamar al método insertarProducto del componente EJB
        productoNegocioInterfaz.registrarProducto(producto);
        // Redirigir al usuario a la página de lista de productos
        request.getRequestDispatcher("productosempleado.jsp").forward(request, response);
    }

    private void ListarProductos(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Producto> productos = productoNegocioInterfaz.listarProductos();
        System.out.println("productos: " + productos);
        request.setAttribute("productos", productos);
        request.getRequestDispatcher("productosempleado.jsp").forward(request, response);
    }

}
