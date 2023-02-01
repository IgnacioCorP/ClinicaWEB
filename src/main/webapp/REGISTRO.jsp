<%-- 
    Document   : REGISTRO
    Created on : 01-feb-2023, 13:30:39
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INICIO</title>
    <link rel="stylesheet" href="lb/css/bootstrap.min.css">
        
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
    <!--FIN BARRA DE NAVEGACIÓN-->
     <!--FORMULARIO-->
    <div class="container-fluid bg-light align-item-center">
        <!--en esta linea se reparten los elementos-->
        <div class="row d-flex justify-content-center">
            <div class="col-sm-12 col-md-4 mt-3 mb-3 text-dark">
                <form method="" action="">
                    <h1 style="font-size: 30px; text-align: center;"><strong>REGISTRATE</strong></h1>
                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombre" placeholder="Nombre">
                    </div>

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Apellidos</label>
                        <input type="text" class="form-control" id="apellidos" placeholder="Apellidos">
                    </div>

                    <div class="mb-3">
                        <label for="exampleFormControlInput1" class="form-label">Correo</label>
                        <input type="email" class="form-control" id="correo" placeholder="name@example.com">
                    </div>

                    <div class="mb-5 pb-3">
                        <label for="exampleFormControlInput1" class="form-label">Fecha de Nacimiento</label>
                        <input type="date" class="form-control" id="fechaNac" placeholder="Fecha de Nacimiento">
                    </div>

                    <div class="mt-5 col-12 d-flex justify-content-center align-item-center">
                        <button class="btn btn-outline-success Hadow rounded border" type="submit">REGISTRARSE</button>

                    </div>

                </form>
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