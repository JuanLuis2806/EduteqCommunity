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
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="css/utiladmin.css">
        <link rel="stylesheet" type="text/css" href="css/mainadmin.css">
        <link rel="stylesheet" type="text/css" href="css/combobox.css">
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

        <header class="header-area">
            <div class="top-header">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-12 h-100">
                            <div class="header-content h-100 d-flex align-items-center justify-content-between">
                                <div class="academy-logo">
                                    <a href="index.jsp"><img src="img/bg-img/logo_eduteq.jpg" alt=""></a>
                                </div>
                                <div class="login-content">
                                    <a href="Login.jsp">Inicio de Sesión/</a>
                                    <a href="Registro.jsp">Registrar</a>

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


                                        <li><a href="index.jsp">Pagina Principal</a>


                                        <li><a href="Foro.jsp">Foro</a></li>
                                        <li><a href="Eventos.jsp">Eventos</a></li>
                                        <li><a href="mercado.jsp">Mercado UTEQ</a></li>
                                        <li><a href="">Sesión</a>
                                            <ul class="dropdown">
                                                <li><a href="micuenta.jsp">Mi cuenta</a></li>
                                                <li><a href="miperfil.jsp">Mi Perfil</a></li>
                                                <li><a href="">Salir</a></li>
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
        <div class="blog-area mt-50 section-padding-100">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-12">
                        <div class="academy-blog-posts" style="text-align: center">
                            <div class="row">


                                <form class="login100-form validate-form flex-sb flex-w">
                                    <span class="login100-form-title p-b-32">
                                        Formulario para Evento
                                    </span>

                                    <span class="txt1 p-b-11">
                                        Nombre del Evento
                                    </span>
                                    <div class="wrap-input100 validate-input m-b-36" data-validate = "Este campo es requerido">
                                        <input class="input100" type="text" name="evento" id="evento" >
                                        <span class="focus-input100"></span>
                                    </div>

                                    <span class="txt1 p-b-11">
                                        Tipo de Evento
                                    </span>
                                    <div class="wrap-input100 validate-input m-b-36" data-validate = "Este campo es requerido">
                                        <select class="caja" id="estado" name="TipoEvento">
                                            <c:forEach var="tipo_evento" items="${tipoEvento}">
                                                <option value="${tipoEvento.id}">${tipoEvento.tipo_evento}</option>
                                            </c:forEach>
                                        </select>
                                        <span class="focus-input100"></span>
                                    </div>
                                    <br><br>
                                    <span class="txt1 p-b-11">
                                        Descripción del Evento
                                    </span>
                                    <div class="wrap-input100 validate-input m-b-36" data-validate = "Este campo es requerido">

                                        <input class="input100" type="text" name="Desevento" >

                                        <span class="focus-input100"></span>
                                    </div>

                                    <br>


                                    <span class="txt1 p-b-11">
                                        Imagen del Evento
                                    </span>
                                    <div class="wrap-input100 validate-input m-b-36" data-validate = "Este campo es requerido">

                                        <input  type="file" name="imagen" />

                                        <span class="focus-input100"></span>
                                    </div>

                                    <br>
                                    <div class="container-login100-form-btn">
                                        <button class="login100-form-btn">
                                            Crear Evento
                                        </button>
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
                        <div class="item active">
                            <img src="img/noticias/13.png" alt="First slide">
                            <!-- Static Header -->
                            <div class="header-text hidden-xs">
                                <div class="col-md-12 text-center">
                                    <h2>
                                        <span><strong>Platica con alumnos sobre la situación de la Pandemia</strong></span>
                                    </h2>
                                    <br>

                                </div>
                            </div>
                            <div class="footer-text hidden-xs">
                                <div class="col-md-12 text-left">


                                    <strong><h2>Como parte de las colaboraciones que la Universidad Tecnológica de Querétaro (a través del Creativity and Innovation Center) desarrolla con su socio estratégico 
                                            KIT HUB, fue realizada la plática virtual ?Imágenes para consientizar .</h2></strong>

                                    <br>

                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/noticias/not2.jpg" alt="First slide">
                            <!-- Static Header -->
                            <div class="header-text hidden-xs">
                                <div class="col-md-12 text-center">
                                    <h2>
                                        <span><strong>Reunión de alumnos y Profesores</strong></span>
                                    </h2>
                                    <br>

                                </div>
                            </div>
                            <div class="footer-text hidden-xs">
                                <div class="col-md-12 text-left">


                                    <strong><h2>Más de 200 jefes de grupo de la Universidad Tecnológica de Querétaro ? de los turnos matutino y vespertino ? se reunieron de 
                                            forma virtual con autoridades de esta institución, espacio en el que se hizo un llamado..</h2></strong>

                                    <br>

                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/noticias/not3.png" alt="Third slide">

                            <div class="header-text hidden-xs">
                                <div class="col-md-12 text-center">
                                    <h2>
                                        <span><strong>Diplomado en Tutoría de la UTEQ</strong></span>
                                    </h2>
                                    <br>

                                </div>
                            </div>
                            <div class="footer-text hidden-xs">
                                <div class="col-md-12 text-left">


                                    <strong><h2>De manera virtual, inició el Diplomado en Tutoría de la UTEQ, con la participación de 22 profesores que conforman a la cuarta generación, quienes se capacitarán 
                                            durante 6 meses con el objetivo de contar con conocimientos.</h2></strong>

                                    <br>

                                </div>
                            </div>
                        </div>
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

        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/bootstrap/popper.min.js"></script>
        <script src="js/plugins/plugins.js"></script>
        <script src="js/active.js"></script>
        <script src="js/main.js"></script>


        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script><script  src="js/Slider.js"></script>



    </body>

</html>