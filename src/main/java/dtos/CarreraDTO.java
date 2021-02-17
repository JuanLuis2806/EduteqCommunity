
package dtos;

public class CarreraDTO {

    private int idCarrera;
    private String nombre;
    private int idDivision;
    private String nombreDivision;

    public CarreraDTO(int idCarrera, String nombre, int idDivision, String nombreDivision) {
        this.idCarrera = idCarrera;
        this.nombre = nombre;
        this.idDivision = idDivision;
        this.nombreDivision = nombreDivision;
    }
    
    public int getIdCarrera() {
        return idCarrera;
    }

    public void setIdCarrera(int idCarrera) {
        this.idCarrera = idCarrera;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
      public int getIdDivision() {
        return idDivision;
    }

    public void setIdDivision(int idDivision) {
        this.idDivision = idDivision;
    }

    public String getNombreDivision() {
        return nombreDivision;
    }

    public void setNombreDivision(String nombreDivision) {
        this.nombreDivision = nombreDivision;
    }
    
}
