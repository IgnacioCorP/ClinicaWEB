<%
    String user = "";
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("Email") != null) {
        user = (String) sesion.getAttribute("Email");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Pharma &mdash; Colorlib Template</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Rubik:400,700|Crimson+Text:400,400i" rel="stylesheet">
        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">


        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/style.css">

    </head>

    <body>

        <div class="site-wrap">


            <div class="container-fluid ">
                <nav class="navbar navbar-expand-lg navbar-light " style="background: transparent;">
                    <div class="container-fluid">
                        <!--ÍCONO APP-->
                        <a class="navbar-brand" href="cliente.jsp"><img src="imgP/LOGO.png" class="img-fluid" style="width: 150px; height: 120px;"></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link" href="cliente.jsp">INICIO</a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link" href="productoscliente.jsp" id="navbarDropdown" role="button" aria-expanded="false">PRODUCTOS</a>

                                </li>

                            </ul>


                        </div>
                        <div class="text-center">
                            <a href="index.jsp" class="btn btn-primary">CERRAR SESIÓN</a>
                        </div>
                        <div class="text-center">
                            <a href="" class="btn btn-primary">MI CUENTA</a>
                        </div>

                        <a href="" class="btn btn-primary"> <%=user%></a>
                    </div>
                </nav>
            </div>


            <div class="site-section">
                <div class="container">
                    <div class="row mb-5">

                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-5 mb-md-0">
                            <h2 class="h3 mb-3 text-black">DETALLES DE COMPRA</h2>
                            <div class="p-3 p-lg-5 border">
                                <div class="form-group">
                                    <label for="c_country" class="text-black">PAÍS <span class="text-danger">*</span></label>
                                    <select id="c_country" class="form-control">
                                        <option value="1">PAÍS</option>
                                        <option value="2">ESPAÑA</option>
                                        <option value="3">COLOMBIA</option>
                                        <option value="4">REP. DOMINICANA</option>
                                        <option value="5">SUIZA</option>
                                        <option value="6">ALBANIA</option>
                                        <option value="7">HAITÍ</option>

                                    </select>
                                </div>
                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for="c_fname" class="text-black">NOMBRE <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_fname" name="c_fname">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="c_lname" class="text-black">APELLIDO<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_lname" name="c_lname">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <label for="c_address" class="text-black">DIRECCIÓN <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_address" name="c_address" placeholder="DIRECCIÓN">
                                    </div>
                                </div>


                                <div class="form-group row mb-5">
                                    <div class="col-md-6">
                                        <label for="c_email_address" class="text-black">EMAIL <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_email_address" name="c_email_address">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="c_phone" class="text-black">TELÉFONO <span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" id="c_phone" name="c_phone" placeholder="TELÉFONO">
                                    </div>
                                </div>


                            </div>
                        </div>
                        <div class="col-md-6">

                          

                            <div class="row mb-5">
                                <div class="col-md-12">
                                    <h2 class="h3 mb-3 text-black">ORDEN</h2>
                                    <div class="p-3 p-lg-5 border">
                                        <table class="table site-block-order-table mb-5">
                                            <thead>
                                            <th>PRODUCTO</th>
                                            <th>TOTAL</th>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Bioderma <strong class="mx-2">x</strong> 1</td>
                                                    <td>$55.00</td>
                                                </tr>
                                                <tr>
                                                    <td>Ibuprofeen <strong class="mx-2">x</strong> 1</td>
                                                    <td>$45.00</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-black font-weight-bold"><strong>SUBTOTAL</strong></td>
                                                    <td class="text-black">$350.00</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-black font-weight-bold"><strong>TOTAL</strong></td>
                                                    <td class="text-black font-weight-bold"><strong>$350.00</strong></td>
                                                </tr>
                                            </tbody>
                                        </table>



                                        <div class="form-group">
                                            <button class="btn btn-primary btn-lg btn-block" onclick="window.location = 'gracias.jsp'">FINALIZAR PAGO</button>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <!-- </form> -->
                </div>
            </div>




            <footer class="site-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">

                            <div class="block-7">
                                <h3 class="footer-heading mb-4">KUANTUM PHARMA</h3>
                                <p>Somos KUANTUM PHARMA un laboratorio especializado en el desarrollo y la fabricación de medicamentos producidos a partir de componentes de origen natural y biológico.</p>
                            </div>

                        </div>


                        <div class="col-md-6 col-lg-3">
                            <div class="block-5 mb-5">
                                <h3 class="footer-heading mb-4">CONTACTO</h3>
                                <ul class="list-unstyled">
                                    <li class="address">CALLE ALACLA DE HENARES</li>
                                    <li class="phone"><a href="tel://23923929210">+34 607873151</a></li>
                                    <li class="email">KUANTUMPHARMA@MAIL.COM</li>
                                </ul>
                            </div>


                        </div>
                    </div>
                    <div class="row pt-5 mt-5 text-center">
                        <div class="col-md-12">
                            <p>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved  <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank"
                                                                                                                                                                    class="text-primary">kUANTUM</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            </p>
                        </div>

                    </div>
                </div>
            </footer>

        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>

        <script src="js/main.js"></script>

    </body>

</html>
