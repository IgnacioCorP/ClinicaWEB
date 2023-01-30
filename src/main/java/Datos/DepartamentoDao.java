/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Dominio.Departamento;
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
public class DepartamentoDao implements DepartamentoInterfaz{
    // El EJB se encarga de forma automática de hacer las transacciones.
    // Ahora inyectamos la unidad de persistencia a través del API de JPA
    // Simplemente tenemos que usar la anotación e indicar el nombre de nuestra
    // unidad de persistencia
    @PersistenceContext(unitName="ClinicaWeb")
    EntityManager em;
    
    // Con este objeto de em ya podemos interactuar con nuestra BD
    

    @Override
    public List<Departamento> findAllDepartamentos() {
        // Creamos un NamedQuery, y el listado lo leemos con getResultList
        // Por lo que estamos escribiendo menos código
        return em.createNamedQuery("Departamento.findAll").getResultList();
    }

    @Override
    public Departamento findDepartamentoByID(Departamento departamento) {
        // Especificamos la clase que queremos buscar y luego el campo por el 
        // que queremos buscar
        return em.find(Departamento.class, departamento.getIDdep());
    }

    @Override
    public Departamento findDepartamentoByNombre(Departamento departamento) {
        // En este caso no vamos a usar un NamedQuery, que podríamos haber 
        // agregado en la Entidad de Persona sino que vamos a incluirlo directamente.
        Query query = em.createQuery("from Departamento d where d.Nombre = :Nombre");
        query.setParameter("Nombre", departamento.getNombre());
        // Y ahroa sólo esperamos un resultado, porque el email debe de ser único
        // sino lo hemos definido así lo modificamos en nuestra tabla como unique
        return (Departamento) query.getSingleResult();
    }

    @Override
    public void insertDepartamento(Departamento departamento) {
        em.persist(departamento);
    }

    @Override
    public void updateDepartamento(Departamento departamento){
        // Sincroniza cualquier modificamos que hayamos hecho de la persona en la BD
        em.merge(departamento);
    }
    
    @Override
    public void deleteDepartamento(Departamento departamento) {
        // 1. actualizamos el estado del objeto en la base de datos => se borra.
        em.remove(em.merge(departamento));
    }
}
