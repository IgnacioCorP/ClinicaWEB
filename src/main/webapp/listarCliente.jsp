<%-- 
    Document   : listarCliente
    Created on : 07-feb-2023, 11:48:50
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">
    </head>
    <body>
        <!--BARRA DE NAVEGACIÓN-->
        <div class="container-fluid ">
            <nav class="navbar navbar-expand-lg navbar-light " style="background: transparent;">
                <div class="container-fluid">
                    <!--ÍCONO APP-->
                    <a class="navbar-brand" href="empleado.php"><img src="imgP/LOGO.png" class="img-fluid"
                                                                     style="width: 150px; height: 120px;"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link" href="empleado.jsp">INICIO</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="productosempleado.jsp" id="navbarDropdown" role="button"
                                   aria-expanded="false">PRODUCTOS</a>

                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="listadoClientes.jsp" id="navbarDropdown" role="button"
                                   aria-expanded="false">CLIENTES</a>
                            </li>
                            <li class="nav-item ">
                                <a class="nav-link" href="listarCliente.jsp" id="navbarDropdown" role="button"
                                   aria-expanded="false">MI CUENTA</a>
                            </li>




                        </ul>

                    </div>
                </div>
            </nav>
        </div>

        <!--FIN BARRA DE NAVEGACIÓN -->
        <div class="container-fluid col-sm-12 col-md-6">

            <h1 style="justify-content: center; display: flex; color: blue; padding-top: 100px">CLIENTES</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">NIF</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Email</th>
                        <th scope="col">Modificar</th>
                        <th scope="col">Eliminar</th>

                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${cliente}" var="cliente" >
                    <tr>
                        <td>${cliente.nif}</td>
                        <td>${cliente.nombre}</td>
                        <td>${cliente.apellido}</td>
                        <td>${cliente.email}</td>
                        <td><a class="text-dark" href=""><i class="fa-solid fa-pen-to-square"></i></a></td>
                        <td ><a class="text-dark" href="Eliminar?eliminar=${cliente.nif}"><i class="fa-solid fa-trash"></i></a></td>

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
