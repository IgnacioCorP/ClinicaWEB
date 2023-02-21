<%-- 
    Document   : registrarLaboratorio
    Created on : 10-feb-2023, 12:06:53
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRO LABORATORIOS</title>
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
                    <a class="navbar-brand" href="empleado.php"><img src="imgP/LOGO.png" class="img-fluid" style="width: 150px; height: 120px;"></a>
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
                                <a class="nav-link" href="Empleado?accion=listarClientes" id="navbarDropdown" role="button" aria-expanded="false">EMPLEADOS</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="Empleado?accion=listarClientes" id="navbarDropdown" role="button" aria-expanded="false">CLIENTES</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="Laboratorio?accion=listarLaboratorios" id="navbarDropdown" role="button" aria-expanded="false">LABORATORIOS</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="Empleado?accion=listarClientes" id="navbarDropdown" role="button" aria-expanded="false">DEPARTAMENTOS</a>
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
                    <form method="POST" action="Laboratorio?accion=insertar">
                        <h4>REGISTRA LABORATORIO</h4>
                        <input type="text" class="form-control"  name="Nombre_sede" placeholder="Nombre">

                        <input type="text" class="form-control"  name="Direccion" placeholder="Direccion">

                        <input type="text" class="form-control"  name="Telefono" placeholder="Telefono"><br><br>

                        <button class="btn btn-outline-success Hadow rounded border" type="submit">REGISTRAR</button>
                    </form>
                </div>
            </div>


        </div>

        <script src="lb/js/bootstrap.min.js"></script>
    </body>

    <!-- INICIO FOOTER -->
    <jsp:include page="footer.jsp" />
    <!-- FIN FOOTER -->
</html>
