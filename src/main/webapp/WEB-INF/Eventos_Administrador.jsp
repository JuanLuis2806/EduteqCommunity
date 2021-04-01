<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>EduTEQ COMMUNITY</title>
        <link rel="icon" href="img/bg-img/birrete.png">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/comentario.css">
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="css/utiladmin.css">
        <link rel="stylesheet" type="text/css" href="css/mainadmin.css">
        <link rel="stylesheet" href="css/slider.css">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script><script type="text/javascript" src="js/Slider.js"></script>

    </head>
    <body>
        <div id="preloader">
            <i class="circle-preloader"></i>
        </div>
        <header class="header-area">
            <div class="top-header">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-12 h-100">
                            <div class="header-content h-100 d-flex align-items-center justify-content-between">
                                <div class="academy-logo">
                                    <a href="index"><img src="img/bg-img/logo_eduteq.jpg" alt=""></a>
                                </div>
                                <div class="login-content">
                                    <a href="login">Inicio de Sesión/</a>
                                    <a href="registro">Registrar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="academy-main-menu">
                <div class="classy-nav-container breakpoint-off">
                    <div class="container">
                        <nav class="classy-navbar justify-content-between" id="academyNav">
                            <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>
                            <div class="classy-menu">
                                <div class="classycloseIcon">
                                    <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                                </div>
                                <div class="classynav">
                                    <ul>
                                        <li><a href="index">Pagina Principal</a>
                                        <li><a href="foro">Foro</a></li>
                                        <li><a href="eventos">Eventos</a></li>
                                        <li><a href="mercado">Mercado UTEQ</a></li>
                                        <li id='usuarioTab'><a href="admin-usuarios">USUARIOS</a></li>
                                        <li><a href="">Sesión</a>
                                            <ul class="dropdown">
                                                <li><a href="principal-perfil">Mi cuenta</a></li>
                                                <li><a href="cerrar-sesion">Salir</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="calling-info">
                                <div class="call-center">
                                    <a>  <img src="img/bg-img/nuevopie2.png"></a>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <div class="breadcumb-area bg-img" style="background-image: url(img/foro/fondo_barra2.jpg);">
            <div class="bradcumbContent" style="text-align: center">
                <h2>Eventos UTEQ</h2>
            </div>
        </div>
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
        <div class="blog-area mt-50 section-padding-100">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-12">
                        <div class="academy-blog-posts" style="text-align: center">
                            <div class="row">
                                <strong class="login100-form-title p-b-32 text-center">
                                    Registrar un nuevo Evento
                                </strong>
                                <form id="formEventos" class="login100-form validate-form flex-sb flex-w">
                                    <input type="hidden" id="idUsuario" name="idUsuario" value="${perfil.idUsuario.id}"/>
                                    <div class="col-sm-12">
                                        <div class="row"> 

                                            <div class="col-xs-12 col-sm-6 col-md-6">
                                                <strong class="txt1 p-b-11">
                                                    Nombre del Evento
                                                </strong>
                                                <div class="wrap-input100 validate-input m-b-36" data-validate = "Este campo es requerido">
                                                    <input class="input100" type="text" name="nombre" id="nombre" >
                                                    <span class="focus-input100"></span>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-6">
                                                <strong class="txt1 p-b-11">
                                                    Tipo de Evento
                                                </strong>
                                                <div class="wrap-input100 validate-input m-b-16" data-validate = "Este campo es requerido" align="center">
                                                    <select class="select-css" id="tipoEvento" name="tipoEvento">
                                                        <c:forEach var="tipoEvento" items="${tipoEventos}">
                                                            <option value="${tipoEvento.id}">${tipoEvento.tipoEvento}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-6 col-md-6">
                                                <strong class="txt1 p-b-11">
                                                    Fecha de Inicio
                                                </strong>
                                                <div class="wrap-input100 validate-input m-b-36" data-validate = "Este campo es requerido">
                                                    <input class="input100" type="date" name="fechaInicio" id="fechaInicio" placeholder="Fecha de Inicio" required="fecha">
                                                    <span class="focus-input100"></span>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-6">
                                                <strong class="txt1 p-b-11">
                                                    Fecha final
                                                </strong>
                                                <div class="wrap-input100 validate-input m-b-36" data-validate = "Este campo es requerido">
                                                    <input class="input100" type="date" name="fechaFinal" id="fechaFinal" placeholder="Fecha Final" required="fecha">
                                                    <span class="focus-input100"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="col-xs-12 col-sm-6 col-md-6">
                                                <strong class="txt1 p-b-11">
                                                    Descripción del Evento
                                                </strong>
                                                <div class="wrap-input100 validate-input m-b-36" data-validate = "Este campo es requerido">
                                                    <input class="input100" type="text" name="descripcion" id="descripcion" >
                                                    <span class="focus-input100"></span>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-6 col-md-6">
                                                <strong class="txt1 p-b-11">
                                                    Imagen del Evento
                                                </strong>
                                                <div class="wrap-input100 validate-input m-b-36" data-validate = "Este campo es requerido" align="center">
                                                    <input  type="file" name="imagen" id="imagen" />
                                                    <span class="focus-input100"></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <div class="row">
                                            <div class="container-login100-form-btn align-content-center" style="justify-content: center">
                                                <button class="login100-form-btn">
                                                    Crear Evento
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="container">
            <div class="row">
                <!-- Carousel -->
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <c:forEach var="evento" items="${eventos}">
                            <c:if test = "${evento.id == 1}">
                                <div class="item active">
                                </c:if>
                                <c:if test = "${evento.id != 1}">
                                    <div class="item">
                                    </c:if>
                                    <img src="img/noticias/${evento.imagen}" alt="First slide">
                                    <!-- Static Header -->
                                    <div class="header-text hidden-xs">
                                        <div class="col-md-12 text-center">
                                            <h2>
                                                <span><strong>${evento.nombre}</strong></span>
                                            </h2>
                                            <br>
                                        </div>
                                    </div>
                                    <div class="footer-text hidden-xs">
                                        <div class="col-md-12 text-left">
                                            <strong><h2>${evento.descripcion}</h2></strong>
                                            <br>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div><!-- /carousel -->
                </div>
            </div><br><br><br><br><br>
            <footer class="footer-area">
                <div class="main-footer-area section-padding-100-0">
                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-sm-6 col-lg-3">
                                <div class="footer-widget mb-100">
                                    <div class="widget-title">
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="bottom-footer-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados para los creadores del sitio.  <a href="" target="_blank"></a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
            <script src="js/bootstrap/popper.min.js"></script>
            <script src="js/plugins/plugins.js"></script>
            <script src="js/active.js"></script>
            <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script><script  src="js/Slider.js"></script>
            <script src="js/eventos.js"></script>
    </body>
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
</html>