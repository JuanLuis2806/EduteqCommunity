<!DOCTYPE html>
<html lang="en">
    <head>
        <title>EduTEQ COMMUNITY</title>
        <link rel="icon" href="img/bg-img/birrete.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">	
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">	
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
    </head>
    <body>
        <div class="limiter">
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
            <div class="container-login100">
                <div class="wrap-login100">
                    <form id="form-registro"class="login100-form validate-form p-l-55 p-r-55 p-t-178">
                        <div align="center" class="academy-logo">
                            <a href="index.jsp"><img src="img/bg-img/birrete.png" alt="">EduTEQ Community</a><br><br><br>
                        </div>
                        <span class="login100-form-title">
                            Registro
                        </span>
                        <div class="wrap-input100 validate-input m-b-16">
                            <input class="input100" type="text" name="matricula" id="matricula" placeholder="Matricula" required="matricula" maxlength="10" minlength="10">
                            <span class="focus-input100"></span>
                        </div><br>
                        <div class="wrap-input100 validate-input m-b-16">
                            <input class="input100" type="text" name="correo" id="correo" placeholder="Correo Electronico" required="Correo" maxlength="22" minlength="22">
                            <span class="focus-input100"></span>
                        </div><br>
                        <div class="wrap-input100 validate-input">
                            <input class="input100" type="password" name="password" id="password" placeholder="Contraseña" required="contraseña" maxlength="30" minlength="8">
                            <span class="focus-input100"></span>
                        </div><br><br>
                        <div class="wrap-input100 validate-input">
                            <input class="input100" type="password" name="Validapassword" id="Validapassword" placeholder="Validación de Contraseña" required="contraseña" maxlength="30" minlength="8">
                            <span class="focus-input100"></span>
                        </div><br><br>
                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn">
                                Seguir
                            </button>
                        </div><br><br>                      
                    </form>
                    <div class="container-login100-form-btn">
                        <a class="txt3" href="index">
                            Menu Principal
                        </a>						
                    </div><br><br>
                </div>
            </div>
        </div>
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="js/usuario.js"></script>
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
