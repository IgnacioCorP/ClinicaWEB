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
        <title>Document</title>
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">

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
                                <a class="nav-link" href="productos.jsp" id="navbarDropdown" role="button"
                                   aria-expanded="false">LABORATORIOS</a>

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

        <div class="row  d-flex justify-content-center "
             style="background-image: url('imgP/fondoindex.jpg'); background-repeat: no-repeat;  background-size: 100% 100%; padding-top: 100px; padding-bottom: 100px; font-size: 40px; height: 790px;">
            <div class="col sm-12 col-md-4">
                <div class="container text-center">
                    <h1 style="color: white; text-shadow: 2px 2px 2px black;">BIENVENIDO A KUANTUM PHARMA!</h1>
                    <p style="color: white; text-shadow: 2px 2px 2px black; font-size: 20px;">MEDICINA BASADA EN LA EVIDENCIA</p>
                    <p style="color: white; text-shadow: 2px 2px 2px black; font-size: 20px;">Somos KUANTUM PHARMA un laboratorio
                        especializado en el desarrollo y la fabricación de
                        medicamentos producidos a partir de componentes
                        de origen natural y biológico.

                    </p>

                    <div class="text-center">
                        <a href="IniciarSesion.jsp" class="btn btn-primary">Empezar</a>
                    </div>
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