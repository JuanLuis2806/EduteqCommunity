$(document).ready(function () {
    cargarPreguntasRepuestasDeForos();
    mostrarFormularioNuevaPregunta();
    ocultarFormularioNuevaPregunta();
    asignarTituloAlForo();
    crearPregunta();
    crearComentario();
});

function cargarPreguntasRepuestasDeForos() {
    $.ajax({
        type: 'get',
        url: "publicacion-respuesta",
        dataType: 'JSON',
        beforeSend: function (xhr) {
        },
        success: function (data) {
            if (data !== null) {
                crearContenidoForos(data);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
        }
    });

}

function crearPregunta() {
    $(".submitForm").on("submit", function (e) {
        e.preventDefault();
        console.log($(this).serialize());
        var divisionId = $(this).attr("data-id-division");
        var division = $(this).attr("data-division");
        $.ajax({
            type: 'post',
            url: "crear-publicacion",
            dataType: 'JSON',
            data: $(this).serialize() + "&perfilId=" + $("#perfilId").val() + "&divisionId=" + divisionId,
            beforeSend: function (xhr) {
            },
            success: function (data) {
                if (data !== null) {
                    console.log(data);
                    const contenido = crearContenidoPregunta(data);
                    $("#after" + division).after(contenido);
                    $("#formPregunta" + division).hide("hide");
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        });
    });

}

function crearComentario() {
    $(".tab-content").on("submit",".submitRespuesta",function (e) {
        e.preventDefault();
        console.log($(this).serialize());
        $.ajax({
            type: 'post',
            url: "crear-comentario",
            dataType: 'JSON',
            data: $(this).serialize() + "&perfilId=" + $("#perfilId").val(),
            beforeSend: function (xhr) {
            },
            success: function (data) {
                if (data !== null) {
                    console.log(data);
                    const contenido = asignarRespuestaAPublicacion(data);
                    $("#pregunta" + data.publicacionId).append(contenido);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
            }
        });

    });
}

function mostrarFormularioNuevaPregunta() {
    $('.nuevaPregunta').on("click", function () {
        const division = $(this).attr("data-division");
        $("#formPregunta" + division).show("fade");
    });
}

function ocultarFormularioNuevaPregunta() {
    $('.cancelarPregunta').on("click", function () {
        const division = $(this).attr("data-division");
        $("#formPregunta" + division).hide("fade");
    });
}

function asignarTituloAlForo() {
    $("a[data-toggle='tab']").on("click", function () {
        const id = $(this).attr("href");
        $(".bradcumbContent h2").text("");

        switch (id) {
            case "#foroDEA":
                $("#foroDI").removeClass("active");
                $("#foroDA").removeClass("active");
                $("#foroDTAI").removeClass("active");
                $("#foroIdiomas").removeClass("active");
                $("#foroUTEQ").removeClass("active");
                $("#foroDEA").addClass("active");
                $(".bradcumbContent h2").append("Foro Divisi\xf3n DEA");
                break;
            case "#foroDI":
                $("#foroDEA").removeClass("active");
                $("#foroDA").removeClass("active");
                $("#foroDTAI").removeClass("active");
                $("#foroIdiomas").removeClass("active");
                $("#foroUTEQ").removeClass("active");
                $("#foroDI").addClass("active");
                $(".bradcumbContent h2").append("Foro Divisi\xf3n DI");
                break;
            case "#foroDA":
                $("#foroDEA").removeClass("active");
                $("#foroDI").removeClass("active");
                $("#foroDTAI").removeClass("active");
                $("#foroIdiomas").removeClass("active");
                $("#foroUTEQ").removeClass("active");
                $("#foroDA").addClass("active");
                $(".bradcumbContent h2").append("Foro Divisi\xf3n DA");
                break;
            case "#foroDTAI":
                $("#foroDEA").removeClass("active");
                $("#foroDA").removeClass("active");
                $("#foroDI").removeClass("active");
                $("#foroIdiomas").removeClass("active");
                $("#foroUTEQ").removeClass("active");
                $("#foroDTAI").addClass("active");
                $(".bradcumbContent h2").append("Foro Divisi\xf3n DTAI");
                break;
            case "#foroIdiomas":
                $("#foroDEA").removeClass("active");
                $("#foroDA").removeClass("active");
                $("#foroDTAI").removeClass("active");
                $("#foroDI").removeClass("active");
                $("#foroUTEQ").removeClass("active");
                $("#foroIdiomas").addClass("active");
                $(".bradcumbContent h2").append("Foro Divisi\xf3n IDIOMAS");
                break;
            default :
                $("#foroDEA").removeClass("active");
                $("#foroDA").removeClass("active");
                $("#foroDTAI").removeClass("active");
                $("#foroIdiomas").removeClass("active");
                $("#foroDI").removeClass("active");
                $("#foroUTEQ").addClass("active");
                $(".bradcumbContent h2").append("Foro UTEQ");
                break;
        }

    });
}

function crearContenidoForos(data) {
    var contenido = "";

    for (var i = 0; i < data.length; i++) {
        contenido = "";
        contenido += '<div class="col-12">';
        contenido += '<div class="single-blog-post mb-50 wow fadeInUp" data-wow-delay="300ms">';
        contenido += '<div class="row" id="pregunta' + data[i][0].publicacionId + '">';
        for (var j = 0; j < data[i].length; j++) {
            contenido += '<div class="col-md-12">';
            contenido += '<img src="imagenes/' + data[i][j].foto + '" alt="" width="50" height="50" />';
            if (j === 0) {
                contenido += '<strong  class="post-meta">' + data[i][j].nombre + ': <strong style="color: #008000">' + data[i][j].contenido + '</strong></strong>';
            } else {
                contenido += '<strong  class="post-meta">' + data[i][j].nombre + ': <strong>' + data[i][j].contenido + '</strong></strong>';
            }

            contenido += '</div>';
        }
        contenido += '</div>';
        contenido += '<form class="submitRespuesta">';
        contenido += '<br>';
        contenido += '<div class="col-md-12">';
        contenido += '<div class="row">';
        contenido += '<div class="col-md-10">';
        contenido += '<input type="hidden" name="preguntaId" id="preguntaId" value="' + data[i][0].publicacionId + '">';
        contenido += '<input class="input100" type="text" id="respuesta" name="respuesta" placeholder="Escribe un comentario" required/>';
        contenido += '</div>';
        contenido += '<div class="col-md-2">';
        contenido += '<button type="submit" class="btn academy-btn btn-sm comentario">Publicar</button>';
        contenido += '</div>';
        contenido += '</div>';
        contenido += '</div>';
        contenido += '<br><br>';
        contenido += '</form>';
        contenido += '</div>';
        contenido += '</div>';

        switch (data[i][0].idDivisionPublicacion) {
            case 1:
                $("#afterDEA").after(contenido);
                break;
            case 2:
                $("#afterDI").after(contenido);
                break;
            case 3:
                $("#afterDA").after(contenido);
                break;
            case 4:
                $("#afterDTAI").after(contenido);
                break;
            case 5:
                $("#afterIdiomas").after(contenido);
                break;
            case 6:
                $("#afterUTEQ").after(contenido);
                break;
        }

    }





}

function crearContenidoPregunta(data = {}) {
    var contenido = "";
    contenido += '<div class="col-12">';
    contenido += '<div class="single-blog-post mb-50 wow fadeInUp" data-wow-delay="300ms">';
    contenido += '<div class="row" id="pregunta' + data.publicacionId + '">';
    contenido += '<div class="col-md-12">';
    contenido += '<img src="imagenes/' + data.foto + '" alt="" width="50" height="50" />';
    contenido += '<strong  class="post-meta">' + data.nombre + ': <strong style="color: #008000">' + data.contenido + '</strong></strong>';
    contenido += '</div>';
    contenido += '</div>';
    contenido += '<form id="formRespuestaUTEQ" class="respuestaForm">';
    contenido += '<br>';
    contenido += '<div class="col-md-12">';
    contenido += '<div class="row">';
    contenido += '<div class="col-md-10">';
    contenido += '<input type="hidden" name="preguntaId" id="preguntaId" value="' + data.publicacionId + '">';
    contenido += '<input class="input100" type="text" id="respuesta" name="respuesta" placeholder="Escribe un comentario" required/>';
    contenido += '</div>';
    contenido += '<div class="col-md-2">';
    contenido += '<button type="submit" class="btn academy-btn btn-sm comentario">Publicar</button>';
    contenido += '</div>';
    contenido += '</div>';
    contenido += '</div>';
    contenido += '<br><br>';
    contenido += '</form>';
    contenido += '</div>';
    contenido += '</div>';

    return contenido;

}

function asignarRespuestaAPublicacion(data = {}) {
    var contenido = "";
    contenido += '<div class="col-md-12">';
    contenido += '<img src="imagenes/' + data.foto + '" alt="" width="50" height="50" />';
    contenido += '<strong  class="post-meta">' + data.nombre + ': <strong>' + data.contenido + '</strong></strong>';
    contenido += '</div>';

    return contenido;

}

