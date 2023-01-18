/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Dominio.Laboratorio;
import java.util.List;

/**
 *
 * @author Alumno Mañana
 */
public interface LaboratorioInterfaz {

    public List<Laboratorio> findAllLaboratorios();

    public Laboratorio findLaboratorioByID(Laboratorio laboratorio);

    public Laboratorio findLaboratorioByNombre(Laboratorio laboratorio);

    public void insertLaboratorio(Laboratorio laboratorio);

    public void updateLaboratorio(Laboratorio laboratorio);

    public void deleteLaboratorio(Laboratorio laboratorio);
}
