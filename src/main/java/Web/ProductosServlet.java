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
import java.util.List;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.logging.log4j.core.util.IOUtils;

/**
 *
 * @author Alumno Mañana
 */
@WebServlet(name = "ProductosServlet", urlPatterns = {"/ProductosServlet"})
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
                    List<Producto> productos = productoNegocioInterfaz.listarProductos();
                    request.setAttribute("productos", productos);
                    request.getRequestDispatcher("/ListaProductos.jsp").forward(request, response);
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
                    // Obtener los detalles del nuevo producto del formulario
                    String Nombre = request.getParameter("Nombre");
                    double Precio = Double.parseDouble(request.getParameter("Precio"));
                    Part imagenPart = request.getPart("imgP");
                    InputStream imagenStream = imagenPart.getInputStream();
                    ByteArrayOutputStream imagenBytes = new ByteArrayOutputStream();
                    byte[] buffer = new byte[1000000000];
                    int bytesRead;
                    while ((bytesRead = imagenStream.read(buffer)) != -1) {
                        imagenBytes.write(buffer, 0, bytesRead);
                    }
                    byte[] imgP = imagenBytes.toByteArray();

                    // Crear un objeto Producto con los detalles ingresados
                    Producto nuevoProducto = new Producto(Nombre, Precio, imgP);

                    // Insertar el nuevo producto en la base de datos a través del componente de negocio
                    productoNegocioInterfaz.registrarProducto(nuevoProducto);
                    // Redirigir al usuario a la página de lista de productos
                    request.getRequestDispatcher("/index.jsp").forward(request,
                            response);
                    break;
                case "editar":
                    // this.editarCliente(request, response);
                    break;
                case "eliminar":
                    //this.EliminarCliente(request, response);
                    break;
                case "listarProductos":
                    List<Producto> productos = productoNegocioInterfaz.listarProductos();
                    request.setAttribute("productos", productos);
                    request.getRequestDispatcher("/ListaProductos.jsp").forward(request, response);
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
        // Obtener los detalles del nuevo producto del formulario
        String Nombre = request.getParameter("Nombre");
        double Precio = Double.parseDouble(request.getParameter("Precio"));
        Part imagenPart = request.getPart("imgP");
        InputStream imagenStream = imagenPart.getInputStream();
        ByteArrayOutputStream imagenBytes = new ByteArrayOutputStream();
        byte[] buffer = new byte[1000000000];
        int bytesRead;
        while ((bytesRead = imagenStream.read(buffer)) != -1) {
            imagenBytes.write(buffer, 0, bytesRead);
        }
        byte[] imgP = imagenBytes.toByteArray();

        // Crear un objeto Producto con los detalles ingresados
        Producto nuevoProducto = new Producto(Nombre, Precio, imgP);

        // Insertar el nuevo producto en la base de datos a través del componente de negocio
        productoNegocioInterfaz.registrarProducto(nuevoProducto);
        // Redirigir al usuario a la página de lista de productos
        request.getRequestDispatcher("/index.jsp").forward(request,
                response);
    }

}
