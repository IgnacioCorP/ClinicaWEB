/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Datos.LaboratorioInterfaz;
import Dominio.Laboratorio;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;

/**
 *
 * @author Alumno Mañana
 */
@Stateless
public class LaboratorioService implements LaboratorioNegocioInterfaz {
    @Inject    
    private LaboratorioInterfaz laboratorioInterfaz;
   
    // Ahora nos apoyamos de la interfaz para completar los servicios
    @Override
    public List<Laboratorio> listarLaboratorios() {       
        return laboratorioInterfaz.findAllLaboratorios();
    }

    @Override
    public Laboratorio encontrarLaboratorioPorID(Laboratorio laboratorio) {
         return laboratorioInterfaz.findLaboratorioByID(laboratorio);
    }

    @Override
    public Laboratorio econtrarLaboratorioPorNombre(Laboratorio laboratorio) {
        return laboratorioInterfaz.findLaboratorioByNombre(laboratorio);
    }

    @Override
    public void registrarLaboratorio(Laboratorio laboratorio) {
        laboratorioInterfaz.insertLaboratorio(laboratorio);
    }

    @Override
    public void modificarLaboratorio(Laboratorio laboratorio) {
        laboratorioInterfaz.updateLaboratorio(laboratorio);
    }

    @Override
    public void eliminarLaboratorio(Laboratorio laboratorio) {
        laboratorioInterfaz.deleteLaboratorio(laboratorio);
    }
}
