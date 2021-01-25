
$(document).ready(function () {
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
                        alert("Formato Incorrecto del correo, el formato debe ser: 1166237271@uteq.edu.mx");
                        return;
                    }
                    
                    if (password.val() !== confirmarPassword.val()) {
                        password.val("");
                        confirmarPassword.val("");
                        password.focus();
                        alert("Las contraseñas deben coincidir!");
                        return;
                    }
                    
                    localStorage.setItem("correo", correo.val());
                    localStorage.setItem("matricula", matricula.val());
                    localStorage.setItem("password", password.val());
                    alert("Datos Correctos!")
                    window.location = "perfil";
                }
                alert(data);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert("Error!")
            }
        });
    });
});

