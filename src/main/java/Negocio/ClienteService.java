/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Negocio;

import Datos.ClienteInterfaz;
import Dominio.Cliente;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;

/**
 *
 * @author Alumno Mañana
 */
@Stateless
public class ClienteService implements ClienteNegocioInterfaz {

    @Inject
    private ClienteInterfaz clienteInterfaz;

    // Ahora nos apoyamos de la interfaz para completar los servicios
    @Override
    public List<Cliente> listarClientes() {
        return clienteInterfaz.findAllClientes();
    }

    @Override
    public Cliente encontrarClientePorID(Cliente cliente) {
        return clienteInterfaz.findClienteByID(cliente);
    }

    @Override
    public Cliente Login(String email, String Clave) {
        return clienteInterfaz.loginCliente(email, Clave);
    }

    @Override
    public List<Cliente> listarClientesPorNombre(Cliente cliente) {
        return clienteInterfaz.findClienteByNombre(cliente);
    }

    @Override
    public List<Cliente> listarClientesPorApellido(Cliente cliente) {
        return clienteInterfaz.findClienteByApellido(cliente);
    }

    @Override
    public Cliente econtrarClientePorEmail(Cliente cliente) {
        return clienteInterfaz.findClienteByEmail(cliente);
    }

    @Override
    public void registrarCliente(Cliente cliente) {
        clienteInterfaz.insertCliente(cliente);
    }

    @Override
    public void modificarCliente(Cliente cliente) {
        clienteInterfaz.updateCliente(cliente);
    }

    @Override
    public void eliminarCliente(Cliente cliente) {
        clienteInterfaz.deleteCliente(cliente);
    }
}
