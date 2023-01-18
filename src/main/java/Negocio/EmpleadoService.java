/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Datos.EmpleadoInterfaz;
import Dominio.Empleado;
import Dominio.EmpleadoPK;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;

/**
 *
 * @author Alumno Mañana
 */
@Stateless
public class EmpleadoService implements EmpleadoNegocioInterfaz {

    @Inject
    private EmpleadoInterfaz empleadoInterfaz;

    // Ahora nos apoyamos de la interfaz para completar los servicios
    @Override
    public List<Empleado> listarEmpleados() {
        return empleadoInterfaz.findAllEmpleados();
    }

    @Override
    public Empleado encontrarEmpleadoPorID(Empleado empleado) {
        return empleadoInterfaz.findEmpleadoByID(empleado);
    }

    @Override
    public Empleado econtrarEmpleadoPorEmail(Empleado empleado) {
        return empleadoInterfaz.findEmpleadoByEmail(empleado);
    }

    @Override
    public void registrarEmpleado(Empleado empleado) {
        empleadoInterfaz.insertEmpleado(empleado);
    }

    @Override
    public void modificarEmpleado(Empleado empleado) {
        empleadoInterfaz.updateEmpleado(empleado);
    }

    @Override
    public void eliminarEmpleado(Empleado empleado) {
        empleadoInterfaz.deleteEmpleado(empleado);
    }
}
