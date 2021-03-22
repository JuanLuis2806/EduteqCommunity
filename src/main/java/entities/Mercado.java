/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package entities;

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
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
@Entity
@Table(name = "mercado")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Mercado.findAll", query = "SELECT m FROM Mercado m"),
    @NamedQuery(name = "Mercado.findById", query = "SELECT m FROM Mercado m WHERE m.id = :id"),
    @NamedQuery(name = "Mercado.findByNombre", query = "SELECT m FROM Mercado m WHERE m.nombre = :nombre"),
    @NamedQuery(name = "Mercado.findByDescripcion", query = "SELECT m FROM Mercado m WHERE m.descripcion = :descripcion"),
    @NamedQuery(name = "Mercado.findByImagen", query = "SELECT m FROM Mercado m WHERE m.imagen = :imagen"),
    @NamedQuery(name = "Mercado.findByPrecio", query = "SELECT m FROM Mercado m WHERE m.precio = :precio"),
    @NamedQuery(name = "Mercado.findByFechaInicio", query = "SELECT m FROM Mercado m WHERE m.fechaInicio = :fechaInicio"),
    @NamedQuery(name = "Mercado.findByFechaFinal", query = "SELECT m FROM Mercado m WHERE m.fechaFinal = :fechaFinal")})
public class Mercado implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 500)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 500)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 45)
    @Column(name = "imagen")
    private String imagen;
    @Size(max = 45)
    @Column(name = "precio")
    private String precio;
    @Size(max = 45)
    @Column(name = "fecha_inicio")
    private String fechaInicio;
    @Size(max = 45)
    @Column(name = "fecha_final")
    private String fechaFinal;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idPublicacion")
    private List<ComentariosMercado> comentariosMercadoList;
    @JoinColumn(name = "id_usuario", referencedColumnName = "id")
    @ManyToOne
    private Usuario idUsuario;

    public Mercado() {
    }

    public Mercado(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(String fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public String getFechaFinal() {
        return fechaFinal;
    }

    public void setFechaFinal(String fechaFinal) {
        this.fechaFinal = fechaFinal;
    }

    @XmlTransient
    public List<ComentariosMercado> getComentariosMercadoList() {
        return comentariosMercadoList;
    }

    public void setComentariosMercadoList(List<ComentariosMercado> comentariosMercadoList) {
        this.comentariosMercadoList = comentariosMercadoList;
    }

    public Usuario getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Usuario idUsuario) {
        this.idUsuario = idUsuario;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Mercado)) {
            return false;
        }
        Mercado other = (Mercado) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Mercado[ id=" + id + " ]";
    }

}
