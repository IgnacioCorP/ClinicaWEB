/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Dominio.Departamento;
import Dominio.Laboratorio;
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
public class LaboratorioDao implements LaboratorioInterfaz{
     // El EJB se encarga de forma automática de hacer las transacciones.
    
    // Ahora inyectamos la unidad de persistencia a través del API de JPA
    // Simplemente tenemos que usar la anotación e indicar el nombre de nuestra
    // unidad de persistencia
    @PersistenceContext(unitName="ClinicaWebPU")
    EntityManager em;
    
    // Con este objeto de em ya podemos interactuar con nuestra BD
    

    @Override
    public List<Laboratorio> findAllLaboratorios() {
        // Creamos un NamedQuery, y el listado lo leemos con getResultList
        // Por lo que estamos escribiendo menos código
        return em.createNamedQuery("Laboratorio.findAll").getResultList();
    }

    @Override
    public Laboratorio findLaboratorioByID(Laboratorio laboratorio) {
        // Especificamos la clase que queremos buscar y luego el campo por el 
        // que queremos buscar
        return em.find(Laboratorio.class, laboratorio.getIDlab());
    }

    @Override
    public Laboratorio findLaboratorioByNombre(Laboratorio laboratorio) {
        // En este caso no vamos a usar un NamedQuery, que podríamos haber 
        // agregado en la Entidad de Persona sino que vamos a incluirlo directamente.
        Query query = em.createQuery("from Laboratorio l where l.Nombresede = :Nombre_sede");
        query.setParameter("Nombre_sede", laboratorio.getNombresede());
        // Y ahroa sólo esperamos un resultado, porque el email debe de ser único
        // sino lo hemos definido así lo modificamos en nuestra tabla como unique
        return (Laboratorio) query.getSingleResult();
    }

    @Override
    public void insertLaboratorio(Laboratorio laboratorio) {
        em.persist(laboratorio);
    }

    @Override
    public void updateLaboratorio(Laboratorio laboratorio){
        // Sincroniza cualquier modificamos que hayamos hecho de la persona en la BD
        em.merge(laboratorio);
    }
    
    @Override
    public void deleteLaboratorio(Laboratorio laboratorio) {
        // 1. actualizamos el estado del objeto en la base de datos => se borra.
        em.remove(em.merge(laboratorio));
    }
    
     @Override
    public List<Laboratorio> buscadorLaboratorio(String bus) {
        Query query = em.createNamedQuery("Laboratorio.buscador");
        query.setParameter("iDlab", bus);
        query.setParameter("nombresede", bus);
        query.setParameter("direccion", bus);
        query.setParameter("telefono", bus);
        return query.getResultList();
    }
}
