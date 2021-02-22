
$(document).ready(function () {
    obtenerCarreraDefault();
    obtenerCarreras();

    $("#regresar").on("click", function () {
        localStorage.setItem("regresar", true);
        window.location = "registro";
    });

    const nombre = $('#nombre'),
            apellidos = $('#apellidos'),
            alias = $('#alias'),
            pasatiempo = $('#pasatiempos'),
            fechaNaciemiento = $('#fecha'),
            edad = $('#edad'),
            estado = $('#estado'),
            sexo = $('#sexo'),
            division = $('#division'),
            carrera = $('#carrera'),
            imagen = $('#foto');

    $('#form-perfil').on("submit", function (e) {
        e.preventDefault();
        const data = new FormData();
        data.append("nombre", nombre.val());
        data.append("apellidos", apellidos.val());
        data.append("alias", alias.val());
        data.append("pasatiempo", pasatiempo.val());
        data.append("fechaNaciemiento", fechaNaciemiento.val());
        data.append("edad", edad.val());
        data.append("division", division.val());
        data.append("carrera", carrera.val());
        data.append("estado", estado.val());
        data.append("imagen", imagen[0].files[0]);
        data.append("sexo", sexo.val());
        data.append("correo", localStorage.getItem('correo'));
        data.append("matricula", localStorage.getItem('matricula'));
        data.append("password", localStorage.getItem('password'));

        $.ajax({
            type: 'POST',
            url: "perfil",
            data: data,
            contentType: false,
            cache: false,
            processData: false,
            beforeSend: function (xhr) {
            },
            success: function (data) {
                if (data === "OK") {
                    mostrarNotificacion("success", "!Datos Guardados correctamente!");
                    window.location = "principal-perfil";
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                mostrarNotificacion("danger", "Ocurrio un error, intenta mas tarde");
            }
        });

        localStorage.removeItem("correo");
        localStorage.removeItem("matricula");
        localStorage.removeItem("password");

    });

    function mostrarNotificacion(tipo = "success", mensaje = "") {
        $("#msg-" + tipo + " strong").remove();
        $("#msg-" + tipo).append("<strong>" + mensaje + "</strong>");
        $("#msg-" + tipo).show("fade");
        setTimeout(function () {
            $("#msg-" + tipo).hide("fade");
        }, 5000);
    }

});

function obtenerCarreras() {
    $("#division").on("change", function () {
        $.ajax({
            type: 'get',
            url: "obtener-carreras",
            dataType: 'JSON',
            data: {
                idDivision: $(this).val()
            },
            beforeSend: function (xhr) {
            },
            success: function (data) {
                if (data !== null) {
                    var options = "";
                    for (var i = 0; i < data.length; i++) {
                        options += "<option value='" + data[i].idCarrera + "'>" + data[i].nombre + "</option>";
                    }
                    $("#carrera").html(options);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        });
    });
}

function obtenerCarreraDefault() {
    $.ajax({
        type: 'get',
        url: "obtener-carreras",
        dataType: 'JSON',
        data: {
            idDivision: "1"
        },
        beforeSend: function (xhr) {
        },
        success: function (data) {
            if (data !== null) {
                var options = "";
                for (var i = 0; i < data.length; i++) {
                    options += "<option value='" + data[i].idCarrera + "'>" + data[i].nombre + "</option>";
                }
                $("#carrera").html(options);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
        }
    });
}

