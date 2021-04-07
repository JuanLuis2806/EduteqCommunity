$(document).ready(function () {

    const imagen = $("#imagen-producto"),
            nombre = $("#nombre-producto"),
            descripcion = $("#descripcion-producto"),
            precio = $("#precio-producto");

    $("#subir-producto").on("submit", function (e) {
        e.preventDefault();
        const data = new FormData();
        data.append("imagen", imagen[0].files[0]);
        data.append("nombre", nombre.val());
        data.append("descripcion", descripcion.val());
        data.append("precio", precio.val());

        $.ajax({
            type: 'POST',
            url: "agregarProducto",
            data: data,
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function (xhr) {},
            success: function (data) {
                if ("OK" === data) {
                    mostrarNotificacion("success", "El producto se agrego correctamente perro!!!");
                    location.reload();
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                mostrarNotificacion("danger", "Ocurrio algun error, intentelo una vez mas!!!");
            }
        });

        function mostrarNotificacion(tipo = "succces", mensaje = "") {
            $("#msg-" + tipo + " strong").remove();
            $("#msg-" + tipo).append("<strong>" + mensaje + "</strong>");
            $("#msg-" + tipo).show("fade");
            setTimeout(function () {
                $("#msg-" + tipo).hide("fade");
            }, 2000);
        }

    });
});


