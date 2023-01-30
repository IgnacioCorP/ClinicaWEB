/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;


import Dominio.Producto;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author Alumno Mañana
 */
@Stateless
public class ProductoDao implements ProductoInterfaz{
      // El EJB se encarga de forma automática de hacer las transacciones.
    
    // Ahora inyectamos la unidad de persistencia a través del API de JPA
    // Simplemente tenemos que usar la anotación e indicar el nombre de nuestra
    // unidad de persistencia
    @PersistenceContext(unitName="ClinicaWeb")
    EntityManager em;
    
    // Con este objeto de em ya podemos interactuar con nuestra BD
    

    @Override
    public List<Producto> findAllProductos() {
        // Creamos un NamedQuery, y el listado lo leemos con getResultList
        // Por lo que estamos escribiendo menos código
        return em.createNamedQuery("Producto.findAll").getResultList();
    }

    @Override
    public Producto findProductoByID(Producto producto) {
        // Especificamos la clase que queremos buscar y luego el campo por el 
        // que queremos buscar
        return em.find(Producto.class, producto.getIDpro());
    }

    @Override
    public Producto findProductoByNombre(Producto producto) {
        // En este caso no vamos a usar un NamedQuery, que podríamos haber 
        // agregado en la Entidad de Persona sino que vamos a incluirlo directamente.
        Query query = em.createQuery("from Producto p where p.Nombre = :Nombre");
        query.setParameter("Nombre", producto.getNombre());
        // Y ahroa sólo esperamos un resultado, porque el email debe de ser único
        // sino lo hemos definido así lo modificamos en nuestra tabla como unique
        return (Producto) query.getSingleResult();
    }

    @Override
    public void insertProducto(Producto producto) {
        em.persist(producto);
    }

    @Override
    public void updateProducto(Producto producto){
        // Sincroniza cualquier modificamos que hayamos hecho de la persona en la BD
        em.merge(producto);
    }
    
    @Override
    public void deleteProducto(Producto producto) {
        // 1. actualizamos el estado del objeto en la base de datos => se borra.
        em.remove(em.merge(producto));
    }
}
