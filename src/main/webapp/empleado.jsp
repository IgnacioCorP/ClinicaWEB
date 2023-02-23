<%-- 
    Document   : empleado
    Created on : 07-feb-2023, 9:46:35
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String user = "";
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("Email") != null) {
        user =(String) sesion.getAttribute("Email");
    }
%>
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
                            <a href="cargarModifica?clase=usuario&Email=<%=user%>" class="btn btn-primary">MI CUENTA</a>
                        </div>
                        <div class="text-center">
                            <a href="cargarModifica?clase=usuario&Email=<%=user%>" class="btn btn-primary"> <%=user%></a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <!--FIN BARRA DE NAVEGACIÓN -->
        <div class="row  d-flex justify-content-center"
             style="padding-top: 100px;  background-image: url('imgP/fondoindex.jpg'); background-repeat: no-repeat;  background-size: 100% 100%; padding-bottom: 100px; font-size: 40px; height: 790px;">
            <div class="col sm-12 col-md-4">
                <div class="container text-center" >
                    <h1 style="color: white; text-shadow: 2px 2px 2px black;">BIENVENIDO A KUANTUM PHARMA!</h1>
                    <p style="color: white; text-shadow: 2px 2px 2px black; font-size: 20px;">MEDICINA BASADA EN LA EVIDENCIA</p>
                    <p style="color: white; text-shadow: 2px 2px 2px black; font-size: 40px; padding-top: 30px;">¡¡¡GRACIAS POR TRABAJAR CON NOSOTROS!!!

                    </p>
                </div>
            </div>
        </div>



        <script src="lb/js/bootstrap.min.js"></script>
    </body>
    <!-- INICIO FOOTER -->
    <jsp:include page="footer.jsp" />
    <!-- FIN FOOTER -->

</html>