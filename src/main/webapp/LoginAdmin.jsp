<%-- 
    Document   : LoginAdmin
    Created on : 21-feb-2023, 10:37:33
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  String msj = "" ;
    if (request.getAttribute("mensajeError") != null) {
       msj = (String)request.getAttribute("mensajeError");
    }
%> 
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

        <div class="container-fluid" style="background-image: url('imgP/empleadofondo.jpg'); background-repeat: no-repeat;  background-size: 100% 100%; height: 790px">
            <div class="col-sm-12 col-md-4 d-flex justify-content-center pt-5 pb-5" style="margin-left: 600px;">
                <div class="bg-white p-5 rounded-5 text-secondary shadow d-flex justify-content-center" style="width: 25rem ">
                    <form method="post" action="Empleado?accion=Login"">
                        <div class="d-flex justify-content-center">
                            <img src="assets/login-icon.svg" alt="login-icon" style="height: 7rem" />
                        </div>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="text-center fs-1 fw-bold">ACCESO ADMIN</div>
                        <div class="input-group mt-4">
                            <div class="input-group-text bg-info">
                                <img src="assets/username-icon.svg" alt="username-icon" style="height: 1rem" />
                            </div>
                            <input class="form-control bg-light" type="text" name="Email" placeholder="Email" />
                        </div>
                        <div class="input-group mt-1">
                            <div class="input-group-text bg-info">
                                <img src="assets/password-icon.svg" alt="password-icon" style="height: 1rem" />
                            </div>
                            <input class="form-control bg-light" type="password" name="Clave" placeholder="Password" />
                        </div>
                        <p style="color: red;"><%=msj%></p>
                        <div class="btn  text-black w-100 mt-4 fw-semibold shadow-sm">
                            <button type="submit" class="btn btn-primary" style="align-items: center; justify-content: center;">Login</button>
                        </div>
                        <div class="p-3">
                            <div class="border-bottom text-center" style="height: 0.9rem">
                                <span class="bg-white px-3">or</span>
                            </div>
                        </div>
                       
                    </form>

                </div>
            </div>
        </div>

        <!--FIN BARRA DE NAVEGACIÓN-->
        <script src="lb/js/bootstrap.min.js"></script>
    </body>
    <!-- INICIO FOOTER -->
    <jsp:include page="footer.jsp" />
    <!-- FIN FOOTER -->
</html>
