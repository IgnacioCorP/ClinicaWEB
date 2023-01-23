/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dominio;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Alumno Mañana
 */
@Entity
@Table(name = "laboratorio")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Laboratorio.findAll", query = "SELECT l FROM Laboratorio l"),
    @NamedQuery(name = "Laboratorio.findByIDlab", query = "SELECT l FROM Laboratorio l WHERE l.iDlab = :iDlab"),
    @NamedQuery(name = "Laboratorio.findByNombresede", query = "SELECT l FROM Laboratorio l WHERE l.nombresede = :nombresede"),
    @NamedQuery(name = "Laboratorio.findByDireccion", query = "SELECT l FROM Laboratorio l WHERE l.direccion = :direccion"),
    @NamedQuery(name = "Laboratorio.findByTelefono", query = "SELECT l FROM Laboratorio l WHERE l.telefono = :telefono")})
public class Laboratorio implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID_lab")
    private Integer iDlab;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 90)
    @Column(name = "Nombre_sede")
    private String nombresede;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 90)
    @Column(name = "Direccion")
    private String direccion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 9)
    @Column(name = "Telefono")
    private String telefono;
    @JoinTable(name = "laboratorio_has_producto", joinColumns = {
        @JoinColumn(name = "laboratorio_ID_lab", referencedColumnName = "ID_lab")}, inverseJoinColumns = {
        @JoinColumn(name = "producto_ID_pro", referencedColumnName = "ID_pro")})
    @ManyToMany
    private List<Producto> productoList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "laboratorio")
    private List<Empleado> empleadoList;

    public Laboratorio() {
    }

    public Laboratorio(Integer iDlab) {
        this.iDlab = iDlab;
    }

    public Laboratorio(Integer iDlab, String nombresede, String direccion, String telefono) {
        this.iDlab = iDlab;
        this.nombresede = nombresede;
        this.direccion = direccion;
        this.telefono = telefono;
    }

    public Integer getIDlab() {
        return iDlab;
    }

    public void setIDlab(Integer iDlab) {
        this.iDlab = iDlab;
    }

    public String getNombresede() {
        return nombresede;
    }

    public void setNombresede(String nombresede) {
        this.nombresede = nombresede;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    @XmlTransient
    public List<Producto> getProductoList() {
        return productoList;
    }

    public void setProductoList(List<Producto> productoList) {
        this.productoList = productoList;
    }

    @XmlTransient
    public List<Empleado> getEmpleadoList() {
        return empleadoList;
    }

    public void setEmpleadoList(List<Empleado> empleadoList) {
        this.empleadoList = empleadoList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (iDlab != null ? iDlab.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Laboratorio)) {
            return false;
        }
        Laboratorio other = (Laboratorio) object;
        if ((this.iDlab == null && other.iDlab != null) || (this.iDlab != null && !this.iDlab.equals(other.iDlab))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Dominio.Laboratorio[ iDlab=" + iDlab + " ]";
    }
    
}
