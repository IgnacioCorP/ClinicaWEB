<%-- 
    Document   : productoscliente
    Created on : 03-mar-2023, 12:57:29
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seccion Cliente</title>
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


        <div class="container-fluid ">
            <nav class="navbar navbar-expand-lg navbar-light " style="background: transparent;">
                <div class="container-fluid">
                    <!--ÍCONO APP-->
                    <a class="navbar-brand" href="cliente.jsp"><img src="imgP/LOGO.png" class="img-fluid" style="width: 150px; height: 120px;"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="cliente.jsp">INICIO</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="productoscliente.jsp" id="navbarDropdown" role="button" aria-expanded="false">PRODUCTOS</a>

                            </li>

                        </ul>


                    </div>
                    <div class="text-center">
                        <a href="index.jsp" class="btn btn-primary">CERRAR SESIÓN</a>
                    </div>                          
                </div>
            </nav>
        </div>
        <div class="site-section">
            <div class="container">

                <div class="row">
                    <div class="col-lg-6">
                        <h3 class="mb-3 h6 text-uppercase text-black d-block">Filter by Price</h3>
                        <div id="slider-range" class="border-primary"></div>
                        <input type="text" name="text" id="amount" class="form-control border-0 pl-0 bg-white" disabled="" />
                    </div>
                    <div class="col-lg-6">
                        <h3 class="mb-3 h6 text-uppercase text-black d-block">Filter by Reference</h3>
                        <button type="button" class="btn btn-secondary btn-md dropdown-toggle px-4" id="dropdownMenuReference"
                                data-toggle="dropdown">Reference</button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
                            <a class="dropdown-item" href="#">Relevance</a>
                            <a class="dropdown-item" href="#">Name, A to Z</a>
                            <a class="dropdown-item" href="#">Name, Z to A</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Price, low to high</a>
                            <a class="dropdown-item" href="#">Price, high to low</a>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <span class="tag">Sale</span>
                        <a href="compra.html"> <img src="images/product_01.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Bioderma</a></h3>
                        <p class="price"><del>95.00</del> &mdash; $55.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <a href="compra.html"> <img src="images/product_02.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Chanca Piedra</a></h3>
                        <p class="price">$70.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <a href="compra.html"> <img src="images/product_03.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Umcka Cold Care</a></h3>
                        <p class="price">$120.00</p>
                    </div>

                    <div class="col-sm-6 col-lg-4 text-center item mb-4">

                        <a href="compra.html"> <img src="images/product_04.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Cetyl Pure</a></h3>
                        <p class="price"><del>45.00</del> &mdash; $20.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <a href="compra.html"> <img src="images/product_05.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">CLA Core</a></h3>
                        <p class="price">$38.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <span class="tag">Sale</span>
                        <a href="compra.html"> <img src="images/product_06.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Poo Pourri</a></h3>
                        <p class="price"><del>$89</del> &mdash; $38.00</p>
                    </div>

                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <span class="tag">Sale</span>
                        <a href="compra.html"> <img src="images/product_01.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Bioderma</a></h3>
                        <p class="price"><del>95.00</del> &mdash; $55.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <a href="compra.html"> <img src="images/product_02.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Chanca Piedra</a></h3>
                        <p class="price">$70.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <a href="compra.html"> <img ˀsrc="images/product_03.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Umcka Cold Care</a></h3>
                        <p class="price">$120.00</p>
                    </div>

                    <div class="col-sm-6 col-lg-4 text-center item mb-4">

                        <a href="compra.html"> <img src="images/product_04.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Cetyl Pure</a></h3>
                        <p class="price"><del>45.00</del> &mdash; $20.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <a href="compra.html"> <img src="images/product_05.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">CLA Core</a></h3>
                        <p class="price">$38.00</p>
                    </div>
                    <div class="col-sm-6 col-lg-4 text-center item mb-4">
                        <span class="tag">Sale</span>
                        <a href="compra.html"> <img src="images/product_06.png" alt="Image"></a>
                        <h3 class="text-dark"><a href="compra.html">Poo Pourri</a></h3>
                        <p class="price"><del>$89</del> &mdash; $38.00</p>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col-md-12 text-center">
                        <div class="site-block-27">
                            <ul>
                                <li><a href="#">&lt;</a></li>
                                <li class="active"><span>1</span></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">&gt;</a></li>
                            </ul>
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


        <footer class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

                        <div class="block-7">
                            <h3 class="footer-heading mb-4">KUANTUM PHARMA</h3>
                            <p>Somos KUANTUM PHARMA un laboratorio especializado en el desarrollo y la fabricación de medicamentos producidos a partir de componentes de origen natural y biológico.</p>
                        </div>

                    </div>


                    <div class="col-md-6 col-lg-3">
                        <div class="block-5 mb-5">
                            <h3 class="footer-heading mb-4">CONTACTO</h3>
                            <ul class="list-unstyled">
                                <li class="address">CALLE ALACLA DE HENARES</li>
                                <li class="phone"><a href="tel://23923929210">+34 607873151</a></li>
                                <li class="email">KUANTUMPHARMA@MAIL.COM</li>
                            </ul>
                        </div>


                    </div>
                </div>
                <div class="row pt-5 mt-5 text-center">
                    <div class="col-md-12">
                        <p>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;
                            <script>document.write(new Date().getFullYear());</script> All rights reserved  <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank"
                                                                                                                                                                class="text-primary">kUANTUM</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
                    </div>

                </div>
            </div>
        </footer>
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
</html>
