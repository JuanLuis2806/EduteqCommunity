package services;

import interfaces.Estatus;

public class ObtenerFormatoTablaUsuario {

    public String obtenerEstatusBotones(int estatus) {
        String contenidoBotones = "";
        if (estatus == Estatus.USUARIO_ELIMINADO) {
            contenidoBotones
                    = "<td>"
                    + "<button type='submit' class='btn-bootstrap' disabled='true'><img src='img/iconos-usuario/delete1.png'/> Eliminar </button>"
                    + "<button type='submit' class='btn-bootstrap-sus' disabled='true'><img src='img/iconos-usuario/suspendido1.png'/>Suspender</button>"
                    + "</td>";
        }

        if (estatus == Estatus.USUARIO_ACTIVO) {
            contenidoBotones
                    = "<td>"
                    + "<button type='submit' class='btn-bootstrap btn-eliminar'>"
                    + "<img src='img/iconos-usuario/delete1.png'/> Eliminar "
                    + "</button>"
                    + "<button type='submit' class='btn-bootstrap-sus btn-sespender'>"
                    + "<img src='img/iconos-usuario/suspendido1.png'/>Suspender"
                    + "</button>"
                    + "</td>";

        }

        if (estatus == Estatus.USUARIO_INACTIVO) {
            contenidoBotones
                    = "<td>"
                    + "<button type='submit' class='btn-bootstrap btn-eliminar'>"
                    + "<img src='img/iconos-usuario/delete1.png'/>  Eliminar "
                    + "</button>"
                    + "<button type='submit' class='btn-bootstrap-act btn-activar'>"
                    + "<img src='img/iconos-usuario/1.png'/> Activar "
                    + "</button>"
                    + "</td>";

        }
        return contenidoBotones;
    }

    public String obtenerImagen(String nombreImagen) {
        return "<img src='imagenes/" + nombreImagen + "' style='max-width: 100%;'/>";
    }

}
