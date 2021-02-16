<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
    <title>EduTEQ COMMUNITY</title>
    <link rel="icon" href="img/bg-img/img.png">
    <link rel="stylesheet" href="style.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<br>
<br>
<br>
<div id="msg-success" class="alert alert-success" style="width: 500px; height: 70px; float: right; position:relative; margin: 10px 0 0 10px; display: none;">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<div class="alert alert-danger" id="msg-danger" style="width: 500px; height: 70px; float: right; position:relative; margin: 10px 0 0 10px; display: none;">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<div class="alert alert-warning" id="msg-warning" style="width: 500px; height: 70px; float: right; position:relative; margin: 10px 0 0 10px; display: none;">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<hr>
<div class="container bootstrap snippet">
    <div class="row">
        <br>
        <br>
        <div class="col-sm-10"><h3>Mi Cuenta</h3></div>
    </div>
    <div class="row">
        <div class="col-sm-3"><!--left col-->
            <div class="text-center">
                <img src="imagenes/${perfil.fotoPerfil}" class="avatar img-circle img-thumbnail" alt="avatar" id="imagen">
                <input type="file" id="foto" name="foto" class="text-center center-block file-upload">
            </div></hr><br>
        </div>
        <div class="col-sm-9">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#perfil">Datos del Perfil</a></li>
                <li class="active"><a data-toggle="tab" href="#contrasena">Cambiar Contraseña</a></li>
            </ul>
            <div class="tab-content">
                <div id="perfil" class="tab-pane active"><br>
                    <hr>
                    <form class="form" id="perfilForm">
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="nombre"><h4>Nombre</h4></label>
                                <input type="text" class="form-control" name="nombre" id="nombre" value="${perfil.nombre}"
                                       placeholder="Escribe Nombre" title="Debes llenar este campo">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="apellidos"><h4>Apellidos</h4></label>
                                <input type="text" class="form-control" name="apellidos" id="apellidos" value="${perfil.apellidos}"
                                       placeholder="Escribe Apellidos" title="Debes llenar este campo">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="alias"><h4>Alias</h4></label>
                                <input type="text" class="form-control" name="alias" id="alias" value="${perfil.alias}"
                                       placeholder="Escribe un Alias" title="Debes llenar este campo">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="pasatiempos"><h4>Pasatiempos</h4></label>
                                <input type="text" class="form-control" name="pasatiempos" id="pasatiempos" value="${perfil.pasatiempos}"
                                       placeholder="Escribe tus pasatiempos" title="Debes llenar este campo">
                            </div>
                        </div>
                        <input type="hidden" id="usuarioId" name="usuarioId" value="${usuario.id}"/>
                        <input type="hidden" id="perfilId" name="perfilId" value="${perfil.id}"/>  
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="correo"><h4>Correo Electronico</h4></label>
                                <input type="text" class="form-control" name="correo" id="correo" value="${usuario.correo}" 
                                       placeholder="Dirección Electronica" title="Debes llenar este campo" disabled="disabled">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="fecha"><h4>Fecha de nacimiento</h4></label>
                                <input  class="form-control" type="date" name="fecha" id="fecha" value="${perfil.fechaNacimiento}"
                                        title="Debes llenar este campo">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="sexo"><h4>Sexo</h4></label>
                                <input type="hidden" id="sexoId" value="${perfil.sexo}"/>
                                <select class="select-css" id="sexo" name="sexo">
                                    <option>Selecciona</option>
                                    <option value="Hombre">Hombre</option>
                                    <option value="Mujer">Mujer</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="edad"><h4>Edad</h4></label>
                                <input type="number" class="form-control" name="edad" id="edad" value="${perfil.edad}"
                                       placeholder="Ingresa tu edad" title="Debes llenar este campo">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="estado"><h4>Estado</h4></label>
                                <input type="hidden" id="estadoId" value="${perfil.idEstado.id}"/>
                                <select class="select-css" id="estados" name="estados">
                                    <c:forEach var="estado" items="${estados}">
                                        <option value="${estado.id}">${estado.nombre}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Guardar</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div id="contrasena" class="container tab-pane fade"><br>
                    <hr>
                    <form class="form" id="cambiarContrasena">
                        <div class="form-group">
                            <div class="col-xs-8">
                                <label for="contrasena"><h4>Contraseña Antigua</h4></label>
                                <input type="password" class="form-control" name="password" id="password"
                                       placeholder="Contrasena" title="Debes llenar este campo" required maxlength="16" minlength="8"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="nueva_contrasena"><h4>Nueva Contraseña</h4></label>
                                <input type="password" class="form-control" name="nueva_contrasena" id="nueva_contrasena" placeholder="Escribe una contraseña nueva" 
                                       title="Debes llenar este campo" maxlength="16" minlength="8">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="confirmar_contrasena"><h4>Confirmar Contraseña</h4></label>
                                <input type="password" class="form-control" name="confirmar_contrasena" id="confirmar_contrasena" 
                                       placeholder="Confirmar Contraseña" title="Debes llenar este campo" required maxlength="16" minlength="8">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Guardar</button>
                            </div>
                        </div>
                    </form>
                </div>
                <hr>
            </div><br><br>
        </div>
    </div>
</div>
</div>
<style>
    .select-css {
        display: block;
        font-size: 16px;
        font-family: 'Arial', sans-serif;
        font-weight: 400;
        color: #444;
        line-height: 1.3;
        padding: .4em 1.4em .3em .8em;
        width: 400px;
        max-width: 100%; 
        box-sizing: border-box;
        margin: 0;
        border: 1px solid #aaa;
        box-shadow: 0 1px 0 1px rgba(0,0,0,.03);
        border-radius: .3em;
        -moz-appearance: none;
        -webkit-appearance: none;
        appearance: none;
        background-color: #fff;
        background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23007CB2%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E'),
            linear-gradient(to bottom, #ffffff 0%,#f7f7f7 100%);
        background-repeat: no-repeat, repeat;
        background-position: right .7em top 50%, 0 0;
        background-size: .65em auto, 100%;
    }
    .select-css::-ms-expand {
        display: none;
    }
    .select-css:hover {
        border-color: #888;
    }
    .select-css:focus {
        border-color: #aaa;
        box-shadow: 0 0 1px 3px rgba(59, 153, 252, .7);
        box-shadow: 0 0 0 3px -moz-mac-focusring;
        color: #222; 
        outline: none;
    }
    .select-css option {
        font-weight:normal;
    }
</style>
<br>
<br>
<br>
<br>
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<script src="vendor/animsition/js/animsition.min.js"></script>
<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/select2/select2.min.js"></script>
<script src="vendor/daterangepicker/moment.min.js"></script>
<script src="vendor/daterangepicker/daterangepicker.js"></script>
<script src="vendor/countdowntime/countdowntime.js"></script>
<script src="js/main.js"></script>
<script src="js/mi-cuenta-admin.js"></script>