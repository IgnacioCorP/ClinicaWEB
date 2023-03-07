<%-- 
    Document   : index
    Created on : 01-feb-2023, 13:12:38
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>KUANTUM</title>
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">


        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <!--BARRA DE NAVEGACIÓN-->
        <div class="container-fluid ">
            <nav class="navbar navbar-expand-lg navbar-light " style="background: transparent;">
                <div class="container-fluid">
                    <!--ÍCONO APP-->
                    <a class="navbar-brand" href="index.jsp"><img src="imgP/LOGO.png" class="img-fluid"
                                                                  style="width: 150px; height: 120px;"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                   data-bs-toggle="dropdown" aria-expanded="false" style="color: #000716;">
                                    <img src="imgP/cuenta.png" class="img-fluid"
                                         style="width: 50px; height: 40px; justify-content: center;"></a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="REGISTRO.jsp">REGISTRARSE</a></li>
                                    <li><a class="dropdown-item" href="IniciarSesion.jsp">INICIAR SESIÓN</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">INICIO</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="ListaProductos.jsp" id="navbarDropdown" role="button"
                                   aria-expanded="false">PRODUCTOS</a>

                            </li>                         
                            <li class="nav-item ">
                                <a class="nav-link" href="LoginAdmin.jsp" id="navbarDropdown" role="button"
                                   aria-expanded="false">EMPLEADOS</a>

                            </li>




                        </ul>

                    </div>
                </div>
            </nav>
        </div>
        <!--FIN BARRA DE NAVEGACIÓN -->

        <div class="site-blocks-cover" style="background-image: url('images/hero_1.jpg');">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 mx-auto order-lg-2 align-self-center">
                        <div class="site-block-cover-content text-center">
                            <h2 class="sub-title">MEDICINA BASADA EN LA EVIDENCIA</h2>
                            <h1>BIENVENIDO A KUANTUM PHARMA</h1>
                            <p>
                                <a href="IniciarSesion.jsp" class="btn btn-primary px-5 py-3">COMPRAR AHORA</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="site-section">
            <div class="container">
                <div class="row align-items-stretch section-overlap">
                    <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                        <div class="banner-wrap bg-primary h-100">
                            <a href="#" class="h-100">
                                <h5>Envíos <br> Gratutios!!</h5>
                                <p>
                                    El amor es el amor
                                    <strong>Muchas gracias, al dolor le seguirá la adipiscencia.</strong>
                                </p>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                        <div class="banner-wrap h-100">
                            <a href="#" class="h-100">
                                <h5>Hasta 50% <br> en nuestros productos </h5>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
                        <div class="banner-wrap bg-warning h-100">
                            <a href="#" class="h-100">
                                <h5>Paga <br> con tarjeta sin problemas</h5>

                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="site-section">
            <div class="container">
                <div class="row">
                    <div class="title-section text-center col-12">
                        <h2 class="text-uppercase">PRODUCTOS</h2>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <span class="tag">Sale</span>
                        <a href=""> <img src="images/product_01.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="">Bioderma</a></h3>
                        <p class="price"><del>95.00</del> &mdash; $55.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <a href=""> <img src="images/product_02.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="">Chanca Piedra</a></h3>
                        <p class="price">$70.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <a href=""> <img src="images/product_03.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="">Umcka Cold Care</a></h3>
                        <p class="price">$120.00</p>
                    </div>

                    <div class="col-sm-6 col-lg-4 text-center item mb-4">

                        <a href=""> <img src="images/product_04.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Cetyl Pure</a></h3>
                        <p class="price"><del>45.00</del> &mdash; $20.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <a href=""> <img src="images/product_05.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="">CLA Core</a></h3>
                        <p class="price">$38.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <span class="tag">Sale</span>
                        <a href=""> <img src="images/product_06.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="">Poo Pourri</a></h3>
                        <p class="price"><del>$89</del> &mdash; $38.00</p>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-12 text-center">
                        <a href="IniciarSesion.jsp" class="btn btn-primary px-4 py-3">Ver todos los productos</a>
                    </div>
                </div>
            </div>
        </div>


        <div class="site-section bg-light">
            <div class="container">
                <div class="row">
                    <div class="title-section text-center col-12">
                        <h2 class="text-uppercase">ÚLTIMOS PRODUCTOS</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 block-3 products-wrap">
                        <div class="nonloop-block-3 owl-carousel">

                            <div class="text-center item mb-4">
                                <a href=""> <img src="images/product_03.png" alt="Image"></a>
                                <h3 class="text-dark"><a href="">Umcka Cold Care</a></h3>
                                <p class="price">$120.00</p>
                            </div>

                            <div class="text-center item mb-4">
                                <a href=""> <img src="images/product_01.png" alt="Image"></a>
                                <h3 class="text-dark"><a href="">Umcka Cold Care</a></h3>
                                <p class="price">$120.00</p>
                            </div>

                            <div class="text-center item mb-4">
                                <a href=""> <img src="images/product_02.png" alt="Image"></a>
                                <h3 class="text-dark"><a href="">Umcka Cold Care</a></h3>
                                <p class="price">$120.00</p>
                            </div>

                            <div class="text-center item mb-4">
                                <a href=""> <img src="images/product_04.png" alt="Image"></a>
                                <h3 class="text-dark"><a href="">Umcka Cold Care</a></h3>
                                <p class="price">$120.00</p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="site-section bg-secondary bg-image" style="background-image: url('images/bg_2.jpg');">
            <div class="container">
                <div class="row align-items-stretch">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_1.jpg');">
                            <div class="banner-1-inner align-self-center">
                                <h2>KUANTUM PHARMA</h2>
                                <p>Somos KUANTUM PHARMA un laboratorio especializado en el desarrollo y la fabricación de medicamentos producidos a partir de componentes de origen natural y biológico.
                                </p>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <a href="#" class="banner-1 h-100 d-flex" style="background-image: url('images/bg_2.jpg');">
                            <div class="banner-1-inner ml-auto  align-self-center">
                                <h2>Expertos en </h2>
                                <p>el cuidado de la salud y el bienestar de nuestros pacientes, por eso nos respaldamos en nuestra amplia experiencia, desarrollo tecnológico y un equipo humano orientado a lograr la excelencia y calidad de nuestros productos.
                                </p>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>



    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>

    <script src="js/main.js"></script>
