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


        <div class="col-sm-12 d-flex justify-content-center " style="background-image: url(imgP/fondo.jpg); background-repeat: no-repeat; background-size: 100% 100%; ">
            <section class="form-register mb-5 mt-5" >
                <form method="POST" action="Empleado?accion=editar" >
                    <h4>REGISTRATE</h4>
                    <input class="controls"  type="text" id="nif" name="Nif" class="form-control" value="<%= request.getParameter("Nif")%>">                    
                    <input class="controls"  type="text" id="nombre" name="Nombre" class="form-control" value="<%= request.getParameter("Nombre")%>">
                    <input class="controls"  type="text" id="apellido" name="Apellido" class="form-control" value="<%= request.getParameter("Apellido")%>">                    
                    <input class="controls" type="text" name="Telefono" id="correo" placeholder="Telefono">
                    <input class="controls"  type="email" id="email" name="Email" class="form-control" value="<%= request.getParameter("Email")%>">
                    <input class="controls"  type="password" id="clave" name="clave" class="form-control">
                    <div>
                        <select name="departamento">
                            <option selected>DEPARTAMENTOS</option>
                            <c:forEach items="${departamentos}" var="departamento">
                                <option value="${departamento.getIDdep()}">
                                    ${departamento.getNombre()}
                                </option>
                            </c:forEach>

                        </select> 
                    </div>
                    <div>
                        <select name="laboratorio">
                            <option selected>LABORATORIOS</option>
                            <c:forEach items="${laboratorios}" var="laboratorio">
                                <option value="${laboratorio.getIDlab()}">
                                    ${laboratorio.getNombresede()}
                                </option>
                            </c:forEach>

                        </select>
                    </div>

                    <input type="hidden" name="oculto" value="1">
                    <input class="botons" type="submit" value="Actualizar">
                </form>
            </section>
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
