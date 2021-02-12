$(document).ready(function () {

    const idDivision = $("#divisionId").val(),
            idCarrera = $("#carreraId").val(),
            idEstado = $("#estadoId").val();

    $('#divisiones > option[value="' + idDivision + '"]').attr('selected', 'selected');
    $('#estados > option[value="' + idEstado + '"]').attr('selected', 'selected');

    obtenerCarreraDefault(idDivision, idCarrera);

    $("#divisiones").on("change", function () {
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
                    $("#carreras").html(options);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        });
    });
});

function obtenerCarreraDefault(idDivision, idCarrera) {
    $.ajax({
        type: 'get',
        url: "obtener-carreras",
        dataType: 'JSON',
        data: {
            idDivision: idDivision
        },
        beforeSend: function (xhr) {
        },
        success: function (data) {
            if (data !== null) {
                var options = "";
                for (var i = 0; i < data.length; i++) {
                    options += "<option value='" + data[i].idCarrera + "'>" + data[i].nombre + "</option>";
                }
                $("#carreras").html(options);
                $('#carreras > option[value="' + idCarrera + '"]').attr('selected', 'selected');
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
        }
    });
}