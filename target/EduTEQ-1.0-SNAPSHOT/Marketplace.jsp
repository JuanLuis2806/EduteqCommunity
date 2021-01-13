<%-- 
    Document   : index
    Created on : 10/10/2020, 11:16:20 AM
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>


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
        <link rel="icon" href="img/bg-img/birrete.png">

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
                                    <a href="index.jsp"><img src="img/bg-img/birrete.png" alt="">EduTEQ Community</a>
                                </div>
                                <div class="login-content">
                                    <a href="#">Registro / Inicio de Sesión</a>
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


                                        <li><a href="index.jsp">Pagina Principal</a>

                                        </li>
                                        <li><a href="Foro.jsp">Foro</a></li>
                                        <li><a href="course.html">Eventos</a></li>
                                        <li><a href="contact.html">Mercado UTEQ</a></li>
                                        <li><a href="index.html">Sesión</a>
                                            <ul class="dropdown">
                                                <li><a href="index.html">Mi cuenta</a></li>
                                                <li><a href="index.html">Salir</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <!-- Nav End -->
                            </div>

                            <!-- Calling Info -->
                            <div class="calling-info">
                                <div class="call-center">
                                    <a>  <img src="img/bg-img/birrete.png"> <span>EduTEQ Community</span></a>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- ##### Header Area End ##### -->

        <!-- ##### Breadcumb Area Start ##### -->
        <div class="breadcumb-area bg-img" style="background-image: url(img/foro/foro3.jpg);">
            <div class="bradcumbContent">
                <h2>MercadoUTEQ</h2>
            </div>
        </div>
        <br><br><br><br>
        <div   align="center" class="container">
            <div class="row">
                <div  align="center" class="col-sm-12">
                    <div class="blog-post-search-widget mb-30">
                        <form action="#" method="post">
                            <input type="search" name="search" id="Search" placeholder="Buscar">
                            <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- ##### Blog Area Start ##### -->
        <div class="blog-area mt-50 section-padding-100">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-12">
                        <div class="academy-blog-posts">
                            <div class="row">

                                <!-- Single Blog Start -->
                                <div class="col-12"align="center">
                                    <div class="single-blog-post mb-50 wow fadeInUp" data-wow-delay="300ms">

                                        <h3>Realiza publicaciones  de articulos que quieras vender como libros , material electronico  hasta servicios  referentes a tu carrera.</h3>

                                    </div>
                                </div>


                                <!-- Single Blog Start -->
                                <div class="col-12">
                                    <div class="single-blog-post mb-50 wow fadeInUp" data-wow-delay="400ms">

                                        <div class="col-sm-12">
                                            <div class="row">

                                                <div class="col-sm-12">
                                                    <div class="row">
                                                        <div class="col-sm-12">
                                                            <h4>Formulario de Venta</h4>
                                                        </div>
                                                    </div>
                                                </div><br><br><br><br>
                                                <form name="formulario" method="post" action="/send.php">

                                                    <div class="col-sm-12">
                                                        <div class="row">
                                                            <div class="col-sm-3">
                                                                <label>Matricula:</label> <input class="redondeadonorelieve" type="phone" name="matricula" required="matricula"><br>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <label>Producto:</label> <input class="redondeadonorelieve" type="text" name="producto" required="producto"><br><br>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <label>Descripción:</label> <input class="redondeadonorelieve" type="text" name="producto" required="producto"><br><br>
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <label>Precio:</label> <input class="redondeadonorelieve" type="text" name="precio" required="precio"><br><br>
                                                            </div>

                                                        </div>
                                                    </div><br><br>
                                                    <div class="col-sm-12">
                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <input name="uploadedfile" type="file"width="100" height="100" /><br>
                                                            </div>
                                                        </div>
                                                    </div><br><br>

                                                    <div class="col-sm-12">
                                                        <div class="row">
                                                            <div class="col-sm-3">
                                                                <a class="boton_personalizado" href="" style="width:100%;">Enviar</a>      
                                                            </div>
                                                        </div>
                                                    </div>


                                                </form>


                                            </div>
                                        </div>

                     
                                    </div>
                                </div>
                                <!-- Pagination Area Start -->

                                          <div class="col-12">
                                            <div class="single-blog-post mb-50 wow fadeInUp" data-wow-delay="400ms">

                                                <div class="col-sm-12">
                                                    <div class="row">


                                                        <form name="formulario" method="post" action="/send.php">

                                                            <div class="col-sm-12">
                                                                <div class="row">
                                                                    <div class="col-sm-3">
                                                                        <label>Matricula:</label> <input class="redondeadonorelieve" type="phone" name="matricula" required="matricula" placeholder="2018113032"><br>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <label>Producto:</label> <input class="redondeadonorelieve" type="text" name="producto" required="producto" placeholder="Libro de inglés II"><br><br>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <label>Descripción:</label> <input class="redondeadonorelieve" type="text" name="producto" required="producto" placeholder="libro seminuevo 2 meses de uso"><br><br>
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <label>Precio:</label> <input class="redondeadonorelieve" type="text" name="precio" required="precio" placeholder="450.00"><br><br>
                                                                    </div>

                                                                </div>
                                                            </div><br><br>
                                                            <div class="col-sm-12">
                                                                <div class="row">
                                                                    <div class="col-sm-12">
                                                                        <img src="mercado/lib-ingles.jpg" width="100" height="100">
                                                                    </div>
                                                                </div>
                                                            </div><br><br>

                                                        </form>


                                                    </div>
                                                </div>
                                                     <form name="formulario" method="post" action="/send.php">
                                                    <!-- Area de texto extensa -->
                                                    <div class="col-sm-12">
                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <label>Matricula:</label> <input class="redondeadonorelieve" type="phone" name="matricula" required="matricula" placeholder="2015348215"><br>
                                                            </div>
                                                        </div>
                                                    </div><br><br>

                                                    <div class="col-sm-12">
                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <textarea name="texto" cols="80" rows="10" placeholder="Escribe aquí el texto..." class="redondeadonorelieve" style="width:100%;">
                                                                </textarea>
                                                            </div>
                                                        </div>
                                                    </div><br><br>


                                                    <div class="col-sm-12">
                                                        <div class="row">
                                                            <div class="col-sm-3">
                                                                <a class="boton_personalizado" href="" style="width:100%;">Enviar</a>      
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
                <!-- ##### Blog Area End ##### -->

                <!-- ##### Footer Area Start ##### -->


                <style>
                    input {
                        width: 250px;
                        padding: 5px;
                    }
                    .redondeado {
                        border-radius: 5px;
                    }
                    .confondo {
                        background-color: #def;
                    }
                    .sinborde {
                        border: 0;
                    }
                    .sinbordefondo {
                        background-color: #eee;
                        border: 0;
                    }
                    .outlinenone {
                        outline: none;
                        background-color: #dfe;
                        border: 0;
                    }
                    .redondeadonorelieve {
                        border-radius: 5px;
                        border: 1px solid #39c;
                    }
                    .boton_personalizado{
                        text-decoration: none;
                        padding: 10px;
                        font-weight: 600;
                        font-size: 20px;
                        color: #ffffff;
                        background-color: #7BCB44;
                        border-radius: 6px;
                        border: 2px solid #7BCB44;
                    }
                    .boton_personalizado:hover{
                        color: #7BCB44;
                        background-color: #ffffff;
                    }
                    textarea {
                        resize: none;
                    }
                </style>

             
                    </div>

                  
                </div>
            </div>
        </div>
        <!-- ##### Blog Area End ##### -->

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