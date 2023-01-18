/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Datos.DepartamentoInterfaz;
import Dominio.Departamento;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;

/**
 *
 * @author Alumno Mañana
 */
@Stateless
public class DepartamentoService implements DepartamentoNegocioInterfaz {
     @Inject    
    private DepartamentoInterfaz departamentoInterfaz;
    
    // Ahora nos apoyamos de la interfaz para completar los servicios
    
    @Override
    public List<Departamento> listarDepartamentos() {       
        return departamentoInterfaz.findAllDepartamentos();
    }

    @Override
    public Departamento encontrarDepartamentoPorID(Departamento departamento) {
         return departamentoInterfaz.findDepartamentoByID(departamento);
    }

    @Override
    public Departamento econtrarDepartamentoPorNombre(Departamento departamento) {
        return departamentoInterfaz.findDepartamentoByNombre(departamento);
    }

    @Override
    public void registrarDepartamento(Departamento departamento) {
        departamentoInterfaz.insertDepartamento(departamento);
    }

    @Override
    public void modificarDepartamento(Departamento departamento) {
        departamentoInterfaz.updateDepartamento(departamento);
    }

    @Override
    public void eliminarDepartamento(Departamento departamento) {
        departamentoInterfaz.deleteDepartamento(departamento);
    }
}
