$(document).ready(function () {
    var tabla = $("#tabla-usuarios").DataTable({
        "pagingType": "full_numbers",
        "language": {
            select: {
                rows: {
                    _: "%d registros seleccionados",
                    0: "No se han seleccionado registros",
                    1: "1 registro seleccionado"
                }
            },
            "emptyTable": "No hay datos disponibles en la tabla.",
            "info": "Del _START_ al _END_ de _TOTAL_ ",
            "infoEmpty": "Mostrando 0 registros de un total de 0.",
            "infoFiltered": "(filtrados de un total de _MAX_ registros)",
            "infoPostFix": "(actualizados)",
            "lengthMenu": "Mostrar _MENU_ registros",
            "loadingRecords": "Cargando...",
            "processing": "Procesando...",
            "search": "Buscar:",
            "searchPlaceholder": "Dato para buscar",
            "zeroRecords": "No se han encontrado coincidencias.",
            "paginate": {
                "first": "Primera",
                "last": "Última",
                "next": "Siguiente",
                "previous": "Anterior"
            },
            "aria": {
                "sortAscending": "Ordenación ascendente",
                "sortDescending": "Ordenación descendente"
            }
        },
        "ajax": {
            "url": "admin-obtener-usuarios",
            "dataSrc": ""
        },
        "columns": [
            {"data": "foto"},
            {"data": "tipoUsuario"},
            {"data": "division"},
            {"data": "correo"},
            {"data": "matricula"},
            {"data": "password"},
            {"data": "botones"}
        ],
        "aoColumnDefs": [
            {"sWidth": "300px", "aTargets": [0]},
            {"sWidth": "400px", "aTargets": [1]},
            {"sWidth": "400px", "aTargets": [1]},
        ]
    });

    const modal = $("#genericModal");
    eliminarUsuario("#tabla-usuarios tbody", tabla);
    activarUsuario("#tabla-usuarios tbody", tabla);
    suspenderUsuario("#tabla-usuarios tbody", tabla);
    ajaxModal(modal, tabla);
});

var eliminarUsuario = function (tbody, tabla) {
    $(tbody).on("click", "button.btn-eliminar", function () {
        var datos = tabla.row($(this).parents("tr")).data();
        var modal = $("#genericModal");
        modal.modal("show");
        $("#modalTitle").text("Eliminar cuenta de Usuario");
        $("#usuarioId").val("");
        var usuarioId = datos.usuarioId;
        var correo = datos.correo;
        $("#genericModal .modal-body").text("¿Realmente deseas eliminar la cuenta del usuario: " + correo + "?");
        $("#usuarioId").val(usuarioId);
        $("#usuarioId").attr("data-url", "admin-eliminar-usuario");
    });
}

var activarUsuario = function (tbody, tabla) {
    $(tbody).on("click", "button.btn-activar", function () {
        var datos = tabla.row($(this).parents("tr")).data();
        var modal = $("#genericModal");
        modal.modal("show");
        $("#modalTitle").text("Activar cuenta de Usuario");
        $("#usuarioId").val("");
        var usuarioId = datos.usuarioId;
        var correo = datos.correo;
        $("#genericModal .modal-body").text("¿Realmente deseas activar la cuenta del usuario: " + correo + "?");
        $("#usuarioId").val(usuarioId);
        $("#usuarioId").attr("data-url", "admin-activar-usuario");
    });
}

var suspenderUsuario = function (tbody, tabla) {
    $(tbody).on("click", "button.btn-sespender", function () {
        var datos = tabla.row($(this).parents("tr")).data();
        var modal = $("#genericModal");
        modal.modal("show");
        $("#modalTitle").text("Suspender cuenta de Usuario");
        $("#usuarioId").val("");
        var usuarioId = datos.usuarioId;
        var correo = datos.correo;
        $("#genericModal .modal-body").text("¿Realmente deseas suspender la cuenta del usuario: " + correo + "?");
        $("#usuarioId").val(usuarioId);
        $("#usuarioId").attr("data-url", "admin-suspender-usuario");
    });
}

function ajaxModal(modal, tabla) {
    $("#btnAceptar").on("click", function () {
        var usuarioId = $("#usuarioId").val(),
                uri = $("#usuarioId").attr("data-url");

        var mensaje = "";
        if (uri === "admin-eliminar-usuario") {
            mensaje = "Usuario eliminado con exito!";
        }

        if (uri === "admin-activar-usuario") {
            mensaje = "Usuario activado con exito!";
        }

        if (uri === "admin-suspender-usuario") {
            mensaje = "Usuario suspendido con exito!";
        }

        $.ajax({
            type: 'POST',
            url: uri,
            dataType: 'text',
            data: {
                usuarioId: usuarioId
            },
            beforeSend: function (xhr) {
            },
            success: function (data) {
                if (data === "OK") {
                    mostrarNotificacion("succces", mensaje);
                    modal.modal("hide");
                    tabla.ajax.reload();
                }

            },
            error: function (jqXHR, textStatus, errorThrown) {
                mostrarNotificacion("danger", "Error, Intente mas tarde!");
            }
        });
    });
}

function mostrarNotificacion(tipo = "succces", mensaje = "") {
    $("#msg-" + tipo + " strong").remove();
    $("#msg-" + tipo).append("<strong>" + mensaje + "</strong>");
    $("#msg-" + tipo).show("fade");
    setTimeout(function () {
        $("#msg-" + tipo).hide("fade");
    }, 2000);
}





