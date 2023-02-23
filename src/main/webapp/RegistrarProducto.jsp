<%-- 
    Document   : RegistrarProducto
    Created on : 15-feb-2023, 10:44:45
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">

    </head>
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
        <div class="row  d-flex justify-content-center " style="background-image: url('imgP/fondoindex.jpg'); background-repeat: no-repeat;  background-size: 100% 100%; padding-top: 100px; padding-bottom: 100px; height:790px;">
            <div class="form-register col sm-12 col-md-4">
                <div class="container text-center">
                    <form action="Productos?accion=insertar" method="POST"  enctype="multipart/form-data">
                        <h4>REGISTRAR PRODUCTO</h4>
                        <input class="controls" type="text" name="Nombre" placeholder="nombre" >

                        <input class="controls" type="text" name="Precio" placeholder="precio" >

                        <input type="file" class="controls" style="color: white;"  name="imagen" ><br><br>

                        <input type="submit" value="SUBIR PRODUCTO">
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
