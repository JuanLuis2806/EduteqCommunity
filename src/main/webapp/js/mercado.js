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
                    alert("El producto fue agregado!!!")
                    document.reset();
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert("Esto esta mal qlo!")
            }
        });
    });
});
