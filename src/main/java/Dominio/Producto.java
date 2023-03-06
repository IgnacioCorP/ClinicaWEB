/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dominio;

import java.io.Serializable;
import java.util.Base64;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Alumno Mañana
 */
@Entity
@Table(name = "producto")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Producto.buscador", query = "SELECT p FROM Producto p WHERE p.iDpro LIKE CONCAT('%' , :iDpro , '%') OR p.nombre LIKE CONCAT('%' , :nombre , '%') OR  p.precio LIKE CONCAT('%' , :precio , '%')"),
    @NamedQuery(name = "Producto.findAll", query = "SELECT p FROM Producto p"),
    @NamedQuery(name = "Producto.filtroAZ", query = "SELECT p FROM Producto p ORDER BY p.nombre ASC"),
    @NamedQuery(name = "Producto.filtroZA", query = "SELECT p FROM Producto p ORDER BY p.nombre DESC"),
    @NamedQuery(name = "Producto.findByIDpro", query = "SELECT p FROM Producto p WHERE p.iDpro = :iDpro"),
    @NamedQuery(name = "Producto.findByNombre", query = "SELECT p FROM Producto p WHERE p.nombre = :nombre"),
    @NamedQuery(name = "Producto.findByPrecio", query = "SELECT p FROM Producto p WHERE p.precio = :precio"),
    @NamedQuery(name = "Producto.findByFechacaducidad", query = "SELECT p FROM Producto p WHERE p.fechacaducidad = :fechacaducidad")})
public class Producto implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID_pro")
    private Integer iDpro;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Precio")
    private double precio;
    @Column(name = "Fecha_caducidad")
    @Temporal(TemporalType.DATE)
    private Date fechacaducidad;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "imgP")
    private byte[] imgP;

    @Transient
    private String base64;

    public Producto() {
    }

    public Producto(Integer iDpro) {
        this.iDpro = iDpro;
    }

    public Producto(Integer iDpro, String nombre, double precio, byte[] imgP) {
        this.iDpro = iDpro;
        this.nombre = nombre;
        this.precio = precio;
        this.imgP = imgP;
    }

    public Producto(String nombre, double precio, byte[] imgP) {
        this.nombre = nombre;
        this.precio = precio;
        this.imgP = imgP;
    }

    public String getImagenBase64() {
        return Base64.getEncoder().encodeToString(imgP);
    }

    public Producto(String nombre, double precio, String base64) {
        this.nombre = nombre;
        this.precio = precio;
        this.base64 = base64;
    }

    public Integer getIDpro() {
        return iDpro;
    }

    public void setIDpro(Integer iDpro) {
        this.iDpro = iDpro;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public Date getFechacaducidad() {
        return fechacaducidad;
    }

    public void setFechacaducidad(Date fechacaducidad) {
        this.fechacaducidad = fechacaducidad;
    }

    public byte[] getImgP() {
        return imgP;
    }

    public void setImgP(byte[] imgP) {
        this.imgP = imgP;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (iDpro != null ? iDpro.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Producto)) {
            return false;
        }
        Producto other = (Producto) object;
        if ((this.iDpro == null && other.iDpro != null) || (this.iDpro != null && !this.iDpro.equals(other.iDpro))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Dominio.Producto[ iDpro=" + iDpro + " ]";
    }

}
