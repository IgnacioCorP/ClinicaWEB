<%-- 
    Document   : productosempleado
    Created on : 15-feb-2023, 10:54:52
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PRODUCTOS</title>
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">
        <link rel="stylesheet" href="lb/fuente/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
        <style>
            html,
            body {
                position: relative;
                height: 100%;
            }

            body {
                background: #eee;
                font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
                font-size: 14px;
                color: #000;
                margin: 0;
                padding: 0;
            }

            .swiper {
                width: 100%;
                height: 100%;
            }

            .swiper-slide {
                text-align: center;
                font-size: 18px;
                background: #fff;

                /* Center slide text vertically */
                display: -webkit-box;
                display: -ms-flexbox;
                display: -webkit-flex;
                display: flex;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                -webkit-justify-content: center;
                justify-content: center;
                -webkit-box-align: center;
                -ms-flex-align: center;
                -webkit-align-items: center;
                align-items: center;
            }

            .swiper-slide img {
                display: block;
                width: 100%;
                height: 100%;
                object-fit: cover;
            }
        </style>
    </head>

    <body>
        <!--BARRA DE NAVEGACIÓN-->
        <div class="container-fluid ">
            <nav class="navbar navbar-expand-lg navbar-light " style="background: transparent;">
                <div class="container-fluid">
                    <!--ÍCONO APP-->
                    <a class="navbar-brand" href="empleado.jsp"><img src="imgP/LOGO.png" class="img-fluid" style="width: 150px; height: 120px;"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="empleado.jsp">INICIO</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="productosempleado.jsp" id="navbarDropdown" role="button" aria-expanded="false">PRODUCTOS</a>

                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="Empleado?accion=listarEmpleados" id="navbarDropdown" role="button" aria-expanded="false">EMPLEADOS</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="Empleado?accion=listarClientes" id="navbarDropdown" role="button" aria-expanded="false">CLIENTES</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="Laboratorio?accion=listarLaboratorios" id="navbarDropdown" role="button" aria-expanded="false">LABORATORIOS</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="Departamento?accion=listarDepartamentos" id="navbarDropdown" role="button" aria-expanded="false">DEPARTAMENTOS</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="RegistrarProducto.jsp" id="navbarDropdown" role="button" aria-expanded="false">AÑADIR PRODUCTOS</a>
                            </li>

                        </ul>
                        <div class="text-center">
                            <a href="index.jsp" class="btn btn-primary">CERRAR SESIÓN</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!--FIN BARRA DE NAVEGACIÓN -->
        <!--INICIO LOGIN-->
        <!--en esta linea se reparten los elementos-->

        <!-- Swiper -->

        <div class="d-flex justify-content-center mb-5" style=" background-image: url('imgP/fondoindex.jpg'); background-repeat: no-repeat;  background-size: 100% 100%; padding-top: 100px; padding-bottom: 100px; font-size: 40px; ">

            <div class="container pt-5 team">
                <div class="row">
                    <c:forEach items="${productos}" var="producto" >
                        <div class="col-lg-3 col-sm-12 col-md-4 mb-5">


                            <div class="card border-0  text-center" style="color: black;">
                                <img class="card-img-top" src="${producto.getImgP()}" alt="">
                                <div class="card-social d-flex align-items-center justify-content-center">

                                </div>

                                <div class="card-body ">
                                    <h4 class="card-title ">${producto.getNombre()}</h4>
                                    <p class="card-text">${producto.getPrecio()}</p>
                                    <a class="" style="font-size: 12pt;" href="">ELIMINAR</a>

                                </div>

                            </div>
                        </div>
                    </c:forEach>


                </div>
            </div>
        </div>


        <script src="lb/js/bootstrap.min.js"></script>
    </body>
    <!--INICIO FOOTER-->
    <footer>

        <div class="container-fluid fixed-bottom " style="background-color: #68b59e;">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid  ">

                    <div class="row collapse navbar-collapse d-flex justify-content-around align-items-center" id="navbarSupportedContent">

                        <div class="col-sm-12 col-md-4 d-flex justify-content-around " style="color: white; text-align: center; padding-bottom: 10px; padding-top: 15px;">
                            <span>© 2021. KUANTUM PHARMA. <a rel="nofollow" href="#" style="color: black;">Aviso Legal</a> | <a rel="nofollow" href="#" style="color: black;">Política
                                    de Privacidad</a> |
                                <a rel="nofollow" href="#" style="color: black;">Política de
                                    Cookies</a></span>
                        </div>
                        <div class="col-sm-12 col-md-4 d-flex justify-content-around " style="padding-bottom: 10px; padding-top: 15px;">
                            <div style="text-align: center;  color: aliceblue; padding-top: 4px; padding-left: 20px; ">
                            </div>
                            <div class="kingster-top-bar-right-social"><a href="https://www.instagram.com/lab.kuantum/?hl=es" target="_blank" class="kingster-top-bar-social-icon" rel="nofollow " title="instagram"><i class="fa fa-instagram"></i> <img src="imgP/instagram.png" class="img-fluid" style="width: 33px; height: 25px; padding-top: 3px; "></a>
                            </div>
                            <div class="kingster-top-bar-right-social"><a href="mailto:kuantumpharma@gmail.com" target="_blank" class="kingster-top-bar-social-icon" rel="nofollow " title="instagram"><i class="fa fa-correo"></i> <img src="imgP/correo.png" class="img-fluid" style="width: 47px; height: 30px; padding-top: 3px; "></a>
                            </div>
                            <div class="kingster-top-bar-right-social"><a href="https://wa.me/573156066815" target="_blank" class="kingster-top-bar-social-icon" rel="nofollow " title="instagram"><i class="fa fa-whatsapp"></i> <img src="imgP/wasap2.png" class="img-fluid" style="width: 30px; height: 25px; padding-top: 3px; "></a>
                            </div>

                        </div>


                    </div>
                </div>
            </nav>
        </div>

    </footer>
    <!--FIN FOOTER-->

</html>