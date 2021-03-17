<link rel="stylesheet" type="text/css" href="css/main.css">

<div class="breadcumb-area bg-img" style="background-image: url(img/foro/foro3.jpg);">
    <div class="bradcumbContent">
        <h2>Foro UTEQ</h2>
    </div>
</div>
<div class="blog-area mt-50 section-padding-100">
    <div class="container">
        <input type="hidden" name="perfilId" id="perfilId" value="${perfil.id}">
        <div class="row">
            <div class="col-12 col-md-8">
                <div class="tab-content">
                    <div class="container tab-pane in active" id="foroUTEQ">
                        <div class="row">
                            <h4>Realiza publicaciones  de dudas academicas , proyectos interdiciplinarios etc.</h4>
                            <div class="col-12">
                                <button type="button"  class="btn academy-btn btn-sm mt-15 nuevaPregunta" data-division="UTEQ">Realizar Nueva Publicación</button>
                                <form id="formPreguntaUTEQ" class="submitForm" style="display: none;" data-id-division="6" data-division="UTEQ">
                                    <br>
                                    <div class="col-md-12">
                                        <div class="wrap-input100 validate-input m-b-16 col-md-12">
                                            <label>Escribe una pregunta:</label>
                                            <input class="input100" type="text" id="pregunta" name="pregunta" placeholder="¿Cúal es tu pregunta?" required/>
                                            <button type="submit" class="btn academy-btn btn-sm mt-15 " >Enviar</button>
                                            <button type="button" class="btn btn-danger  mt-15 cancelarPregunta" data-division="UTEQ">Cancelar</button>
                                        </div>    
                                    </div>
                                    <br><br>
                                </form>
                            </div>
                            <br><br><br><br>
                            <div id="afterUTEQ"></div>
                        </div>
                    </div>
                    <div class="container tab-pane fade" id="foroDEA">
                        <div class="row">
                            <h4>Realiza publicaciones  de dudas academicas , proyectos interdiciplinarios etc. DEA</h4>
                            <div class="col-12">
                                <button type="button" class="btn academy-btn btn-sm mt-15 nuevaPregunta" data-division="DEA">Realizar Nueva Publicación</button>
                                <form id="formPreguntaDEA" class="submitForm" style="display: none;" data-id-division="1" data-division="DEA">
                                    <br>
                                    <div class="col-md-12">
                                        <div class="wrap-input100 validate-input m-b-16 col-md-12">
                                            <label>Escribe una pregunta:</label>
                                            <input class="input100" type="text" id="pregunta" name="pregunta" placeholder="¿Cúal es tu pregunta?" required/>
                                            <button type="submit" class="btn academy-btn btn-sm mt-15">Enviar</button>
                                            <button type="button" class="btn btn-danger  mt-15 cancelarPregunta" data-division="DEA">Cancelar</button>
                                        </div>    
                                    </div>
                                    <br><br>
                                </form>
                            </div>
                            <br><br><br><br>
                            <div id="afterDEA"></div>
                     
                        </div>
                    </div>
                    <div class="container tab-pane fade" id="foroDI">
                        <div class="row">
                            <h4>Realiza publicaciones  de dudas academicas , proyectos interdiciplinarios etc. DI</h4>
                            <div class="col-12">
                                <button type="button" class="btn academy-btn btn-sm mt-15 nuevaPregunta" data-division="DI">Realizar Nueva Publicación</button>
                                <form id="formPreguntaDI" class="submitForm" style="display: none;" data-id-division="2" data-division="DI">
                                    <input type="hidden" name="usuarioId" id="usuarioId">
                                    <br>
                                    <div class="col-md-12">
                                        <div class="wrap-input100 validate-input m-b-16 col-md-12">
                                            <label>Escribe una pregunta:</label>
                                            <input class="input100" type="text" id="pregunta" name="pregunta" placeholder="¿Cúal es tu pregunta?" required/>
                                            <button type="submit" class="btn academy-btn btn-sm mt-15">Enviar</button>
                                            <button type="button" class="btn btn-danger  mt-15 cancelarPregunta" data-division="DI">Cancelar</button>
                                        </div>    
                                    </div>
                                    <br><br>
                                </form>
                            </div>
                            <br><br><br><br>
                            <div id="afterDI"></div>
                            
                        </div>
                    </div>
                    <div class="container tab-pane fade" id="foroDA">
                        <div class="row">
                            <h4>Realiza publicaciones  de dudas academicas , proyectos interdiciplinarios etc. DA</h4>
                            <div class="col-12">
                                <button type="button" class="btn academy-btn btn-sm mt-15 nuevaPregunta" data-division="DA">Realizar Nueva Publicación</button>
                                <form id="formPreguntaDA" class="submitForm" style="display: none;" data-id-division="3" data-division="DA">
                                    <br>
                                    <div class="col-md-12">
                                        <div class="wrap-input100 validate-input m-b-16 col-md-12">
                                            <label>Escribe una pregunta:</label>
                                            <input class="input100" type="text" id="pregunta" name="pregunta" placeholder="¿Cúal es tu pregunta?" required/>
                                            <button type="submit" class="btn academy-btn btn-sm mt-15">Enviar</button>
                                            <button type="button" class="btn btn-danger  mt-15 cancelarPregunta" data-division="DA">Cancelar</button>
                                        </div>    
                                    </div>
                                    <br><br>
                                </form>
                            </div>
                            <br><br><br><br>
                            <div id="afterDA"></div>
                            
                        </div>
                    </div>
                    <div class="container tab-pane fade" id="foroDTAI">
                        <div class="row">
                            <h4>Realiza publicaciones  de dudas academicas , proyectos interdiciplinarios etc. DTAI</h4>
                            <div class="col-12">
                                <button type="button" class="btn academy-btn btn-sm mt-15 nuevaPregunta" data-division="DTAI">Realizar Nueva Publicación</button>
                                <form id="formPreguntaDTAI" class="submitForm" style="display: none;" data-id-division="4" data-division="DTAI">
                                    <br>
                                    <div class="col-md-12">
                                        <div class="wrap-input100 validate-input m-b-16 col-md-12">
                                            <label>Escribe una pregunta:</label>
                                            <input class="input100" type="text" id="pregunta" name="pregunta" placeholder="¿Cúal es tu pregunta?" required/>
                                            <button type="submit" class="btn academy-btn btn-sm mt-15">Enviar</button>
                                            <button type="button" class="btn btn-danger  mt-15 cancelarPregunta" data-division="DTAI">Cancelar</button>
                                        </div>    
                                    </div>
                                    <br><br>
                                </form>
                            </div>
                            <br><br><br><br>
                            <div id="afterDTAI"></div>
                            
                        </div>
                    </div>
                    <div class="container tab-pane fade" id="foroIdiomas">
                        <div class="row">
                            <h4>Realiza publicaciones  de dudas academicas , proyectos interdiciplinarios etc. IDIOMAS</h4>
                            <div class="col-12">
                                <button type="button" class="btn academy-btn btn-sm mt-15 nuevaPregunta" data-division="IDIOMAS">Realizar Nueva Publicación</button>
                                <form id="formPreguntaIDIOMAS" class="submitForm" style="display: none;" data-id-division="5" data-division="IDIOMAS">
                                    <br>
                                    <div class="col-md-12">
                                        <div class="wrap-input100 validate-input m-b-16 col-md-12">
                                            <label>Escribe una pregunta:</label>
                                            <input class="input100" type="text" id="pregunta" name="pregunta" placeholder="¿Cúal es tu pregunta?" required/>
                                            <button type="submit" class="btn academy-btn btn-sm mt-15">Enviar</button>
                                            <button type="button" class="btn btn-danger  mt-15 cancelarPregunta" data-division="IDIOMAS">Cancelar</button>
                                        </div>    
                                    </div>
                                    <br><br>
                                </form>
                            </div>
                            <br><br><br><br>
                            <div id="afterIdiomas"></div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4">
                <div class="academy-blog-sidebar">
                    <div class="blog-post-search-widget mb-30">
                        <form action="#" method="post">
                            <input type="search" name="search" id="Search" placeholder="Buscar">
                            <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                        </form>
                    </div>
                    <div class="blog-post-categories mb-30">
                        <h5>Divisiones</h5>
                        <ul class="nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#foroUTEQ">Foro UTEQ</a></li>
                            <li><a data-toggle="tab" href="#foroDEA">División Económica Administrativa (DEA)</a></li>
                            <li><a data-toggle="tab" href="#foroDI">División Industrial (DI)</a></li>
                            <li><a data-toggle="tab" href="#foroDA">División Ambiental (DA)</a></li>
                            <li><a data-toggle="tab" href="#foroDTAI">Divisón de Tecnologías de la Automatización e Información (DTAI)</a></li>
                            <li><a data-toggle="tab" href="#foroIdiomas">División de idiomas</a></li>
                        </ul>
                    </div>
                    <div class="blog-post-categories mb-30">
                        <img src="img/iconos/uteq.png">
                    </div>
                    <div class="blog-post-categories mb-30">
                        <a>  <img src="img/bg-img/logo_black.png"></a>
                    </div>
                </div>
            </div>
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
<script src="js/foro.js"></script>
