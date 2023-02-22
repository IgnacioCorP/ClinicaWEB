<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Laboratorios</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">
        <link rel="stylesheet" href="lb/fontawesome-free-6.2.0-web/css/all.min.css">

    </head>
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
                                <a class="nav-link" href="Empleado?accion=listarClientes" id="navbarDropdown" role="button" aria-expanded="false">EMPLEADOS</a>
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
                                <a class="nav-link" href="registrarLaboratorio.jsp" id="navbarDropdown" role="button" aria-expanded="false">AÑADIR LABORATORIO</a>
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
        <div class="container-fluid col-sm-12 col-md-6">

            <h1 style="justify-content: center; display: flex; color: blue; padding-top: 100px">LABORATORIOS</h1>
            <table class="table">
                <thead>
                    <tr>

                        <th scope="col">NOMBRE</th>
                        <th scope="col">DIRECCION</th>
                        <th scope="col">TELÉFONO</th>
                        <th scope="col">ELIMINAR</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${laboratorios}" var="laboratorio" >
                        <tr>
                            <td>${laboratorio.getNombresede()}</td>
                            <td>${laboratorio.getDireccion()}</td>
                            <td>${laboratorio.getTelefono()}</td>
                            <td ><a class="text-dark" href="EliminarLab?eliminar=${laboratorio.getIDlab()}"><i class="fa-solid fa-trash"></i></a></td>

                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <script src="lb/js/bootstrap.min.js"></script>
    </body>
    <!-- INICIO FOOTER -->
    <jsp:include page="footer.jsp" />
    <!-- FIN FOOTER -->
</html>