<%-- 
    Document   : REGISTRO
    Created on : 01-feb-2023, 13:30:39
    Author     : Alumno Mañana
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

                            <li class="nav-item">
                                <a class="nav-link" href="index.jsp">INICIO</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="productos.jsp" id="navbarDropdown" role="button"
                                   aria-expanded="false">PRODUCTOS</a>

                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="productos.jsp" id="navbarDropdown" role="button"
                                   aria-expanded="false">LABORATORIOS</a>

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
                <form method="POST" action="Empleado?accion=insertar" >
                    <h4>REGISTRATE</h4>
                    <input class="controls" type="text" name="Nif" id="nifs" placeholder="Nif">
                    <input class="controls" type="text" name="Nombre" id="nombres" placeholder="Nombre">
                    <input class="controls" type="text" name="Apellido" id="apellidos" placeholder="Apellido">
                    <input class="controls" type="text" name="Telefono" id="correo" placeholder="Telefono">
                    <input class="controls" type="email" name="Email" id="correo" placeholder="Email">
                    <input type="password" class="controls" name="Clave" placeholder="Contraseña">
                    <div>
                        <select name="departamento">
                            <option selected>DEPARTAMENTOS</option>
                            <c:forEach items="${departamentos}" var="departamento">
                                <option value="${departamento.getIDdep()}">
                                    ${departamento.getNombre()}
                                </option>
                            </c:forEach>

                        </select> 
                    </div>
                    <div>
                        <select name="laboratorio">
                            <option selected>LABORATORIOS</option>
                            <c:forEach items="${laboratorios}" var="laboratorio">
                                <option value="${laboratorio.getIDlab()}">
                                    ${laboratorio.getNombresede()}
                                </option>
                            </c:forEach>

                        </select>
                    </div>

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