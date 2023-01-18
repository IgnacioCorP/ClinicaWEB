/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Dominio.Producto;
import java.util.List;

/**
 *
 * @author Alumno Mañana
 */
public interface ProductoInterfaz {
    public List<Producto> findAllProductos();
    public Producto findProductoByID(Producto producto);
    public Producto findProductoByNombre(Producto producto);
    public void insertProducto(Producto producto);
    public void updateProducto(Producto producto);
    public void deleteProducto(Producto producto);
}
