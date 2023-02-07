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

        <div class="row d-flex justify-content-center"
             style="background-image: url('imgP/empleadofondo.jpg'); background-repeat: no-repeat;  background-size: 100% 100%;">
            <div class="col-sm-12 col-md-4 d-flex justify-content-center">
                <form style="padding-bottom: 290px;" method="post" action="logingproceso.php">
                    <h1
                        style="padding-top: 70px; font-family:'Trebuchet MS'; font-size: 40px; text-align: center; margin-left: 10px; margin-right: 10px;">
                        ¡BIENVENIDO A KUANTUM PHARMA! </h1>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="form-group"
                         style="padding-bottom: 20px; padding-top: 40px; margin-left: 30px; margin-right: 30px;">
                        <label for="exampleInputEmail1">EMAIL</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" name="Email"
                               aria-describedby="emailHelp" placeholder="Email">

                    </div>
                    <div class="form-group" style="padding-bottom: 20px; margin-left: 30px; margin-right: 30px;">
                        <label for="exampleInputPassword1">PASSWORD</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" name="Clave"
                               placeholder="Password">
                    </div>
                    <div style="padding-bottom: 10px; margin-left: 30px; margin-right: 30px;">
                        <a href="REGISTRO.jsp">REGISTRATE</a>
                    </div>

                    <div style="padding-bottom: 10px; margin-left: 30px; margin-right: 30px;"> <button type="submit"
                                                                                                       class="btn btn-primary" style="align-items: center; justify-content: center;">INICIAR
                            SESIÓN</button>
                    </div>
                </form>
            </div>



        </div>

        <!--FIN BARRA DE NAVEGACIÓN-->
        <script src="lb/js/bootstrap.min.js"></script>
    </body>
    <!-- INICIO FOOTER -->
    <jsp:include page="footer.jsp" />
    <!-- FIN FOOTER -->
</html>
