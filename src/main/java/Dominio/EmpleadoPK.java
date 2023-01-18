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
public class EmpleadoPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 9)
    @Column(name = "Nif")
    private String nif;
    @Basic(optional = false)
    @NotNull
    @Column(name = "laboratorio_ID_lab")
    private int laboratorioIDlab;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 9)
    @Column(name = "empleado_Nif")
    private String empleadoNif;
    @Basic(optional = false)
    @NotNull
    @Column(name = "departamento_ID_dep")
    private int departamentoIDdep;

    public EmpleadoPK() {
    }

    public EmpleadoPK(String nif, int laboratorioIDlab, String empleadoNif, int departamentoIDdep) {
        this.nif = nif;
        this.laboratorioIDlab = laboratorioIDlab;
        this.empleadoNif = empleadoNif;
        this.departamentoIDdep = departamentoIDdep;
    }

    public String getNif() {
        return nif;
    }

    public void setNif(String nif) {
        this.nif = nif;
    }

    public int getLaboratorioIDlab() {
        return laboratorioIDlab;
    }

    public void setLaboratorioIDlab(int laboratorioIDlab) {
        this.laboratorioIDlab = laboratorioIDlab;
    }

    public String getEmpleadoNif() {
        return empleadoNif;
    }

    public void setEmpleadoNif(String empleadoNif) {
        this.empleadoNif = empleadoNif;
    }

    public int getDepartamentoIDdep() {
        return departamentoIDdep;
    }

    public void setDepartamentoIDdep(int departamentoIDdep) {
        this.departamentoIDdep = departamentoIDdep;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nif != null ? nif.hashCode() : 0);
        hash += (int) laboratorioIDlab;
        hash += (empleadoNif != null ? empleadoNif.hashCode() : 0);
        hash += (int) departamentoIDdep;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EmpleadoPK)) {
            return false;
        }
        EmpleadoPK other = (EmpleadoPK) object;
        if ((this.nif == null && other.nif != null) || (this.nif != null && !this.nif.equals(other.nif))) {
            return false;
        }
        if (this.laboratorioIDlab != other.laboratorioIDlab) {
            return false;
        }
        if ((this.empleadoNif == null && other.empleadoNif != null) || (this.empleadoNif != null && !this.empleadoNif.equals(other.empleadoNif))) {
            return false;
        }
        if (this.departamentoIDdep != other.departamentoIDdep) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Dominio.EmpleadoPK[ nif=" + nif + ", laboratorioIDlab=" + laboratorioIDlab + ", empleadoNif=" + empleadoNif + ", departamentoIDdep=" + departamentoIDdep + " ]";
    }
    
}
