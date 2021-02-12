$(document).ready(function () {
    $("#form-login").on("submit", function (e) {
        e.preventDefault();
        const correo = $("#correo"),
                contrasena = $("#contrasena");

        if (!correo.val().includes("@uteq.edu.mx")) {
            mostrarNotificacion("warning","Formato Incorrecto del correo, el formato debe ser: 1234567891@uteq.edu.mx");
            return;
        }

        $.ajax({
            type: 'POST',
            url: "verificar-datos",
            dataType: 'text',
            data: {
                correo: correo.val(),
                contrasena: contrasena.val()
            },
            beforeSend: function (xhr) {
            },
            success: function (data) {
                if (data === "OK") {
                    window.location = "principal-perfil";
                } else {
                    mostrarNotificacion("warning","Usuario o password invalidos, Vuelta a intentar!");
                    return;
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                mostrarNotificacion("danger", "Ocurrio un error, intenta mas tarde");
            }
        });
    });
});

function mostrarNotificacion(tipo = "succces", mensaje = "") {
    $("#msg-" + tipo + " strong").remove();
    $("#msg-" + tipo).append("<strong>" + mensaje + "</strong>");
    $("#msg-" + tipo).show("fade");
    setTimeout(function () {
        $("#msg-" + tipo).hide("fade");
    }, 4000);
}

