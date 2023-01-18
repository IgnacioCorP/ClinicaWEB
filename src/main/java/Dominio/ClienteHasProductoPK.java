/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dominio;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Alumno Mañana
 */
@Embeddable
public class ClienteHasProductoPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 9)
    @Column(name = "cliente_Nif")
    private String clienteNif;
    @Basic(optional = false)
    @NotNull
    @Column(name = "producto_ID_pro")
    private int productoIDpro;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;

    public ClienteHasProductoPK() {
    }

    public ClienteHasProductoPK(String clienteNif, int productoIDpro, Date fecha) {
        this.clienteNif = clienteNif;
        this.productoIDpro = productoIDpro;
        this.fecha = fecha;
    }

    public String getClienteNif() {
        return clienteNif;
    }

    public void setClienteNif(String clienteNif) {
        this.clienteNif = clienteNif;
    }

    public int getProductoIDpro() {
        return productoIDpro;
    }

    public void setProductoIDpro(int productoIDpro) {
        this.productoIDpro = productoIDpro;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (clienteNif != null ? clienteNif.hashCode() : 0);
        hash += (int) productoIDpro;
        hash += (fecha != null ? fecha.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ClienteHasProductoPK)) {
            return false;
        }
        ClienteHasProductoPK other = (ClienteHasProductoPK) object;
        if ((this.clienteNif == null && other.clienteNif != null) || (this.clienteNif != null && !this.clienteNif.equals(other.clienteNif))) {
            return false;
        }
        if (this.productoIDpro != other.productoIDpro) {
            return false;
        }
        if ((this.fecha == null && other.fecha != null) || (this.fecha != null && !this.fecha.equals(other.fecha))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Dominio.ClienteHasProductoPK[ clienteNif=" + clienteNif + ", productoIDpro=" + productoIDpro + ", fecha=" + fecha + " ]";
    }
    
}
