/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dominio;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Alumno Mañana
 */
@Entity
@Table(name = "cliente_has_producto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ClienteHasProducto.findAll", query = "SELECT c FROM ClienteHasProducto c"),
    @NamedQuery(name = "ClienteHasProducto.findByClienteNif", query = "SELECT c FROM ClienteHasProducto c WHERE c.clienteHasProductoPK.clienteNif = :clienteNif"),
    @NamedQuery(name = "ClienteHasProducto.findByProductoIDpro", query = "SELECT c FROM ClienteHasProducto c WHERE c.clienteHasProductoPK.productoIDpro = :productoIDpro"),
    @NamedQuery(name = "ClienteHasProducto.findByFecha", query = "SELECT c FROM ClienteHasProducto c WHERE c.clienteHasProductoPK.fecha = :fecha")})
public class ClienteHasProducto implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ClienteHasProductoPK clienteHasProductoPK;
    @JoinColumn(name = "cliente_Nif", referencedColumnName = "Nif", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Cliente cliente;
    @JoinColumn(name = "producto_ID_pro", referencedColumnName = "ID_pro", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Producto producto;

    public ClienteHasProducto() {
    }

    public ClienteHasProducto(ClienteHasProductoPK clienteHasProductoPK) {
        this.clienteHasProductoPK = clienteHasProductoPK;
    }

    public ClienteHasProducto(String clienteNif, int productoIDpro, Date fecha) {
        this.clienteHasProductoPK = new ClienteHasProductoPK(clienteNif, productoIDpro, fecha);
    }

    public ClienteHasProductoPK getClienteHasProductoPK() {
        return clienteHasProductoPK;
    }

    public void setClienteHasProductoPK(ClienteHasProductoPK clienteHasProductoPK) {
        this.clienteHasProductoPK = clienteHasProductoPK;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (clienteHasProductoPK != null ? clienteHasProductoPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ClienteHasProducto)) {
            return false;
        }
        ClienteHasProducto other = (ClienteHasProducto) object;
        if ((this.clienteHasProductoPK == null && other.clienteHasProductoPK != null) || (this.clienteHasProductoPK != null && !this.clienteHasProductoPK.equals(other.clienteHasProductoPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Dominio.ClienteHasProducto[ clienteHasProductoPK=" + clienteHasProductoPK + " ]";
    }
    
}
