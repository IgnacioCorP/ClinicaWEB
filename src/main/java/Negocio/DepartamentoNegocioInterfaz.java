/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Dominio.Departamento;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Alumno Mañana
 */
@Local
interface DepartamentoNegocioInterfaz {

    public List<Departamento> listarDepartamentos();

    public Departamento encontrarDepartamentoPorID(Departamento departamento);

    public Departamento econtrarDepartamentoPorNombre(Departamento departamento);

    public void registrarDepartamento(Departamento departamento);

    public void modificarDepartamento(Departamento departamento);

    public void eliminarDepartamento(Departamento departamento);
}
