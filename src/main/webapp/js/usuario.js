
$(document).ready(function () {
    $("#btn-menu").on("click", function () {
        $("#msg-success").append("<strong>Este es  el mensaje</strong>");
        $("#msg-success").show("fade");

    });
    $('#form-registro').on("submit", function (e) {
        e.preventDefault();
        const correo = $("#correo"),
                matricula = $("#matricula"),
                password = $("#password"),
                confirmarPassword = $("#Validapassword");

        const data = new FormData();
        data.append("correo", correo.val())
        data.append("matricula", matricula.val())

        $.ajax({
            type: 'POST',
            url: "registro",
            data: data,
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function (xhr) {
            },
            success: function (data) {
                if (data === "OK") {
                    if (!correo.val().includes("@uteq.edu.mx")) {
                        correo.val("");
                        correo.focus();
                        mostrarNotificacion("warning", "Formato Incorrecto del correo, el formato debe ser: 1234567891@uteq.edu.mx");
                        return;
                    }

                    if (password.val() !== confirmarPassword.val()) {
                        password.val("");
                        confirmarPassword.val("");
                        password.focus();
                        mostrarNotificacion("warning", "!Los passwords deben coincidir!")
                        return;
                    }

                    localStorage.setItem("correo", correo.val());
                    localStorage.setItem("matricula", matricula.val());
                    localStorage.setItem("password", password.val());
                    mostrarNotificacion("success", "Datos Correctos, Llena la informacion de tu perfil")
                    window.location = "perfil";
                } else {
                    mostrarNotificacion("warning", data);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                mostrarNotificacion("danger", "Ocurrio un error, intenta mas tarde")
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

