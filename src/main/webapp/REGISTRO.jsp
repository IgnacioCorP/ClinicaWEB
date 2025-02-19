

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>INICIO</title>
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">
        <style> 
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }



            .form-register {
                width: 400px;
                background: #24303c;
                padding: 30px;
                margin: auto;
                margin-top: 100px;
                border-radius: 4px;
                font-family: 'calibri';
                color: white;
                box-shadow: 7px 13px 37px #000;
            }

            .form-register h4 {
                font-size: 22px;
                margin-bottom: 20px;
            }

            .controls {
                width: 100%;
                background: #24303c;
                padding: 10px;
                border-radius: 4px;
                margin-bottom: 16px;
                border: 1px solid #1f53c5;
                font-family: 'calibri';
                font-size: 18px;
                color: white;
            }

            .form-register p {
                height: 40px;
                text-align: center;
                font-size: 18px;
                line-height: 40px;
            }

            .form-register a {
                color: white;
                text-decoration: none;
            }

            .form-register a:hover {
                color: white;
                text-decoration: underline;
            }

            .form-register .botons {
                width: 100%;
                background: #1f53c5;
                border: none;
                padding: 12px;
                color: white;
                margin: 16px 0;
                font-size: 16px;
            }
        </style>
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

        <!--FORMULARIO-->
        <div class="col-sm-12 d-flex justify-content-center " style="background-image: url(imgP/fondo.jpg); background-repeat: no-repeat; background-size: 100% 1000px">
            <section class="form-register mb-5 mt-5" >
                <form method="POST" action="ClienteServlet?accion=insertar" >
                    <h4>REGISTRATE</h4>
                    <input class="controls" type="text" name="Nif" id="nombres" placeholder="Nif">
                    <input class="controls" type="text" name="Nombre" id="apellidos" placeholder="Nombre">
                    <input class="controls" type="text" name="Apellido" id="correo" placeholder="Apellido">
                    <input class="controls" type="email" name="Email" id="correo" placeholder="Correo">
                    <input type="password" class="controls" name="Clave" placeholder="Contraseña">
                    <p>Estoy de acuerdo con <a href="#">Terminos y Condiciones</a></p>
                    <input type="hidden" name="oculto" value="1">
                    <input class="botons" type="submit" value="Registrar">
                    <p><a href="IniciarSesion.jsp">¿Ya tengo Cuenta?</a></p>
                </form>
            </section>
        </div>
        <script src="lb/js/bootstrap.min.js"></script>
    </body>

    <!-- INICIO FOOTER -->
    <jsp:include page="footer.jsp" />
    <!-- FIN FOOTER -->

</html>