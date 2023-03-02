<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Laboratorios</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">
        <link rel="stylesheet" href="lb/fontawesome-free-6.2.0-web/css/all.min.css">
        <style>
            .searchbar {
                margin-bottom: auto;
                margin-top: auto;
                height: 60px;
                background-color: #353b48;
                border-radius: 30px;
                padding: 10px;
            }
            .search_input {
                color: white;
                border: 0;
                outline: 0;
                background: none;
                width: 0;
                caret-color: transparent;
                line-height: 40px;
                padding: 0 10px;
                width: 450px;
                caret-color: red;
            }
            .searchbar .search_icon:hover {
                color: white;
                background: #e74c3c;
            }
            .search_icon {
                height: 40px;
                width: 40px;
                float: right;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 50%;
                text-decoration: none;
                background: white;
                color: #e74c3c;
            }
        </style>
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
                                <a class="nav-link" href="registrarDepartamentos.jsp" id="navbarDropdown" role="button" aria-expanded="false">AÑADIR DEPARTAMENTO</a>
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
        <div class="container h-100 py-4">
            <div class="d-flex justify-content-center h-100">
                <div class="searchbar ">
                    <form method="post" action="Departamento?accion=buscar">
                        <input class="search_input " type="text" name="bus" placeholder="Buscar...">
                        <button class="search_icon"><i class='fas fa-search'></i></button>
                    </form>
                </div>
            </div>
        </div>

    </div>
    <div class="row  d-flex justify-content-center "
         style="background-image: url('imgP/fondoindex.jpg'); background-repeat: no-repeat;  background-size: 100% 100%;">

        <div class="container-fluid col-sm-12 col-md-6" >
            <h1 style="justify-content: center; display: flex; color: white; padding-top: 100px">DEPARTAMENTOS</h1>
            <div class="card mb-3" style="max-width: 800px;">
                <div class="row g-0">
                    <c:forEach items="${departamentos}" var="departamento" >
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">${departamento.getIDdep()}</h5>
                                <p class="card-text">${departamento.getNombre()}</p>
                                <p class="card-text"><small class="text-muted">${departamento.getDescripcion()}</small></p>
                                <td ><a class="text-dark" href="Eliminar?eliminar=${departamento.getIDdep()}"><i class="fa-solid fa-trash"></i></a></td>
                                <td ><a class="text-dark" href="Eliminar?editar=${departamento.getIDdep()}"><i class="fa-solid fa-pen-to-square"></i></a></td>

                            </div>
                        </div>
                        <div class="col-md-4">
                            <img src="imgP/oficina.png" style="width: 400px; height: 150px " class="img-fluid rounded-start" alt="...">
                        </div>
                    </c:forEach>
                </div>
            </div>

        </div>
    </div>
    
    <script src="lb/js/bootstrap.min.js"></script>
</body>

</html>