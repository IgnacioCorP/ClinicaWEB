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
                        <form class="col-md-12" method="post">
                            <div class="site-blocks-table">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th class="product-thumbnail">IMAGEN</th>
                                            <th class="product-name">PRODUCTO</th>
                                            <th class="product-price">PRECIO</th>
                                            <th class="product-quantity">CANTIDAD</th>
                                            <th class="product-total">TOTAL</th>
                                            <th class="product-remove">REMOVE</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="product-thumbnail">
                                                <img src="images/product_02.png" alt="Image" class="img-fluid">
                                            </td>
                                            <td class="product-name">
                                                <h2 class="h5 text-black">Ibuprofen</h2>
                                            </td>
                                            <td>$55.00</td>
                                            <td>
                                                <div class="input-group mb-3" style="max-width: 120px;">
                                                    <div class="input-group-prepend">
                                                        <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                                                    </div>
                                                    <input type="text" class="form-control text-center" value="1" placeholder=""
                                                           aria-label="Example text with button addon" aria-describedby="button-addon1">
                                                    <div class="input-group-append">
                                                        <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                                                    </div>
                                                </div>

                                            </td>
                                            <td>$49.00</td>
                                            <td><a href="#" class="btn btn-primary height-auto btn-sm">X</a></td>
                                        </tr>

                                        <tr>
                                            <td class="product-thumbnail">
                                                <img src="images/product_01.png" alt="Image" class="img-fluid">
                                            </td>
                                            <td class="product-name">
                                                <h2 class="h5 text-black">Bioderma</h2>
                                            </td>
                                            <td>$49.00</td>
                                            <td>
                                                <div class="input-group mb-3" style="max-width: 120px;">
                                                    <div class="input-group-prepend">
                                                        <button class="btn btn-outline-primary js-btn-minus" type="button">&minus;</button>
                                                    </div>
                                                    <input type="text" class="form-control text-center" value="1" placeholder=""
                                                           aria-label="Example text with button addon" aria-describedby="button-addon1">
                                                    <div class="input-group-append">
                                                        <button class="btn btn-outline-primary js-btn-plus" type="button">&plus;</button>
                                                    </div>
                                                </div>

                                            </td>
                                            <td>$49.00</td>
                                            <td><a href="#" class="btn btn-primary height-auto btn-sm">X</a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="row mb-5">
                               
                                <div class="col-md-6">
                                    <button class="btn btn-outline-primary btn-md btn-block" onclick="window.location = 'productoscliente.jsp'">CONTINUAR COMPRANDO</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="text-black h4" for="coupon">CUPÓN</label>
                                    <p>CUPÓN DE DESCUENTO</p>
                                </div>
                                <div class="col-md-8 mb-3 mb-md-0">
                                    <input type="text" class="form-control py-3" id="coupon" placeholder="Coupon Code">
                                </div>
                                <div class="col-md-4">
                                    <button class="btn btn-primary btn-md px-4">APLICAR</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 pl-5">
                            <div class="row justify-content-end">
                                <div class="col-md-7">
                                    <div class="row">
                                        <div class="col-md-12 text-right border-bottom mb-5">
                                            <h3 class="text-black h4 text-uppercase">TOTAL</h3>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <div class="col-md-6">
                                            <span class="text-black">SUBTOTAL</span>
                                        </div>
                                        <div class="col-md-6 text-right">
                                            <strong class="text-black">$230.00</strong>
                                        </div>
                                    </div>
                                    <div class="row mb-5">
                                        <div class="col-md-6">
                                            <span class="text-black">TOTAL</span>
                                        </div>
                                        <div class="col-md-6 text-right">
                                            <strong class="text-black">$230.00</strong>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <button class="btn btn-primary btn-lg btn-block" onclick="window.location = 'pagar.jsp'">
                                                PAGAR</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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