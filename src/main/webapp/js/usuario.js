
$(document).ready(function () {
    const btnSeguir = document.getElementById('btnSeguir');
    btnSeguir.addEventListener('click', function () {
        const correo = document.getElementById('correo'),
                matricula = document.getElementById('matricula'),
                password = document.getElementById('password'),
                confirmarPassword = document.getElementById('Validapassword');


        if (correo.value === "" || correo.value.length < 22 ||
                !correo.value.includes("@uteq.edu.mx")) {
            alert("Formato Incorrecto del correo, el formato debe ser: 1166237271@uteq.edu.mx");
            return;
        }

        if (matricula.value === "" || matricula.value.length < 10) {
            alert("Formato Incorrecto de matricula!");
            return;
        }

        if (password.value === "" || password.value.length < 8) {
            alert("Introducir 10 digitos para el password!");
            return;
        }

        if (confirmarPassword.value === "" || confirmarPassword.value.length < 8) {
            alert("Introducir 10 digitos para el confirmacion de password!");
            return;
        }

        if (password.value !== confirmarPassword.value) {
            alert("Las contraseñas deben coincidir!");
            return;
        }

        localStorage.setItem("correo", correo.value);
        localStorage.setItem("matricula", matricula.value);
        localStorage.setItem("password", password.value);

        alert("Datos Correctos!")

        window.location = "perfil";
    });

});


