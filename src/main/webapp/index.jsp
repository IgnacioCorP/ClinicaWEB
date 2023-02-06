<%-- 
    Document   : index
    Created on : 01-feb-2023, 13:12:38
    Author     : Alumno Mañana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>INICIO</title>
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">
        <style>
            .texto {
                color: black;
                font-size: 18px;
                text-align: justify;
                font-family: Georgia, 'Times New Roman', Times, serif;
                text-align: center;
            }

            .titulo {
                color: #040D52;
                font-size: 40px;
                text-align: center;
                font-family: Georgia, 'Times New Roman', Times, serif;
            }
            .texto2{
                color: black;
                font-size: 18px;
                text-align: justify;
                font-family: Georgia, 'Times New Roman', Times, serif;
            }
        </style>
    </head>

    <body>
        <!-- INICIO BARRA NAVEGACIÓN -->
        <jsp:include page="header.jsp" />
        <!-- INICIO BARRA NAVEGACIÓN -->
        <div class="row d-flex justify-content-center">
            <div class="col-sm-12 col-md-4 text-align-center d-flex justify-content-center">
                <article>
                    <p class="titulo">KUANTUM PHARMA <br>
                    <p class="texto"> MEDICINA BASADA EN LA EVIDENCIA <br> <br>
                    <p class="texto2"  style="margin-left: 20px; margin-right: 20px;">
                        Somos KUANTUM PHARMA un laboratorio
                        especializado en el desarrollo y la fabricación de
                        medicamentos producidos a partir de componentes
                        de origen natural y biológico.

                        Convencidos de la medicina biorreguladora de sistemas,
                        que se basa en el fortalecimiento de la capacidad del
                        organismo como red biológica, capaz de regularse por
                        si mismo, con ayuda complementaria y terapéutica de
                        nuestros medicamentos fabricados con concentraciones
                        bajas de varios componentes activos de origen natural.

                        Estamos comprometidos con el cuidado de la salud
                        y el bienestar de nuestros pacientes, por eso nos
                        respaldamos en nuestra amplia experiencia, desarrollo
                        tecnológico y un equipo humano orientado a lograr la
                        excelencia y calidad de nuestros productos.
                    </p>
                    </p>
                    </p>
                </article>
            </div>
        </div>
        <!--FIN BARRA DE NAVEGACIÓN-->

        <script src="lb/js/bootstrap.min.js"></script>
    </body>
    
    <!-- INICIO BARRA NAVEGACIÓN -->
    <jsp:include page="footer.jsp" />
    <!-- INICIO BARRA NAVEGACIÓN -->


</html>
