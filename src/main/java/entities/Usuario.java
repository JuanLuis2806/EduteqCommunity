/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.List;
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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author juan
 */
@Entity
@Table(name = "usuario")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuario.findAll", query = "SELECT u FROM Usuario u"),
    @NamedQuery(name = "Usuario.findById", query = "SELECT u FROM Usuario u WHERE u.id = :id"),
    @NamedQuery(name = "Usuario.findByIdTipoUsuario", query = "SELECT u FROM Usuario u WHERE u.idTipoUsuario = :idTipoUsuario"),
    @NamedQuery(name = "Usuario.findByCorreo", query = "SELECT u FROM Usuario u WHERE u.correo = :correo"),
    @NamedQuery(name = "Usuario.findByMatricula", query = "SELECT u FROM Usuario u WHERE u.matricula = :matricula"),
    @NamedQuery(name = "Usuario.findByContrase\u00f1a", query = "SELECT u FROM Usuario u WHERE u.contrase\u00f1a = :contrase\u00f1a")})
public class Usuario implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "id_tipo_usuario")
    private Integer idTipoUsuario;
    @Size(max = 45)
    @Column(name = "correo")
    private String correo;
    @Size(max = 45)
    @Column(name = "matricula")
    private String matricula;
    @Size(max = 45)
    @Column(name = "contrase\u00f1a")
    private String contraseña;
    @OneToMany(mappedBy = "idUsuario")
    private List<Mercado> mercadoList;
    @OneToMany(mappedBy = "idPublicacion")
    private List<PublicacionUsuario> publicacionUsuarioList;
    @OneToMany(mappedBy = "idUsuario")
    private List<Eventos> eventosList;
    @JoinColumn(name = "id_division", referencedColumnName = "id")
    @ManyToOne
    private Division idDivision;
    @JoinColumn(name = "id_division", referencedColumnName = "id")
    @ManyToOne
    private TipoUsuario idDivision1;
    @OneToMany(mappedBy = "idUsuario")
    private List<Perfil> perfilList;

    public Usuario() {
    }

    public Usuario(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdTipoUsuario() {
        return idTipoUsuario;
    }

    public void setIdTipoUsuario(Integer idTipoUsuario) {
        this.idTipoUsuario = idTipoUsuario;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    @XmlTransient
    public List<Mercado> getMercadoList() {
        return mercadoList;
    }

    public void setMercadoList(List<Mercado> mercadoList) {
        this.mercadoList = mercadoList;
    }

    @XmlTransient
    public List<PublicacionUsuario> getPublicacionUsuarioList() {
        return publicacionUsuarioList;
    }

    public void setPublicacionUsuarioList(List<PublicacionUsuario> publicacionUsuarioList) {
        this.publicacionUsuarioList = publicacionUsuarioList;
    }

    @XmlTransient
    public List<Eventos> getEventosList() {
        return eventosList;
    }

    public void setEventosList(List<Eventos> eventosList) {
        this.eventosList = eventosList;
    }

    public Division getIdDivision() {
        return idDivision;
    }

    public void setIdDivision(Division idDivision) {
        this.idDivision = idDivision;
    }

    public TipoUsuario getIdDivision1() {
        return idDivision1;
    }

    public void setIdDivision1(TipoUsuario idDivision1) {
        this.idDivision1 = idDivision1;
    }

    @XmlTransient
    public List<Perfil> getPerfilList() {
        return perfilList;
    }

    public void setPerfilList(List<Perfil> perfilList) {
        this.perfilList = perfilList;
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
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Usuario[ id=" + id + " ]";
    }
    
}
