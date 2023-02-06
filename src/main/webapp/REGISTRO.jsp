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
        <!-- INICIO BARRA NAVEGACIÓN -->
        <jsp:include page="header.jsp" />
        <!--FIN BARRA DE NAVEGACIÓN-->
        <!--FORMULARIO-->
        <div class="container-fluid bg-light align-item-center">
            <!--en esta linea se reparten los elementos-->
            <div class="row d-flex justify-content-center">
                <div class="col-sm-12 col-md-4 d-flex text-dark justify-content-center">
                    <form method="POST" action="RegistrarClienteServlet">
                        <h1 style="font-size: 30px; text-align: center;"><strong>REGISTRATE</strong></h1>
                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <label for="exampleFormControlInput1" class="form-label">Nif</label>
                            <input type="text" class="form-control" name="Nif" placeholder="NIF">
                        </div>
                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                            <input type="text" class="form-control"  name="Nombre" placeholder="Nombre">
                        </div>

                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <label for="exampleFormControlInput1" class="form-label">Apellidos</label>
                            <input type="text" class="form-control"  name="Apellido" placeholder="Apellidos">
                        </div>
                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <label for="exampleFormControlInput1" class="form-label">Teléfono</label>
                            <input type="text" class="form-control"  name="Telefono" placeholder="Teléfono">
                        </div>
                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <label for="exampleFormControlInput1" class="form-label">Correo</label>
                            <input type="email" class="form-control"  name="Email" placeholder="name@example.com">
                        </div>

                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <label for="exampleFormControlInput1" class="form-label">Fecha de Nacimiento</label>
                            <input type="date" class="form-control"  name="Fecha_nac" placeholder="Fecha de Nacimiento">
                        </div>
                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <label for="exampleFormControlInput1" class="form-label">Contraseña</label>
                            <input type="password" class="form-control"  name="Clave" placeholder="Contraseña">
                        </div>
                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <a href="sesion.html">¿Ya tienes cuenta?</a>
                        </div>
                        <input type="hidden" name="oculto" value="1">
                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <button class="btn btn-outline-success Hadow rounded border" type="submit">REGISTRARSE</button>
                        </div>

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