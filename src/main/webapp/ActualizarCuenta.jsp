<%-- 
    Document   : listarCliente
    Created on : 07-feb-2023, 11:48:50
    Author     : Alumno Mañana
--%>

<%@page import="Dominio.Empleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Empleado usuario = (Empleado) request.getAttribute("usuario");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <style type="text/css">
            /* Aplica un fondo gris oscuro a toda la página */
            body {
                background-color: #1a1a1a;
                color: #fff;
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


                        </ul>
                        <div class="text-center">
                            <a href="index.jsp" class="btn btn-primary">CERRAR SESIÓN</a>
                        </div>
                        <div class="text-center">
                            <a href="" class="btn btn-primary">MI CUENTA</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!--FIN BARRA DE NAVEGACIÓN -->

        <div class="container my-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header bg-dark text-white">
                            <h5>Actualizar cuenta</h5>
                        </div>
                        <div class="card-body">
                            <form action="Empleado?accion=editar" method="post">
                                <div class="form-group">
                                    <label for="nif">NIF:</label>
                                    <input type="text" id="nif" name="nif" class="form-control" value="<%= usuario.getEmpleadoPK().getNif()%>">
                                </div>
                                <div class="form-group">
                                    <label for="nombre">Nombre:</label>
                                    <input type="text" id="nombre" name="nombre" class="form-control" value="<%= usuario.getNombre()%>">
                                </div>
                                <div class="form-group">
                                    <label for="apellido">Apellido:</label>
                                    <input type="text" id="apellido" name="apellido" class="form-control" value="<%= usuario.getApellido()%>">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email:</label>
                                    <input type="email" name="email" class="form-control" value="<%= usuario.getEmail()%>">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email:</label>
                                    <input type="email"  name="email" class="form-control" value="<%= usuario.getEmail()%>">
                                </div>
                                <div class="form-group">
                                    <label for="email">Departamento</label>
                                    <input type="text" name="departamento" class="form-control" value="<%= usuario.getDepartamento().getNombre() %>">
                                </div>
                                <div class="form-group">
                                    <label for="email">Laboratorio</label>
                                    <input type="text"  name="laboratorio" class="form-control" value="<%= usuario.getLaboratorio().getNombresede() %>">
                                </div>
                                
                                <div class="form-group">
                                    <label for="clave">Clave:</label>
                                    <input type="password" id="clave" name="clave" class="form-control">
                                </div>
                                <button type="submit" class="btn btn-primary">Actualizar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="lb/js/bootstrap.min.js"></script>

    </body>
    <!-- INICIO FOOTER -->
    <jsp:include page="footer.jsp" />
    <!-- FIN FOOTER -->
</html>