</body>
<!--INICIO FOOTER-->
<footer>

    <div class="container-fluid fixed-bottom " style="background-color: #68b59e;">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid  ">

                <div class="row collapse navbar-collapse d-flex justify-content-around align-items-center"
                     id="navbarSupportedContent">

                    <div class="col-sm-12 col-md-4 d-flex justify-content-around "
                         style="color: white; text-align: center; padding-bottom: 10px; padding-top: 15px;">
                        <span>© 2021. KUANTUM PHARMA. <a rel="nofollow" href="#"
                                                         style="color: black;">Aviso Legal</a> | <a rel="nofollow"
                                                         href="#" style="color: black;">Política
                                de Privacidad</a> |
                            <a rel="nofollow" href="#"
                               style="color: black;">Política de
                                Cookies</a></span>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-around "
                         style="padding-bottom: 10px; padding-top: 15px;">
                        <div style="text-align: center;  color: aliceblue; padding-top: 4px; padding-left: 20px; ">
                        </div>
                        <div class="kingster-top-bar-right-social"><a
                                href="https://www.instagram.com/lab.kuantum/?hl=es" target="_blank"
                                class="kingster-top-bar-social-icon" rel="nofollow " title="instagram"><i
                                    class="fa fa-instagram"></i> <img src="imgP/instagram.png" class="img-fluid"
                                    style="width: 33px; height: 25px; padding-top: 3px; "></a>
                        </div>
                        <div class="kingster-top-bar-right-social"><a href="mailto:kuantumpharma@gmail.com"
                                                                      target="_blank" class="kingster-top-bar-social-icon" rel="nofollow "
                                                                      title="instagram"><i class="fa fa-correo"></i> <img src="imgP/correo.png"
                                                                                class="img-fluid" style="width: 47px; height: 30px; padding-top: 3px; "></a>
                        </div>
                        <div class="kingster-top-bar-right-social"><a href="https://wa.me/573156066815" target="_blank"
                                                                      class="kingster-top-bar-social-icon" rel="nofollow " title="instagram"><i
                                    class="fa fa-whatsapp"></i> <img src="imgP/wasap2.png" class="img-fluid"
                                    style="width: 30px; height: 25px; padding-top: 3px; "></a>
                        </div>

                    </div>


                </div>
            </div>
        </nav>
    </div>

</footer>
<!--FIN FOOTER-->

</html>