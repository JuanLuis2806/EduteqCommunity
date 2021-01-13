<%-- 
    Document   : index
    Created on : 10/10/2020, 11:16:20 AM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
 
    <title>EduTEQ COMMUNITY</title>

    <!-- Favicon -->
    <link rel="icon" href="img/bg-img/img.png">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="style.css">
    </head>
    <body>
        
         <!-- ##### Preloader ##### -->
    <div id="preloader">
        <i class="circle-preloader"></i>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
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

        <!-- Navbar Area -->
        <div class="academy-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="academyNav">

                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="index.jsp">Inicio</a></li>
                                  
                                    <li><a href="#">Pagina Principal</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#inicio">Inicio</a></li>
                                                <li><a href="#definicion">EduTEQ Community</a></li>
                                                <li><a href="#registro">Registro</a></li>
                                                
                                            </ul>
                                                  <ul class="single-mega cn-col-4">
                                                
                                                <li><a href="#modulos">Servicios</a></li>
                                                <li><a href="#noticias">Noticias</a></li>
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
                            <!-- Nav End -->
                        </div>

                        <!-- Calling Info -->
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
    <!-- ##### Header Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area" id="inicio">
        <div class="hero-slides owl-carousel">

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/inicio-2.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                <h4 data-animation="fadeInUp" data-delay="100ms">Esta plataforma es para ti</h4>
                                <h2 data-animation="fadeInUp" data-delay="400ms">¡Bienvenido <br>EduTEQ Community!</h2>
                                <a href="#definicion" class="btn academy-btn" data-animation="fadeInUp" data-delay="700ms">Leer más</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/1.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                 <h4 data-animation="fadeInUp" data-delay="100ms">Esta plataforma es para ti</h4>
                                 <h2 data-animation="fadeInUp" data-delay="400ms">¿TienesProblemas para entender Temas?</h2><br>
                                <a href="#modulos" class="btn academy-btn" data-animation="fadeInUp" data-delay="700ms">Leer más</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-hero-slide bg-img" style="background-image: url(img/bg-img/4.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="hero-slides-content">
                                 <h4 data-animation="fadeInUp" data-delay="100ms">Esta plataforma es pensada para ti</h4>
                                 <h2 data-animation="fadeInUp" data-delay="400ms">Con la ayuda de los estudiantes y profesores  de la UTEQ</h2><br>
                                <a href="#modulos" class="btn academy-btn" data-animation="fadeInUp" data-delay="700ms">Leer más</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->

    <!-- ##### Top Feature Area Start ##### -->
    <div class="top-features-area wow fadeInUp" data-wow-delay="300ms">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="features-content">
                        <div class="row no-gutters">
                            <!-- Single Top Features -->
                            <div class="col-12 col-md-4">
                                <div class="single-top-features d-flex align-items-center justify-content-center">
                                    <i><img src="img/bg-img/estudiante.png"></i>
                                    <h5>1,400 Estudiantes registrados</h5>
                                </div>
                            </div>
                            <!-- Single Top Features -->
                            <div class="col-12 col-md-4">
                                <div class="single-top-features d-flex align-items-center justify-content-center">
                                   <i><img src="img/bg-img/profesor.png"></i>
                                    <h5>180 Profesores registrados</h5>
                                </div>
                            </div>
                            <!-- Single Top Features -->
                            <div class="col-12 col-md-4">
                                <div class="single-top-features d-flex align-items-center justify-content-center">
                                      <i><img src="img/bg-img/alertas.png"></i>
                                    <h5>1,500 Publicaciones</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Top Feature Area End ##### -->

    <!-- ##### Course Area Start ##### -->
    
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Blog Area Start ##### -->
    <div class="blog-area mt-50 section-padding-100">
        <div class="breadcumb-area bg-img" style="background-image: url(img/bg-img/jpg);">
        <div class="bradcumbContent">
          <h2>EduTEQ Community</h2>
        </div>
    </div>
 
        
        
        </div>
    
    <section class="about-us-area mt-50 section-padding-100 " id="definicion">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                        <span>Descripción</span>
                        <h3>¿Para que sirve?</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-6 wow fadeInUp" data-wow-delay="400ms">
                    <p>Es una plataforma diseñada para la comunidad estudiantil con el fin de poder ayudar y resolver los problemas academicos aprovechando los recurso de la comunidad.</p>
                </div>
                <div class="col-12 col-md-6 wow fadeInUp" data-wow-delay="500ms">
                    <p>En este sitio podrás realizar distintas actividades como publicar preguntas , articulos enterarte de lo que pasa en tu Universidad.</p>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="about-slides owl-carousel mt-100 wow fadeInUp" data-wow-delay="600ms">
                        <img src="img/inicio/desc1.jpg" alt="">
                        <img src="img/inicio/desc2.jpg" alt="">
                        <img src="img/inicio/desc3.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    
     <div class="call-to-action-area" id="registro">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="cta-content d-flex align-items-center justify-content-between flex-wrap">
                        <h3>¡Se parte de  EduTEQ Community! </h3><img src="img/iconos/uteq_opt.png" alt=""> <a href="Registro.jsp" class="btn academy-btn">Registrar</a>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    
    
    <div class="blog-area mt-50 section-padding-100" id="modulos">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                       
                        <h3>Servicios</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-12">
                    <div class="academy-blog-posts">
                        <div class="row">

                            <!-- Single Blog Start -->
                         <div class="single-blog-post mb-50 wow fadeInUp col-sm-4" data-wow-delay="300ms">
                                    <!-- Post Thumb -->
                                    <div  align="center" class="blog-post-thumb mb-50 ">
                                        <img src="img/iconos/foro3.png" alt="">
                                    </div>
                                    <!-- Post Title -->
                                    <a align="center" href="Foro.jsp" class="post-title">Foro</a><br>
                                    <!-- Post Meta -->
                                   
                                    <!-- Post Excerpt -->
                                      <p>Podrás publicar acerca de las dudas que tengas respecto a temas academicos y tambien podras comentar las publicaciones que realicen otros usuarios.</p>
                                    <!-- Read More btn -->
                                    <a align="center" href="Foro.jsp" class="btn academy-btn btn-sm mt-15">Navegar</a>
                         </div><br>
                            
                            
                            
                            
                            
                                <div class="single-blog-post mb-50 wow fadeInUp col-sm-4" data-wow-delay="300ms">
                                    <!-- Post Thumb -->
                                    <div align="center" class="blog-post-thumb mb-50 ">
                                        <img src="img/iconos/calendario2.png" alt="">
                                    </div>
                                    <!-- Post Title -->
                                    <a align="center" href="Eventos.jsp" class="post-title">Eventos y Cursos</a><br>
                                    <!-- Post Meta -->
                                   
                                   <!-- Post Excerpt -->
                                    <p>Podrás consultar acerca de todos los eventos proximos que se realizarán en la UTEQ de las distintas divisiones y a su vez enterarte de los cursos que imparten en la Universidad.</p>
                                    <!-- Read More btn -->
                                    <a  href="Eventos.jsp" class="btn academy-btn btn-sm mt-15 ">Navegar</a>
                                </div>
                            
                         <br>
                            
                            
                            
                                <div class="single-blog-post mb-50 wow fadeInUp col-sm-4" data-wow-delay="300ms">
                                    <!-- Post Thumb -->
                                    <div align="center" class="blog-post-thumb mb-50 ">
                                        <img src="img/iconos/mercado2.png" alt="">
                                    </div>
                                    <!-- Post Title -->
                                    <a align="center" href="mercado.jsp" class="post-title">Mercado</a><br>
                                    <!-- Post Meta -->
                                  
                                    <!-- Post Excerpt -->
                                  <p>Diseñado para que los estudiantes publiquen articulos que quieran vender como libros, calculadoras , material electronico etc.</p>
                                    <!-- Read More btn -->
                                    <a  align="center" href="mercado.jsp" class="btn academy-btn btn-sm mt-15">Navegar</a>
                                </div>
                         
                            </div>
                        
                        
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>


    <br><br><br>
    <!-- ##### Top Popular Courses Area End ##### -->
 <section class="teachers-area section-padding-0-100"  id="noticias">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center mx-auto wow fadeInUp" data-wow-delay="300ms">
                       
                        <h3>Noticias</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <!-- Single Teachers -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-teachers-area text-center mb-100 wow fadeInUp" data-wow-delay="400ms">
                        <!-- Thumbnail -->
                        <div class="teachers-thumbnail">
                            <img src="img/noticias/13.png" alt="">
                        </div>
                        <!-- Meta Info -->
                        <div class="teachers-info mt-30"><br><br>
                            <h5>Capacitación de CIDESI</h5>
                            <span align="left">Alrededor de 80 profesores de la Universidad Tecnológica de Querétaro fueron capacitados para utilizar la plataforma SMART-UTEQ, específicamente en el módulo de Inventario de Capital Humano; dicho software fue desarrolla . </span>
                        </div>
                    </div>
                </div>
                <!-- Single Teachers -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-teachers-area text-center mb-100 wow fadeInUp" data-wow-delay="500ms">
                        <!-- Thumbnail -->
                        <div class="teachers-thumbnail">
                            <img src="img/noticias/not2.jpg" alt="">
                        </div>
                        <!-- Meta Info -->
                        <div class="teachers-info mt-30">
                            <h5>Reunión de alumnos y Profesores</h5>
                            <span>Más de 200 jefes de grupo de la Universidad Tecnológica de Querétaro – de los turnos matutino y vespertino – se reunieron de forma virtual con autoridades de esta institución, espacio en el que se hizo un llamado.</span>
                        </div>
                    </div>
                </div>
                <!-- Single Teachers -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-teachers-area text-center mb-100 wow fadeInUp" data-wow-delay="600ms">
                        <!-- Thumbnail -->
                        <div class="teachers-thumbnail">
                            <img src="img/noticias/not3.png" alt="">
                        </div>
                        <!-- Meta Info -->
                        <div class="teachers-info mt-30">
                            <h5>Diplomado en Tutoría de la UTEQ</h5>
                            <span>De manera virtual, inició el Diplomado en Tutoría de la UTEQ, con la participación de 22 profesores que conforman a la cuarta generación, quienes se capacitarán durante 6 meses con el objetivo de contar con conocimientos.</span>
                        </div>
                    </div>
                </div>
                <!-- Single Teachers -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="single-teachers-area text-center mb-100 wow fadeInUp" data-wow-delay="700ms">
                        <!-- Thumbnail -->
                        <div class="teachers-thumbnail">
                            <img src="img/noticias/not4.png" alt="">
                        </div>
                        <!-- Meta Info -->
                        <div class="teachers-info mt-30">
                            <h5>Platica con alumnos sobre la situación de la Pandemia</h5>
                            <span>Como parte de las colaboraciones que la Universidad Tecnológica de Querétaro (a través del Creativity and Innovation Center) desarrolla con su socio estratégico KIT HUB, fue realizada la plática virtual “Imágenes para consientizar.</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Partner Area Start ##### -->
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
    <!-- ##### Partner Area End ##### -->

    <!-- ##### CTA Area Start ##### -->
  
    <!-- ##### CTA Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
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
                    <!-- Footer Widget Area -->
                  
                    <!-- Footer Widget Area -->
                
                    <!-- Footer Widget Area -->
                    
                </div>
            </div>
        </div>
        <div class="bottom-footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados para los creadores del sitio.  <a href="" target="_blank"></a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
        
        
      
    </body>
</html>
