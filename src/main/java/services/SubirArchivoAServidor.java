package services;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.rmi.ServerException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

public class SubirArchivoAServidor extends HttpServlet {

    private static final String RUTA_TARGET = "/target/EduTEQ-1.0-SNAPSHOT";
    private HttpServletRequest request;
    private Part part;
    private String carpetaDestino;

    public SubirArchivoAServidor(HttpServletRequest request, String carpetaDestino) {
        this.request = request;
        this.carpetaDestino = carpetaDestino;
    }

    public String __invoke() throws IOException, ServletException {
        String carpetaDefault = this.request.getServletContext().getRealPath("");
        this.carpetaDestino = carpetaDefault.replace(RUTA_TARGET, this.carpetaDestino);

        File archivoDestino = new File(this.carpetaDestino);
        if (!archivoDestino.exists()) {
            archivoDestino.mkdir();
        }

        Part partImg = request.getPart("imagen");
        String nombreImagen = getFileName(partImg);

        if (null == nombreImagen) {
            throw new ServerException("No existe la imagen");
        }

        InputStream contenidoCliente = partImg.getInputStream();
        File archivoServidor = new File(
                carpetaDestino
                + File.separator + nombreImagen
        );
        OutputStream contenidoServidor = new FileOutputStream(archivoServidor);

        int indice = 0;
        final byte[] bytes = new byte[1024];

        while ((indice = contenidoCliente.read(bytes)) != -1) {
            contenidoServidor.write(bytes, 0, indice);
        }

        contenidoServidor.close();
        contenidoCliente.close();
        return nombreImagen;
    }

    private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }

}
