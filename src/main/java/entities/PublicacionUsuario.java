/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author juan
 */
@Entity
@Table(name = "publicacion_usuario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PublicacionUsuario.findAll", query = "SELECT p FROM PublicacionUsuario p"),
    @NamedQuery(name = "PublicacionUsuario.findById", query = "SELECT p FROM PublicacionUsuario p WHERE p.id = :id"),
    @NamedQuery(name = "PublicacionUsuario.findByComentario", query = "SELECT p FROM PublicacionUsuario p WHERE p.comentario = :comentario")})
public class PublicacionUsuario implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "comentario")
    private String comentario;
    @JoinColumn(name = "id_usuario", referencedColumnName = "id")
    @ManyToOne
    private Publicacion idUsuario;
    @JoinColumn(name = "id_publicacion", referencedColumnName = "id")
    @ManyToOne
    private Usuario idPublicacion;

    public PublicacionUsuario() {
    }

    public PublicacionUsuario(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public Publicacion getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Publicacion idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Usuario getIdPublicacion() {
        return idPublicacion;
    }

    public void setIdPublicacion(Usuario idPublicacion) {
        this.idPublicacion = idPublicacion;
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
        if (!(object instanceof PublicacionUsuario)) {
            return false;
        }
        PublicacionUsuario other = (PublicacionUsuario) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.PublicacionUsuario[ id=" + id + " ]";
    }
    
}
