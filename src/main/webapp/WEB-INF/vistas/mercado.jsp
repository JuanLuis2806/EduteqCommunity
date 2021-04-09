<%@page import="dtos.MercadoDTO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="breadcumb-area bg-img" style="background-image: url(img/foro/foro3.jpg);">
    <div class="bradcumbContent">
        <h2>Mercado UTEQ</h2>
    </div>
</div>
<div class="blog-area mt-50 section-padding-100">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-8">
                <div class="academy-blog-posts">
                    <div class="row">
                        <h4>Realiza publicaciones  de articulos que quieras vender como libros , material electronico  hasta servicios  referentes a tu carrera.</h4>
                        <div class="col-12" id="formulario-producto">
                            <form id="subir-producto">
                                <div class="single-blog-post mb-50 wow fadeInUp" data-wow-delay="300ms">
                                    <div align="center" class="blog-post-thumb mb-50">
                                        <input name="imagen-producto" id="imagen-producto" type="file" required="true" class="text-center center-block file-upload">
                                    </div>
                                    <label>Matricula:</label>
                                    <a  class="post-date">${usuario.getMatricula()}</a><br>
                                    <label>Producto:</label>
                                    <a  class="post-meta">
                                        <input type="text" class="form-control" name="nombre-producto" id="nombre-producto" required="true" placeholder="Producto o Servicio" title="Debes llenar este campo"><br></a>
                                    <label>Descripción:</label>
                                    <div class="post-meta">
                                        <a><input type="text" class="form-control" name="descripcion-producto" id="descripcion-producto" required="true "placeholder="Descripción de producto o servicio" title="Debes llenar este campo"></a>
                                    </div>
                                    <label>Precio:</label>
                                    <div class="post-date">
                                        <a><input type="number" class="form-control" name="precio-producto" id="precio-producto" required="true" placeholder="Precio del producto o servicio" title="Debes llenar este campo"></a>
                                    </div>
                                    <button class="btn academy-btn btn-sm mt-15">
                                        Finalizar
                                    </button>
                                </div>
                            </form>
                        </div>
                        <div class="col-12 padre">
                            <!-- aqui comienza el  1 for -->
                            <%
                                List<List<MercadoDTO>> productos = (List<List<MercadoDTO>>) request.getAttribute("productos");

                                for (int i = 0; i < productos.size(); i++) {
                                    for (int j = 0; j < productos.get(i).size(); j++) {
                                        if (0 == j) {%>
                            <div class="col-12">
                                <div class="single-blog-post mb-50 wow fadeInUp" data-wow-delay="300ms">
                                    <div align="center" class="blog-post-thumb mb-50">
                                        <img src="imagenes/<%=productos.get(i).get(j).getImagen()%>" alt="">
                                    </div>
                                    <label>Matricula:</label>
                                    <a  class="post-date"><%=productos.get(i).get(j).getMatricula()%></a><br>
                                    <label>Producto:</label>
                                    <a  class="post-meta"><%=productos.get(i).get(j).getNombreProducto()%><br></a>
                                    <label>Descripción:</label>
                                    <div class="post-meta">
                                        <a><%=productos.get(i).get(j).getDescripcion()%></a>
                                    </div>
                                    <label>Precio:</label>
                                    <div class="post-date">
                                        <a>$<%=productos.get(i).get(j).getPrecio()%></a>
                                    </div><br>
                                    <%} else {%>
                                    <div class="col-md-12">
                                        <img src="imagenes/<%=productos.get(i).get(j).getFotoPerfil()%>" alt="" width="50" height="50"/>
                                        <strong class="post-meta"><%=productos.get(i).get(j).getNombreUsuario()%>: <strong><%=productos.get(i).get(j).getComentario()%></strong></strong>
                                    </div>
                                    <%}
                                        }%>
                                    <br>
                                    <form class="comentarios">
                                        <input name="id-producto" id="id-producto" type="hidden" value="<%=productos.get(i).get(0).getPublicacionID()%>">
                                        <input id="comentario" name="comentario" type="text" cols="80" rows="10"  style="width:100%;"placeholder="comentar..." class="redondeadonorelieve"><br>
                                        <button type="submit" class="btn academy-btn btn-sm mt-15">
                                            Comentar
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <%}%>
                            <!-- aqui comienza el  2 for -->

                            <!-- aqui Termina el for -->
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
                    <div class="latest-blog-posts mb-30">
                        <h5>Ejemplo de Productos o Servicios</h5>
                        <div class="single-latest-blog-post d-flex mb-30">
                            <div class="latest-blog-post-thumb">
                                <img src="img/blog-img/ejemplo1.jpg" alt="">
                            </div>
                            <div class="latest-blog-post-content">
                                <a href="#" class="post-title">
                                    <h6>Equipos de Computo</h6>
                                </a>
                            </div>
                        </div>
                        <div class="single-latest-blog-post d-flex mb-30">
                            <div class="latest-blog-post-thumb">
                                <img src="img/blog-img/ejemplo2.jpg" alt="">
                            </div>
                            <div class="latest-blog-post-content">
                                <a href="#" class="post-title">
                                    <h6>Material Electronico</h6>
                                </a>
                            </div>
                        </div>
                        <div class="single-latest-blog-post d-flex mb-30">
                            <div class="latest-blog-post-thumb">
                                <img src="img/blog-img/ejemplo3.jpg" alt="">
                            </div>
                            <div class="latest-blog-post-content">
                                <a href="#" class="post-title">
                                    <h6>Servicio de Impresora 3D</h6>
                                </a>
                            </div>
                        </div>
                        <div class="single-latest-blog-post d-flex mb-30">
                            <div class="latest-blog-post-thumb">
                                <img src="img/blog-img/ejemplo5.jpg" alt="">
                            </div>
                            <div class="latest-blog-post-content">
                                <a href="#" class="post-title">
                                    <h6>Reparación de equipos</h6>
                                </a>
                            </div>
                        </div>
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