<%-- 
    Document   : IniciarSesion
    Created on : 07-feb-2023, 10:03:24
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

    <body>
        <!-- INICIO BARRA NAVEGACIÓN -->
        <jsp:include page="header.jsp" />
        <!--FIN BARRA DE NAVEGACIÓN-->

        <div class="container-fluid" style="background-image: url('imgP/empleadofondo.jpg'); background-repeat: no-repeat;  background-size: 100% 100%;">
            <div class="col-sm-12 col-md-4 d-flex justify-content-center pt-5 pb-5" style="margin-left: 600px;">
                <div class="bg-white p-5 rounded-5 text-secondary shadow d-flex justify-content-center" style="width: 25rem ">
                    <form method="post" action="logingproceso.php">
                        <div class="d-flex justify-content-center">
                            <img src="assets/login-icon.svg" alt="login-icon" style="height: 7rem" />
                        </div>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="text-center fs-1 fw-bold">Login</div>
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
                        <div class="d-flex justify-content-around mt-1">
                            <div class="d-flex align-items-center gap-1">
                                <input class="form-check-input" type="checkbox" />
                                <div class="pt-1" style="font-size: 0.9rem">Remember me</div>
                            </div>

                        </div>
                        <div class="btn  text-black w-100 mt-4 fw-semibold shadow-sm">
                            <button type="submit" class="btn btn-primary" style="align-items: center; justify-content: center;">Login</button>
                        </div>

                        <div class="d-flex gap-1 justify-content-center mt-1">
                            <div>No tienes cuenta?</div>
                            <a href="IniciarSesion.jsp" class="text-decoration-none text-info fw-semibold">REGISTRATE</a>
                        </div>
                        <div class="p-3">
                            <div class="border-bottom text-center" style="height: 0.9rem">
                                <span class="bg-white px-3">or</span>
                            </div>
                        </div>
                        <div class="btn d-flex gap-2 justify-content-center border mt-3 shadow-sm">
                            <img src="assets/google-icon.svg" alt="google-icon" style="height: 1.6rem" />
                            <div class="fw-semibold text-secondary">Continue with Google</div>
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
