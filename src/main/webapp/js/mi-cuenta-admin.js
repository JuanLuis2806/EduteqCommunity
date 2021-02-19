$(document).ready(function () {
    
    $("#academyNav .classynav > ul li:nth-child(4)").after("<li id='usuarioTab'></li>");
    $("#usuarioTab").append('<a href="admin-usuarios">USUARIOS</a>');

    actualizarDatosPerfil();
    actualizarContrasena();
    
    const idEstado = $("#estadoId").val(),
            sexoId = $("#sexoId").val();

    $('#sexo > option[value="' + sexoId + '"]').attr('selected', 'selected');
    $('#estados > option[value="' + idEstado + '"]').attr('selected', 'selected');
});

function actualizarDatosPerfil() {
    $("#perfilForm").on("submit", function (e) {
        e.preventDefault();
        const nombre = $('#nombre'),
                apellidos = $('#apellidos'),
                alias = $('#alias'),
                pasatiempo = $('#pasatiempos'),
                fechaNaciemiento = $('#fecha'),
                edad = $('#edad'),
                estado = $('#estados'),
                sexo = $('#sexo'),
                imagen = $('#foto'),
                idPerfil = $("#perfilId");

        const data = new FormData();
        data.append("nombre", nombre.val());
        data.append("apellidos", apellidos.val());
        data.append("alias", alias.val());
        data.append("pasatiempo", pasatiempo.val());
        data.append("fechaNaciemiento", fechaNaciemiento.val());
        data.append("edad", edad.val());
        data.append("estado", estado.val());
        data.append("imagen", imagen[0].files[0]);
        data.append("sexo", sexo.val());
        data.append("idPerfil", idPerfil.val());


        $.ajax({
            type: 'post',
            url: "editar-datos-perfil",
            data: data,
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function (xhr) {
            },
            success: function (data) {
                if (data !== null) {
                    mostrarNotificacion("success", "Datos actualizados correctamente!");
                    $("#imagen").attr("src", "imagenes/" + data);
                    nombre.val(nombre.val());
                    apellidos.val(nombre.val());
                    alias.val(nombre.val());
                    pasatiempo.val(pasatiempo.val());
                    fechaNaciemiento.val(fechaNaciemiento.val());
                    edad.val(edad.val());
                    estado.val(estado.val());
                    sexo.val(sexo.val());
                }

            },
            error: function (jqXHR, textStatus, errorThrown) {
                mostrarNotificacion("danger", "Ah ocurrido un error!")
            }
        });
    });
}

function actualizarContrasena() {
    $("#cambiarContrasena").on("submit", function (e) {
        e.preventDefault();

        const contrasena = $("#password"),
                nuevaContrasena = $("#nueva_contrasena"),
                confirmarContrasena = $("#confirmar_contrasena");

        const data = new FormData();
        data.append("usuarioId", $("#usuarioId").val());
        data.append("contrasena", contrasena.val());
        data.append("nuevaContrasena", nuevaContrasena.val());
        data.append("confirmarContrasena", confirmarContrasena.val());

        $.ajax({
            type: 'post',
            url: "editar-contrasena",
            data: data,
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function (xhr) {
            },
            success: function (data) {
                console.log(data);

                if (data === "OK") {
                    mostrarNotificacion("success", "Datos actualizados correctamente!");
                    contrasena.val("");
                    nuevaContrasena.val("");
                    confirmarContrasena.val("");
                    return;
                }

                if (data === "ContrasenaIncorrecta") {
                    mostrarNotificacion("warning", "Contrasenas Incorrecta, Intenta nuevamente!");
                    contrasena.val("");
                    nuevaContrasena.val("");
                    confirmarContrasena.val("");
                    contrasena.focus();
                    return;
                }

                if (data === "ContrasenasNoIguales") {
                    mostrarNotificacion("warning", "Las contrasenas nuevas no coinciden!");
                    contrasena.val("");
                    nuevaContrasena.val("");
                    confirmarContrasena.val("");
                    nuevaContrasena.focus();
                    return;
                }

            },
            error: function (jqXHR, textStatus, errorThrown) {
                mostrarNotificacion("danger", "Ah ocurrido un error!")
            }
        });

    });
}

function mostrarNotificacion(tipo = "success", mensaje = "") {
    $("#msg-" + tipo + " strong").remove();
    $("#msg-" + tipo).append("<strong>" + mensaje + "</strong>");
    $("#msg-" + tipo).show("fade");
    setTimeout(function () {
        $("#msg-" + tipo).hide("fade");
    }, 5000);
}
