$(document).ready(function () {

    $('#formEventos').on("submit", function (e) {
        e.preventDefault();


        const nombre = $('#nombre'),
                descripcion = $('#descripcion'),
                fechaInicio = $('#fechaInicio'),
                fechaFinal = $('#fechaFinal'),
                usuario = $('#idUsuario'),
                imagen = $('#imagen'),
                tipoEvento = $("#tipoEvento");

        const data = new FormData();
        data.append("nombre", nombre.val());
        data.append("descripcion", descripcion.val());
        data.append("fechaInicio", fechaInicio.val());
        data.append("fechaFinal", fechaFinal.val());
        data.append("usuario", usuario.val());
        data.append("tipoEvento", tipoEvento.val());
        data.append("imagen", imagen[0].files[0]);
        console.log($(this).serialize());
        $.ajax({
            type: 'POST',
            url: "registarEvento",
            data: data,
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function (xhr) {
            },
            success: function (data) {
                if (data === "OK") {
                    mostrarNotificacion("success", "!Datos Guardados correctamente!");
                    setTimeout('document.location.reload()', 5000);

                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert("Error");
                mostrarNotificacion("danger", "Ocurrio un error, intenta mas tarde");
            }
        });
    });
});


function mostrarNotificacion(tipo = "success", mensaje = "") {
    $("#msg-" + tipo + " strong").remove();
    $("#msg-" + tipo).append("<strong>" + mensaje + "</strong>");
    $("#msg-" + tipo).show("fade");
    setTimeout(function () {
        $("#msg-" + tipo).hide("fade");
    }, 5000);
}
