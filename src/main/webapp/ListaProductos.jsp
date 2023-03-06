
<%@page import="java.util.Base64"%>
<%@page import="Dominio.Producto"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Productos</title>
    </head>
    <body>
        <h1>Listado de Productos</h1>
        <table class="row">
            <thead>
                <tr>
                    <th class="col-sm-4">Nombre</th>
                    <th class="col-sm-4">Precio</th>
                    <th class="col-sm-4">Imagen</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="producto" items="${productos}">
                    <tr class="col-sm-6 col-lg-4 text-center item mb-4">
                        <td><span class="tag">${producto.nombre}</span></td>
                        <td>${producto.precio}</td>
                        <td><img src="data:image/jpeg;base64,${producto.imagenBase64}" alt="${producto.nombre}"></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>