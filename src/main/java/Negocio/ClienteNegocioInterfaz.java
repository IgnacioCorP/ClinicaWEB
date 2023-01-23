/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Dominio.Cliente;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author Alumno Mañana
 */
@Local
public interface ClienteNegocioInterfaz {

    public List<Cliente> listarClientes();

    public Cliente encontrarClientePorID(Cliente cliente);

    public List<Cliente> listarClientesPorNombre(Cliente cliente);

    public List<Cliente> listarClientesPorApellido(Cliente cliente);

    public Cliente econtrarClientePorEmail(Cliente cliente);

    public void registrarCliente(Cliente cliente);

    public void modificarCliente(Cliente cliente);

    public void eliminarCliente(Cliente cliente);
}
