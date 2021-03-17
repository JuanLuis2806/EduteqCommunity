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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author juan
 */
@Entity
@Table(name = "perfil")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Perfil.findAll", query = "SELECT p FROM Perfil p"),
    @NamedQuery(name = "Perfil.findById", query = "SELECT p FROM Perfil p WHERE p.id = :id"),
    @NamedQuery(name = "Perfil.findByNombre", query = "SELECT p FROM Perfil p WHERE p.nombre = :nombre"),
    @NamedQuery(name = "Perfil.findByApellidos", query = "SELECT p FROM Perfil p WHERE p.apellidos = :apellidos"),
    @NamedQuery(name = "Perfil.findByAlias", query = "SELECT p FROM Perfil p WHERE p.alias = :alias"),
    @NamedQuery(name = "Perfil.findByPasatiempos", query = "SELECT p FROM Perfil p WHERE p.pasatiempos = :pasatiempos"),
    @NamedQuery(name = "Perfil.findByFechaNacimiento", query = "SELECT p FROM Perfil p WHERE p.fechaNacimiento = :fechaNacimiento"),
    @NamedQuery(name = "Perfil.findBySexo", query = "SELECT p FROM Perfil p WHERE p.sexo = :sexo"),
    @NamedQuery(name = "Perfil.findByFotoPerfil", query = "SELECT p FROM Perfil p WHERE p.fotoPerfil = :fotoPerfil"),
    @NamedQuery(name = "Perfil.findByEdad", query = "SELECT p FROM Perfil p WHERE p.edad = :edad")})
public class Perfil implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Size(max = 45)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 45)
    @Column(name = "apellidos")
    private String apellidos;
    @Size(max = 45)
    @Column(name = "alias")
    private String alias;
    @Size(max = 45)
    @Column(name = "pasatiempos")
    private String pasatiempos;
    @Size(max = 45)
    @Column(name = "fecha_nacimiento")
    private String fechaNacimiento;
    @Size(max = 45)
    @Column(name = "sexo")
    private String sexo;
    @Size(max = 45)
    @Column(name = "foto_perfil")
    private String fotoPerfil;
    @Column(name = "edad")
    private Integer edad;
    @JoinColumn(name = "id_carrera", referencedColumnName = "id")
    @ManyToOne
    private Carrera idCarrera;
    @JoinColumn(name = "id_estado", referencedColumnName = "id")
    @ManyToOne
    private Estado idEstado;
    @JoinColumn(name = "id_usuario", referencedColumnName = "id")
    @ManyToOne
    private Usuario idUsuario;
    @OneToMany(mappedBy = "idPerfil")
    private List<PublicacionUsuario> publicacionPerfilList;
    @OneToMany(mappedBy = "idPerfil")
    private List<Publicacion> publicacionList;

    public List<Publicacion> getPublicacionList() {
        return publicacionList;
    }

    public void setPublicacionList(List<Publicacion> publicacionList) {
        this.publicacionList = publicacionList;
    }
    
    public List<PublicacionUsuario> getPublicacionPerfilList() {
        return publicacionPerfilList;
    }

    public void setPublicacionPerfilList(List<PublicacionUsuario> publicacionPerfilList) {
        this.publicacionPerfilList = publicacionPerfilList;
    }
    
    public Perfil() {
    }

    public Perfil(Integer id) {
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

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getPasatiempos() {
        return pasatiempos;
    }

    public void setPasatiempos(String pasatiempos) {
        this.pasatiempos = pasatiempos;
    }

    public String getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(String fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getFotoPerfil() {
        return fotoPerfil;
    }

    public void setFotoPerfil(String fotoPerfil) {
        this.fotoPerfil = fotoPerfil;
    }

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    public Carrera getIdCarrera() {
        return idCarrera;
    }

    public void setIdCarrera(Carrera idCarrera) {
        this.idCarrera = idCarrera;
    }

    public Estado getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(Estado idEstado) {
        this.idEstado = idEstado;
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
        if (!(object instanceof Perfil)) {
            return false;
        }
        Perfil other = (Perfil) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Perfil[ id=" + id + " ]";
    }
    
}
