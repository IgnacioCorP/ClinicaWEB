/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dominio;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author Alumno Mañana
 */
@Embeddable
public class CompraPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "producto_ID_pro")
    private int productoIDpro;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 9)
    @Column(name = "cliente_Nif")
    private String clienteNif;

    public CompraPK() {
    }

    public CompraPK(int productoIDpro, String clienteNif) {
        this.productoIDpro = productoIDpro;
        this.clienteNif = clienteNif;
    }

    public int getProductoIDpro() {
        return productoIDpro;
    }

    public void setProductoIDpro(int productoIDpro) {
        this.productoIDpro = productoIDpro;
    }

    public String getClienteNif() {
        return clienteNif;
    }

    public void setClienteNif(String clienteNif) {
        this.clienteNif = clienteNif;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) productoIDpro;
        hash += (clienteNif != null ? clienteNif.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CompraPK)) {
            return false;
        }
        CompraPK other = (CompraPK) object;
        if (this.productoIDpro != other.productoIDpro) {
            return false;
        }
        if ((this.clienteNif == null && other.clienteNif != null) || (this.clienteNif != null && !this.clienteNif.equals(other.clienteNif))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Dominio.CompraPK[ productoIDpro=" + productoIDpro + ", clienteNif=" + clienteNif + " ]";
    }
    
}
