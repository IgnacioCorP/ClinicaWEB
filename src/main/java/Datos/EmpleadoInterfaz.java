/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Dominio.Empleado;
import Dominio.EmpleadoPK;
import java.util.List;

/**
 *
 * @author Alumno Mañana
 */
public interface EmpleadoInterfaz {
    public List<Empleado> findAllEmpleados();
    public Empleado findEmpleadoByID(Empleado empleado);
    public Empleado findEmpleadoByEmail(Empleado empleado);
    public void insertEmpleado(Empleado empleado);
    public void updateEmpleado(Empleado empleado);
    public void deleteEmpleado(Empleado empleado);
    
}
