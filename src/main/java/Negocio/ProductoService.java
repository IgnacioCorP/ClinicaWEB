/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Datos.ProductoInterfaz;
import Dominio.Producto;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;

/**
 *
 * @author Alumno Mañana
 */
@Stateless
public class ProductoService implements ProductoNegocioInterfaz {

    @Inject
    private ProductoInterfaz productoInterfaz;

    // Ahora nos apoyamos de la interfaz para completar los servicios
    @Override
    public List<Producto> listarProductos() {
        return productoInterfaz.findAllProductos();
    }

    @Override
    public Producto encontrarProductoPorID(Producto producto) {
        return productoInterfaz.findProductoByID(producto);
    }

    @Override
    public Producto econtrarProductoPorNombre(Producto producto) {
        return productoInterfaz.findProductoByNombre(producto);
    }

    @Override
    public void registrarProducto(Producto producto) {
        productoInterfaz.insertProducto(producto);
    }

    @Override
    public void modificarProducto(Producto producto) {
        productoInterfaz.updateProducto(producto);
    }

    @Override
    public void eliminarProducto(Producto producto) {
        productoInterfaz.deleteProducto(producto);
    }

    @Override
    public List<Producto> buscadorProducto(String bus) {
        return productoInterfaz.buscadorProducto(bus);
    }
    
    @Override
    public List<Producto> FiltroAZ(String bus) {
        return productoInterfaz.FiltroAZ(bus);
    }
}
