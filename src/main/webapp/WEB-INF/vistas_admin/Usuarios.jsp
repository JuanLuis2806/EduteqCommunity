<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>EduTEQ COMMUNITY</title>
        <link rel="icon" href="img/bg-img/img.png">
        <link rel="stylesheet" href="style.css">
        <link href="css/TabUsuarios.css" rel="stylesheet" type="text/css">
        <link href="css/button_admin.css" rel="stylesheet" type="text/css">
        <link href="css/botones.css" rel="stylesheet" type="text/css">
        <link href="css/barra_paginado.css" rel="stylesheet" type="text/css">
        <link href="css/combobox.css" rel="stylesheet" type="text/css">
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
                                    <a href="index.jsp"><img src="img/bg-img/logo_eduteq.jpg" alt=""></a>          
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
                                        <li><a href="index_admin.jsp">Inicio</a></li>
                                        <li><a href="#">Principal</a>
                                            <div class="megamenu">
                                                <ul class="single-mega cn-col-4">
                                                    <li><a href="#inicio">Inicio</a></li>
                                                    <li><a href="#definicion">EduTEQ Community</a></li>
                                                    <li><a href="#registro">Registro</a></li>
                                                </ul>
                                                <ul class="single-mega cn-col-4">
                                                    <li><a href="#modulos">Servicios</a></li>
                                                    <li><a href="#divisiones">Carreras</a></li>
                                                </ul>
                                                <ul class="single-mega cn-col-4">
                                                </ul>
                                                <div class="single-mega cn-col-4">
                                                    <img src="img/bg-img/uteq.png" alt="">
                                                </div>
                                            </div>
                                        </li>
                                        <li><a href="Foro.jsp">Foro</a></li>
                                        <li><a href=".jsp">Eventos</a></li>
                                        <li><a href="Usuarios.jsp">Usuarios</a></li>
                                        <li><a href="mercado.jsp">Mercado UTEQ</a></li>
                                        <li><a href="">Sesión</a>
                                            <ul class="dropdown">
                                                <li><a href="micuenta.jsp">Mi cuenta</a></li>
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

        <div class="blog-area mt-50 section-padding-100">
            <div class="container">
                <div class="row">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">    
                                <div class="demo" style="text-align: right">
                                    <form class="form-search">
                                        <div class="input-group">
                                            <input class="form-control form-text" maxlength="200" placeholder="Buscar" size="20" type="text"/>
                                            <span class="input-group-btn"><button class="btn btn-primary"><i class="fa fa-search fa-lg">&nbsp;</i></button></span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12">
                        <div class="academy-blog-posts">
                            <div class="row jusjustify-content-center">
                                <div id="main-container">

                                    <table style="text-align: center">
                                        <thead>
                                            <tr>
                                                <th>FOTO</th>
                                                <th>Tipo de Usuario</th>
                                                <th>División</th>
                                                <th>Correo Electronico</th>
                                                <th>Matricula</th>
                                                <th>Contraseña</th>
                                                <th>Accion 1</th>
                                                <th>Accion 2</th>
                                                <th>Reactivar</th>

                                            </tr>
                                        </thead>

                                        <tr>
                                            <td></td>
                                            <td>ESTUDIANTE</td>
                                            <td>Tecnologias de la Información</td>
                                            <td>2015348215@uteq.edu.mx</td>
                                            <td>2015348215</td>
                                            <td>Pako3011</td>
                                            <td><button type="submit" class="btn-bootstrap"><img src="img/iconos-usuario/delete1.png"/></button>
                                            <button type="submit" class="btn-bootstrap-sus"><img src="img/iconos-usuario/suspendido1.png"/></button>
                                            <button type="submit" class="btn-bootstrap-activar"><img src="img/iconos-usuario/cheque.png"/></td>
                                            <td><button type="submit" class="btn-bootstrap-sus"><img src="img/iconos-usuario/suspendido1.png"/></button></td>
                                            <td><button type="submit" class="btn-bootstrap-activar"><img src="img/iconos-usuario/cheque.png"/></button></td>

                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>ESTUDIANTE</td>
                                            <td>Tecnologias de la Información</td>
                                            <td>2015348215@uteq.edu.mx</td>
                                            <td>2015348215</td>
                                            <td>Pako3011</td>
                                            <td><button type="submit" class="btn-bootstrap"><img src="img/iconos-usuario/delete1.png"/></button></td>
                                            <td><button type="submit" class="btn-bootstrap-sus"><img src="img/iconos-usuario/suspendido1.png"/></button></td>
                                            <td><button type="submit" class="btn-bootstrap-activar"><img src="img/iconos-usuario/cheque.png"/></button></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>ESTUDIANTE</td>
                                            <td>Tecnologias de la Información</td>
                                            <td>2015348215@uteq.edu.mx</td>
                                            <td>2015348215</td>
                                            <td>Pako3011</td>
                                            <td><button type="submit" class="btn-bootstrap"><img src="img/iconos-usuario/delete1.png"/>Eliminar</button></td>
                                            <td><button type="submit" class="btn-bootstrap-sus"><img src="img/iconos-usuario/suspendido1.png"/>Suspender</button></td>
                                            <td><button type="submit" class="btn-bootstrap-activar"><img src="img/iconos-usuario/cheque.png"/>Activar</button></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>ESTUDIANTE</td>
                                            <td>Tecnologias de la Información</td>
                                            <td>2015348215@uteq.edu.mx</td>
                                            <td>2015348215</td>
                                            <td>Pako3011</td>
                                            <td><button type="submit" class="btn-bootstrap"><img src="img/iconos-usuario/delete1.png"/>Eliminar</button></td>
                                            <td><button type="submit" class="btn-bootstrap-sus"><img src="img/iconos-usuario/suspendido1.png"/>Suspender</button></td>
                                            <td><button type="submit" class="btn-bootstrap-activar"><img src="img/iconos-usuario/cheque.png"/>Activar</button></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="col-12">    
                                <div class="center">
                                    <div class="pagination">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12">    
                        <div class="center">
                            <div class="pagination">
                                <a href="#">&laquo;</a>
                                <a href="#">1</a>
                                <a href="#" class="active">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                                <a href="#">6</a>
                                <a href="#">&raquo;</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br><br><br>
        <div class="row">
            <div class="col-12">
                <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms" id="divisiones">
                    <h3>Carreras</h3>
                </div>
            </div>
        </div>
        <div class="partner-area section-padding-0-100">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="partners-logo d-flex align-items-center justify-content-between flex-wrap">
                            <a align="center" href="#"><img src="img/iconos/ordenador.png" alt=""><img src="img/clients-img/TF_TecnoInformacion.png" alt=""></a>
                            <a  align="center" href="#"><img src="img/iconos/mecanica.png"><img src="img/clients-img/TF_Mecanica.png" alt=""></a>
                            <a align="center" href="#"><img src="img/iconos/circuito-electronico.png"><img src="img/clients-img/TF_Mecatronica.png" alt=""></a>
                            <a align="center" href="#"><img src="img/iconos/ventas.png"><img src="img/clients-img/TF_Mercadotecnia.png" alt=""></a>
                            <a align="center"href="#"><img src="img/iconos/devolucion-de-dinero.png"><img src="img/clients-img/TF_Administracion.png" alt=""></a>
                        </div>
                    </div><br><br><br><br>
                </div>
            </div><br><br>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="partners-logo d-flex align-items-center justify-content-between flex-wrap">
                            <a align="center" href="#"><img src="img/iconos/idioma.png" alt=""><img src="img/clients-img/TF_Idiomas.png" alt=""></a>
                            <a  align="center" href="#"><img src="img/iconos/engrane.png"><img src="img/clients-img/TF_MantIndustrial.png" alt=""></a>
                            <a align="center" href="#"><img src="img/iconos/logistica.png"><img src="img/clients-img/TF_Logistica.png" alt=""></a>
                            <a align="center" href="#"><img src="img/iconos/negocios.png"><img src="img/clients-img/TF_DesNegocios.png" alt=""></a>
                            <a align="center"href="#"><img src="img/iconos/quimica.png"><img src="img/clients-img/TF_QuimicaAmb.png" alt=""></a>
                            <a align="center"href="#"><img src="img/iconos/nanotecnologia.png"><img src="img/clients-img/TF_Nanotecnologia.png" alt=""></a>
                        </div>
                    </div><br><br>
                </div>
            </div>
        </div>
        <footer class="footer-area">
            <div class="main-footer-area section-padding-100-0">
                <div class="container">
                    <div class="row">
                        <!-- Footer Widget Area -->
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
                            <p>
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados para los creadores del sitio.  <a href="" target="_blank"></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <script src="js/bootstrap/popper.min.js"></script>
        <script src="js/bootstrap/bootstrap.min.js"></script>
        <script src="js/plugins/plugins.js"></script>
        <script src="js/active.js"></script>
    </body>
</html>