/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Dominio.Cliente;
import java.util.List;

/**
 *
 * @author Alumno Mañana
 */
public interface ClienteInterfaz {
    public List<Cliente> findAllClientes();
    public Cliente findClienteByID(Cliente cliente);
    public Cliente findClienteByEmail(Cliente cliente);
    public void insertCliente(Cliente cliente);
    public void updateCliente(Cliente cliente);
    public void deleteCliente(Cliente cliente);
}
