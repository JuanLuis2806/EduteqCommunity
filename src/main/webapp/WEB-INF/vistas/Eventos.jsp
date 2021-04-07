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
        <link href="CSSEV/bootstrap.min.css" rel="stylesheet">
        <link href="CSSEV/font-awesome.min.css" rel="stylesheet">
        <link href="CSSEV/main.css" rel="stylesheet">
        <link href="CSSEV/animate.css" rel="stylesheet">	
        <link href="CSSEV/responsive.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,600,700,900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="icon" href="img/bg-img/img.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'>
        <link rel="stylesheet" href="css/carrusell.css">
        <link rel="stylesheet" href="css/slider.css">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" async="" src="https://www.google-analytics.com/ga.js"></script><script type="text/javascript" src="js/Slider.js"></script>
    </head>
    <body>
        <div class="breadcumb-area bg-img" style="background-image: url(img/foro/foro3.jpg);">
            <div class="bradcumbContent">
                <h2>Eventos UTEQ</h2>
            </div>
        </div>
        <br><br><br><br>
        <div class="container">
            <div class="row">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <c:forEach var="evento" items="${eventos}">
                            <c:if test = "${evento.id == 1}">
                                <div class="item active">
                                </c:if>
                                <c:if test = "${evento.id != 1}">
                                    <div class="item">
                                    </c:if>
                                    <img src="img/noticias/${evento.imagen}" alt="First slide">
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
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right"></span>
                        </a>
                    </div>
                </div>
            </div><br><br><br><br><br>
            <section id="explore">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 col-md-offset-2 col-sm-5">
                            <a href="index.jsp" class="pull-right"><img title="profile image" class="img-responsive" src="img/bg-img/nuevopre.png"></a>
                        </div>				
                        <div class="col-sm-12 col-md-12">					
                        </div>
                    </div>
                </div>
            </section>

            <script src="js/jquery/jquery-2.2.4.min.js"></script>
            <script src="js/bootstrap/popper.min.js"></script>
            <script src="js/bootstrap/bootstrap.min.js"></script>
            <script src="js/plugins/plugins.js"></script>
            <script src="js/active.js"></script>
            <script type="text/javascript" src="jss/jquery.js"></script>
            <script type="text/javascript" src="jss/bootstrap.min.js"></script>
            <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
            <script type="text/javascript" src="jss/gmaps.js"></script>
            <script type="text/javascript" src="jss/smoothscroll.js"></script>
            <script type="text/javascript" src="jss/jquery.parallax.js"></script>
            <script type="text/javascript" src="jss/coundown-timer.js"></script>
            <script type="text/javascript" src="jss/jquery.scrollTo.js"></script>
            <script type="text/javascript" src="jss/jquery.nav.js"></script>
            <script type="text/javascript" src="jss/main.js"></script>  
            <script src="js/bootstrap/bootstrap.min.js"></script>
            <script src="js/plugins/plugins.js"></script>
            <script src="js/active.js"></script>
            <script  src="js/carrusell/carrusell.js"></script>
            <script src="js/active.js"></script>
            <script src="js/main.js"></script>
            <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script><script  src="js/Slider.js"></script>
    </body>
</html>