/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dtos;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class PerfilUsuario {

    private int usuarioId;
    private int perfilId;
    private String tipoUsuario;
    private int estatus;
    private String correo;
    private String password;
    private String matricula;
    private String division;
    private String foto;
    private String botones;

    public String getFoto() {
        return "<img src='imagenes/" + foto + "'/>";
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public PerfilUsuario(int usuarioId, int perfilId, String tipoUsuario, int estatus, String correo, String password, String matricula, String division, String foto, String botones) {
        this.usuarioId = usuarioId;
        this.perfilId = perfilId;
        this.tipoUsuario = tipoUsuario;
        this.estatus = estatus;
        this.correo = correo;
        this.password = password;
        this.matricula = matricula;
        this.division = division;
        this.foto = foto;
        this.botones = botones;
    }

    public int getUsuarioId() {
        return usuarioId;
    }

    public void setUsuarioId(int usuarioId) {
        this.usuarioId = usuarioId;
    }

    public int getPerfilId() {
        return perfilId;
    }

    public void setPerfilId(int perfilId) {
        this.perfilId = perfilId;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public int getEstatus() {
        return estatus;
    }

    public void setEstatus(int estatus) {
        this.estatus = estatus;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getDivision() {
        return division;
    }

    public void setDivision(String division) {
        this.division = division;
    }

}
