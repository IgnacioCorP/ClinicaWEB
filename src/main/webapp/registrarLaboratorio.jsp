<%-- 
    Document   : registrarLaboratorio
    Created on : 10-feb-2023, 12:06:53
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                    <form method="POST" action="LaboratorioServlet?accion=insertar">
                        <h1 style="font-size: 30px; text-align: center;"><strong>REGISTRAR</strong></h1>
                        
                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                            <input type="text" class="form-control"  name="Nombre_sede" placeholder="Nombre">
                        </div>

                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <label for="exampleFormControlInput1" class="form-label">Direccion</label>
                            <input type="text" class="form-control"  name="Direccion" placeholder="Direccion">
                        </div>
                        
                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <label for="exampleFormControlInput1" class="form-label">Telefono</label>
                            <input type="text" class="form-control"  name="Telefono" placeholder="Telefono">
                        </div>

                        <div class="mb-2" style="margin-left: 30px; margin-right: 30px;">
                            <button class="btn btn-outline-success Hadow rounded border" type="submit">REGISTRAR</button>
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
