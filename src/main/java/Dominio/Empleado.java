/////*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// *

package Dominio;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Alumno Mañana
 */
@Entity
@Table(name = "empleado")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Empleado.findAll", query = "SELECT e FROM Empleado e"),
    @NamedQuery(name = "Empleado.findByNif", query = "SELECT e FROM Empleado e WHERE e.empleadoPK.nif = :nif"),
    @NamedQuery(name = "Empleado.findByNombre", query = "SELECT e FROM Empleado e WHERE e.nombre = :nombre"),
    @NamedQuery(name = "Empleado.findByApellido", query = "SELECT e FROM Empleado e WHERE e.apellido = :apellido"),
    @NamedQuery(name = "Empleado.findByTelefono", query = "SELECT e FROM Empleado e WHERE e.telefono = :telefono"),
    @NamedQuery(name = "Empleado.findByDireccion", query = "SELECT e FROM Empleado e WHERE e.direccion = :direccion"),
    @NamedQuery(name = "Empleado.findByEmail", query = "SELECT e FROM Empleado e WHERE e.email = :email"),
    @NamedQuery(name = "Empleado.findByFechaNac", query = "SELECT e FROM Empleado e WHERE e.fechaNac = :fechaNac"),
    @NamedQuery(name = "Empleado.findByLaboratorioIDlab", query = "SELECT e FROM Empleado e WHERE e.empleadoPK.laboratorioIDlab = :laboratorioIDlab"),
    @NamedQuery(name = "Empleado.findByEmpleadoNif", query = "SELECT e FROM Empleado e WHERE e.empleadoPK.empleadoNif = :empleadoNif"),
    @NamedQuery(name = "Empleado.findByDepartamentoIDdep", query = "SELECT e FROM Empleado e WHERE e.empleadoPK.departamentoIDdep = :departamentoIDdep"),
    @NamedQuery(name = "Empleado.findByImgE", query = "SELECT e FROM Empleado e WHERE e.imgE = :imgE")})
public class Empleado implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected EmpleadoPK empleadoPK;
    @Size(max = 45)
    @Column(name = "Nombre")
    private String nombre;
    @Size(max = 45)
    @Column(name = "Apellido")
    private String apellido;
    @Size(max = 9)
    @Column(name = "Telefono")
    private String telefono;
    @Size(max = 70)
    @Column(name = "Direccion")
    private String direccion;
    //@Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 70)
    @Column(name = "Email")
    private String email;
    @Column(name = "Fecha_Nac")
    @Temporal(TemporalType.DATE)
    private Date fechaNac;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "Clave")
    private byte[] clave;
    @Basic(optional = false)
    @NotNull
    @Column(name = "imgE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date imgE;
    @JoinColumn(name = "departamento_ID_dep", referencedColumnName = "ID_dep", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Departamento departamento;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "empleado")
    private List<Empleado> empleadoList;
    @JoinColumn(name = "empleado_Nif", referencedColumnName = "Nif", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Empleado empleado;
    @JoinColumn(name = "laboratorio_ID_lab", referencedColumnName = "ID_lab", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Laboratorio laboratorio;

    public Empleado() {
    }

    public Empleado(EmpleadoPK empleadoPK) {
        this.empleadoPK = empleadoPK;
    }

    public Empleado(EmpleadoPK empleadoPK, String email, byte[] clave, Date imgE) {
        this.empleadoPK = empleadoPK;
        this.email = email;
        this.clave = clave;
        this.imgE = imgE;
    }

    public Empleado(String nif, int laboratorioIDlab, String empleadoNif, int departamentoIDdep) {
        this.empleadoPK = new EmpleadoPK(nif, laboratorioIDlab, empleadoNif, departamentoIDdep);
    }

    public EmpleadoPK getEmpleadoPK() {
        return empleadoPK;
    }

    public void setEmpleadoPK(EmpleadoPK empleadoPK) {
        this.empleadoPK = empleadoPK;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(Date fechaNac) {
        this.fechaNac = fechaNac;
    }

    public byte[] getClave() {
        return clave;
    }

    public void setClave(byte[] clave) {
        this.clave = clave;
    }

    public Date getImgE() {
        return imgE;
    }

    public void setImgE(Date imgE) {
        this.imgE = imgE;
    }

    public Departamento getDepartamento() {
        return departamento;
    }

    public void setDepartamento(Departamento departamento) {
        this.departamento = departamento;
    }

    @XmlTransient
    public List<Empleado> getEmpleadoList() {
        return empleadoList;
    }

    public void setEmpleadoList(List<Empleado> empleadoList) {
        this.empleadoList = empleadoList;
    }

    public Empleado getEmpleado() {
        return empleado;
    }

    public void setEmpleado(Empleado empleado) {
        this.empleado = empleado;
    }

    public Laboratorio getLaboratorio() {
        return laboratorio;
    }

    public void setLaboratorio(Laboratorio laboratorio) {
        this.laboratorio = laboratorio;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (empleadoPK != null ? empleadoPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Empleado)) {
            return false;
        }
        Empleado other = (Empleado) object;
        if ((this.empleadoPK == null && other.empleadoPK != null) || (this.empleadoPK != null && !this.empleadoPK.equals(other.empleadoPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Dominio.Empleado[ empleadoPK=" + empleadoPK + " ]";
    }
    
}
