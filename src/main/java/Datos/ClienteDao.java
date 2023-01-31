/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Dominio.Cliente;
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
public class ClienteDao implements ClienteInterfaz{
     // El EJB se encarga de forma automática de hacer las transacciones.
    
    // Ahora inyectamos la unidad de persistencia a través del API de JPA
    // Simplemente tenemos que usar la anotación e indicar el nombre de nuestra
    // unidad de persistencia
    @PersistenceContext(unitName="ClinicaWebPU")
    EntityManager em;
    
    // Con este objeto de em ya podemos interactuar con nuestra BD
    

    @Override
    public List<Cliente> findAllClientes() {
        // Creamos un NamedQuery, y el listado lo leemos con getResultList
        // Por lo que estamos escribiendo menos código
        return em.createNamedQuery("Cliente.findAll").getResultList();
    }

    @Override
    public Cliente findClienteByID(Cliente cliente) {
        // Especificamos la clase que queremos buscar y luego el campo por el 
        // que queremos buscar
        return em.find(Cliente.class, cliente.getNif());
    }

    @Override
    public Cliente findClienteByEmail(Cliente cliente) {
        // En este caso no vamos a usar un NamedQuery, que podríamos haber 
        // agregado en la Entidad de Persona sino que vamos a incluirlo directamente.
        Query query = em.createQuery("from Cliente p where p.Email = :Email");
        query.setParameter("Email", cliente.getEmail());
        // Y ahroa sólo esperamos un resultado, porque el email debe de ser único
        // sino lo hemos definido así lo modificamos en nuestra tabla como unique
        return (Cliente) query.getSingleResult();
    }
    
    @Override
    public List<Cliente> findClienteByNombre(Cliente cliente) {
        // En este caso no vamos a usar un NamedQuery, que podríamos haber 
        // agregado en la Entidad de Persona sino que vamos a incluirlo directamente.
        Query query = em.createQuery("Cliente.findByNombre");
        query.setParameter("Nombre", cliente.getNombre());
        // Y ahroa sólo esperamos un resultado, porque el email debe de ser único
        // sino lo hemos definido así lo modificamos en nuestra tabla como unique
        return query.getResultList();
    }
    
    @Override
    public List<Cliente> findClienteByApellido(Cliente cliente) {
        // En este caso no vamos a usar un NamedQuery, que podríamos haber 
        // agregado en la Entidad de Persona sino que vamos a incluirlo directamente.
        Query query = em.createQuery("Cliente.findByApellido");
        query.setParameter("Apellido", cliente.getApellido());
        // Y ahroa sólo esperamos un resultado, porque el email debe de ser único
        // sino lo hemos definido así lo modificamos en nuestra tabla como unique
        return query.getResultList();
    }
    
  

    @Override
    public void insertCliente(Cliente cliente) {
        em.persist(cliente);
    }

    @Override
    public void updateCliente(Cliente cliente){
        // Sincroniza cualquier modificamos que hayamos hecho de la persona en la BD
        em.merge(cliente);
    }
    
    @Override
    public void deleteCliente(Cliente cliente) {
        // 1. actualizamos el estado del objeto en la base de datos => se borra.
        em.remove(em.merge(cliente));
    }
}
