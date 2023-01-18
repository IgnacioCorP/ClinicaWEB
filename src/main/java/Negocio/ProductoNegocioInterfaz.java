/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Dominio.Producto;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Alumno Mañana
 */
@Local
interface ProductoNegocioInterfaz {

    public List<Producto> listarProductos();

    public Producto encontrarProductoPorID(Producto producto);

    public Producto econtrarProductoPorNombre(Producto producto);

    public void registrarProducto(Producto producto);

    public void modificarProducto(Producto producto);

    public void eliminarProducto(Producto producto);
}
