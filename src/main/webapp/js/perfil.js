
$(document).ready(function () {

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
                    mostrarNotificacion("success", "!Datos Guardados correctamente!")
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                mostrarNotificacion("danger", "Ocurrio un error, intenta mas tarde")
            }
        });
        
        localStorage.removeItem("correo");
        localStorage.removeItem("matricula");
        localStorage.removeItem("password");

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