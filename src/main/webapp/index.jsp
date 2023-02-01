<%-- 
    Document   : index
    Created on : 01-feb-2023, 13:12:38
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INICIO</title>
    <link rel="stylesheet" href="lb/css/bootstrap.min.css">
    <style>
        .texto {
            color: black;
            font-size: 18px;
            text-align: justify;
            font-family: Georgia, 'Times New Roman', Times, serif;
            text-align: center;
        }

        .titulo {
            color: #040D52;
            font-size: 40px;
            text-align: center;
            font-family: Georgia, 'Times New Roman', Times, serif;
        }
        .texto2{
            color: black;
            font-size: 18px;
            text-align: justify;
            font-family: Georgia, 'Times New Roman', Times, serif;
        }
    </style>
</head>

<body>
    <!--BARRA DE NAVEGACIÓN-->
    <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
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
                                    style="width: 45px; height: 40px; padding-bottom: 5PX;"></a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="REGISTRO.jsp">REGISTRARSE</a></li>
                                <li><a class="dropdown-item" href="IniciarSesion.jsp">INICIAR SESIÓN</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">NOSOTROS</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="productos.jsp" id="navbarDropdown" role="button"
                                aria-expanded="false">PRODUCTOS</a>

                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false" style="color: #000716;">
                                LABORATORIOS</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">SEDE NORTE</a></li>
                                <li><a class="dropdown-item" href="#">SEDE SUR</a></li>
                                <li><a class="dropdown-item" href="#">SEDE OCCIDENTE</a></li>
                            </ul>
                        </li>
                    </ul>

                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="BUSCAR" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">BUSCAR</button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
    <div class="row d-flex justify-content-center">
        <div class="col-sm-12 col-md-4 text-align-center d-flex justify-content-center">
            <article>
                <p class="titulo">KUANTUM PHARMA <br>
                <p class="texto"> MEDICINA BASADA EN LA EVIDENCIA <br> <br>
                <p class="texto2"  style="margin-left: 20px; margin-right: 20px;">
                    Somos KUANTUM PHARMA un laboratorio
                    especializado en el desarrollo y la fabricación de
                    medicamentos producidos a partir de componentes
                    de origen natural y biológico.

                    Convencidos de la medicina biorreguladora de sistemas,
                    que se basa en el fortalecimiento de la capacidad del
                    organismo como red biológica, capaz de regularse por
                    si mismo, con ayuda complementaria y terapéutica de
                    nuestros medicamentos fabricados con concentraciones
                    bajas de varios componentes activos de origen natural.

                    Estamos comprometidos con el cuidado de la salud
                    y el bienestar de nuestros pacientes, por eso nos
                    respaldamos en nuestra amplia experiencia, desarrollo
                    tecnológico y un equipo humano orientado a lograr la
                    excelencia y calidad de nuestros productos.
                </p>
                </p>
                </p>
            </article>
        </div>
    </div>
    <!--FIN BARRA DE NAVEGACIÓN-->
   
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
                        <span>© 2021. KUANTUM PHARMA. <a rel="nofollow" href="https://www.grupoceep.com/aviso-legal/"
                                style="color: black;">Aviso Legal</a> | <a rel="nofollow"
                                href="https://www.grupoceep.com/politica-de-privacidad/" style="color: black;">Política
                                de Privacidad</a> |
                            <a rel="nofollow" href="https://www.grupoceep.com/politica-cookies/"
                                style="color: black;">Política de
                                Cookies</a></span>
                    </div>
                    <div class="col-sm-12 col-md-4 d-flex justify-content-around "
                        style="padding-bottom: 10px; padding-top: 15px;">
                        <div style="text-align: center;  color: aliceblue; padding-top: 4px; padding-left: 20px; ">
                            Contacta con nosotros:
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
