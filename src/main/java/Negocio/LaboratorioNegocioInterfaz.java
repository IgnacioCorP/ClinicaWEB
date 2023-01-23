/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Dominio.Laboratorio;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Alumno Mañana
 */
@Local
public interface LaboratorioNegocioInterfaz {

    public List<Laboratorio> listarLaboratorios();

    public Laboratorio encontrarLaboratorioPorID(Laboratorio laboratorio);

    public Laboratorio econtrarLaboratorioPorNombre(Laboratorio laboratorio);

    public void registrarLaboratorio(Laboratorio laboratorio);

    public void modificarLaboratorio(Laboratorio laboratorio);

    public void eliminarLaboratorio(Laboratorio laboratorio);
}
