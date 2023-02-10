<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/5c465338f1.js" crossorigin="anonymous"></script>                        
        <title>Editar Cliente</title>
        <link rel="stylesheet" href="lb/css/bootstrap.min.css">
    </head>
    <body>
        <!-- Inlcude de nuestro header -->
        <!--BARRA DE NAVEGACIÓN-->
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <!--ÍCONO APP-->
                    <a class="navbar-brand" href="cliente.jsp"><img src="imgP/LOGO.png" class="img-fluid"
                                                                    style="width: 100%; height: 120px;"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                            <li class="nav-item ">
                                <a class="nav-link" href="productos.jsp" id="navbarDropdown" role="button"
                                   aria-expanded="false">PRODUCTOS</a>

                            </li>
                            <a class="dropdown-item" href="#">CERRAR SESIÓN</a>


                        </ul>


                    </div>
                </div>
            </nav>
        </div>
        <!--FIN BARRA DE NAVEGACIÓN-->

        <form action="RegistrarClienteServlet?accion=editar&Nif=${cliente.Nif}"
              method="POST" class="was-validated">


            <section id="details">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editar Cliente</h4>
                                </div>
                                <div class="card-body">
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" required value="${cliente.nombre}" />
                                    </div>
                                    <div class="form-group">
                                        <label for="apellidos">Apellidos</label>
                                        <input type="text" class="form-control" name="apellidos" required value="${cliente.apellido}" />
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" name="email" required value="${cliente.email}" />
                                    </div>

                                    <div class="form-group">
                                        <label for="saldo">Clave</label>
                                        <input type="number" class="form-control" name="saldo" required step="any" value="${cliente.clave}" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </form>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


    </body>
    <!-- INICIO FOOTER -->
    <jsp:include page="footer.jsp" />
    <!-- FIN FOOTER -->
</html>
