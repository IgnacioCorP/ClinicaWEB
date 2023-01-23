/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Dominio.Empleado;
import Dominio.EmpleadoPK;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Alumno Mañana
 */
@Local
public interface EmpleadoNegocioInterfaz {

    public List<Empleado> listarEmpleados();

    public Empleado encontrarEmpleadoPorID(Empleado empleado);

    public Empleado econtrarEmpleadoPorEmail(Empleado empleado);

    public void registrarEmpleado(Empleado empleado);

    public void modificarEmpleado(Empleado empleado);

    public void eliminarEmpleado(Empleado empleado);
    
}
