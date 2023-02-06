<%-- 
    Document   : header
    Created on : 06-feb-2023, 11:15:54
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HEADER</title>
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
        <script src="lb/js/bootstrap.min.js"></script>

    </body>
</html>
