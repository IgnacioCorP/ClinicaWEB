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
        <title>REGISTRO LABORATORIOS</title>
    </head>
    <style>
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
    <body>
        <!-- INICIO BARRA NAVEGACIÓN -->
        <jsp:include page="header.jsp" />
        <!--FIN BARRA DE NAVEGACIÓN-->
        <div class="row  d-flex justify-content-center " style="background-image: url('imgP/fondoindex.jpg'); background-repeat: no-repeat;  background-size: 100% 100%; padding-top: 100px; padding-bottom: 100px; height:790px;">
            <div class="form-register col sm-12 col-md-4">
                <div class="container text-center">
                    <form method="POST" action="LaboratorioServlet?accion=insertar">
                        <h4>REGISTRA LABORATORIO</h4>
                        <input type="text" class="form-control"  name="Nombre_sede" placeholder="Nombre">

                        <input type="text" class="form-control"  name="Direccion" placeholder="Direccion">

                        <input type="text" class="form-control"  name="Telefono" placeholder="Telefono"><br><br>

                        <button class="btn btn-outline-success Hadow rounded border" type="submit">REGISTRAR</button>
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
