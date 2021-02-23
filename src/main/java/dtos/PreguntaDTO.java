package dtos;

public class PreguntaDTO {
    
    private int publicacionId;
    private String contenido;
    private int idDivisionPublicacion;
    private String nombre;
    private String foto;
    private String division;
    private String carrera;

    public int getPublicacionId() {
        return publicacionId;
    }

    public void setPublicacionId(int publicacionId) {
        this.publicacionId = publicacionId;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public int getIdDivisionPublicacion() {
        return idDivisionPublicacion;
    }

    public void setIdDivisionPublicacion(int idDivisionPublicacion) {
        this.idDivisionPublicacion = idDivisionPublicacion;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getDivision() {
        return division;
    }

    public void setDivision(String division) {
        this.division = division;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

}
