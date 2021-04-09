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
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
@Entity
@Table(name = "comentarios_mercado")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ComentariosMercado.findAll", query = "SELECT c FROM ComentariosMercado c"),
    @NamedQuery(name = "ComentariosMercado.findById", query = "SELECT c FROM ComentariosMercado c WHERE c.idPublicacion = :id"),
    @NamedQuery(name = "ComentariosMercado.findByComentario", query = "SELECT c FROM ComentariosMercado c WHERE c.comentario = :comentario")})
public class ComentariosMercado implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 1000)
    @Column(name = "comentario")
    private String comentario;
    @JoinColumn(name = "id_publicacion", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Mercado idPublicacion;
    @JoinColumn(name = "id_usuario", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Usuario idUsuario;

    public ComentariosMercado() {
    }

    public ComentariosMercado(Integer id) {
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

    public Mercado getIdPublicacion() {
        return idPublicacion;
    }

    public void setIdPublicacion(Mercado idPublicacion) {
        this.idPublicacion = idPublicacion;
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
        if (!(object instanceof ComentariosMercado)) {
            return false;
        }
        ComentariosMercado other = (ComentariosMercado) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.ComentariosMercado[ id=" + id + " ]";
    }

}
