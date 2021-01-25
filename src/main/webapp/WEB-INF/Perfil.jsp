<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>EduTEQ COMMUNITY</title>
        <link rel="icon" href="img/bg-img/birrete.png">
        <link rel="stylesheet" href="css/Styles.css" TYPE="text/css">
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
            <div class="container-login100">
                <div class="wrap-login100">
                    <form id="form-perfil" class="login100-form validate-form p-l-55 p-r-55 p-t-178"
                          enctype="multipart/form-data">
                        <div align="center" class="academy-logo">
                            <a href="index.jsp"><img src="img/bg-img/birrete.png" alt="">EduTEQ Community</a><br><br><br>
                        </div>
                        <span class="login100-form-title">
                            Perfil
                        </span>
                        <div class="wrap-input100 validate-input m-b-16">
                            <input class="input100" type="text" name="nombre" id="nombre" placeholder="Nombre" required="nombre">
                            <span class="focus-input100"></span>
                        </div><br>
                        <div class="wrap-input100 validate-input m-b-16">
                            <input class="input100" type="text" name="apellidos" id="apellidos" placeholder="Apellidos" required="apellidos">
                            <span class="focus-input100"></span>
                        </div><br>
                        <div class="wrap-input100 validate-input m-b-16">
                            <input class="input100" type="text" name="alias" id="alias" placeholder="Sobre Nombre" required="alias">
                            <span class="focus-input100"></span>
                        </div><br>
                        <div class="wrap-input100 validate-input">
                            <input class="input100" type="text" name="pasatiempos" id="pasatiempos" placeholder="Pasatiempos" required="pasatiempos">
                            <span class="focus-input100"></span>
                        </div><br>
                        <div  align="center" class="wrap-input100 validate-input">
                            <label align="center"> Fecha de Nacimiento</label><br>
                            <div class="wrap-input100 validate-input">
                                <input class="input100" type="date" name="fecha" id="fecha" placeholder="Fecha de Nacimiento" required="fecha">
                                <span class="focus-input100"></span>
                            </div><br>
                        </div>
                        <div class="wrap-input100 validate-input m-b-16">
                            <input class="input100" type="number" name="edad" id="edad" placeholder="Edad" required="edad">

                            <span class="focus-input100"></span>
                        </div><br>
                        <div  align="center" class="wrap-input100 validate-input">
                            <label>Estado</label>
                            <select class="select-css" id="estado" name="estado">
                                <c:forEach var="estado" items="${estados}">
                                    <option value="${estado.id}">${estado.nombre}</option>
                                </c:forEach>
                            </select>
                            <span class="focus-input100"></span>
                        </div><br>
                        <div  align="center" class="wrap-input100 validate-input">
                            <label>Sexo</label>
                            <select class="select-css" id="sexo" name="sexo">
                                <option value="Hombre">Hombre</option>
                                <option value="Mujer">Mujer</option>
                                <option value="Otro">Otro</option>
                                <option value="Prefiero no decirlo">Prefiero no decirlo</option> 
                            </select>
                            <span class="focus-input100"></span>
                        </div><br>
                        <div  align="center" class="wrap-input100 validate-input">
                            <label>División</label>
                            <select class="select-css" id="division" name="division">
                                <c:forEach var="division" items="${divisiones}">
                                    <option value="${division.id}">${division.nombre}</option>
                                </c:forEach>
                            </select>
                            <span class="focus-input100"></span>
                        </div><br>                       
                        <div  align="center" class="wrap-input100 validate-input">
                            <label>Carrera</label>
                            <select class="select-css" id="carrera" name="carrera">
                                <c:forEach var="carrera" items="${carreras}">
                                    <option value="${carrera.id}">${carrera.nombre}</option>
                                </c:forEach>
                            </select>
                            <span class="focus-input100"></span>
                        </div><br>
                        <div  align="center" class="wrap-input100 validate-input">
                            <label> Imagen de Perfil</label><br>
                            <div class="wrap-input100 validate-input m-b-16">
                                <input name="foto" id="foto" type="file" />
                                <span class="focus-input100"></span>
                            </div><br>
                        </div>
                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn">
                                Finalizar
                            </button>
                        </div><br><br>
                        <div class="container-login100-form-btn">
                            <a href="index.jsp" class="txt3">
                                Menú Principal
                            </a>						
                        </div><br><br>
                    </form>
                </div>
            </div>
        </div>
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <script src="js/main.js"></script>        
        <script src="js/perfil.js"></script>
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
    </body>
</html>
