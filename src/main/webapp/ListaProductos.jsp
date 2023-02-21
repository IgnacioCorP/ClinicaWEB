
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
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Precio</th>
                    <th>Imagen</th>
                </tr>
            </thead>
            <tbody>
            <a href="ProductosServlet?accion=listarProductos">Listar productos</a>

            <% for (Producto producto : (List<Producto>) request.getAttribute("producto")) {%>
            <tr>
                <td><%= producto.getNombre()%></td>
                <td><%= producto.getPrecio()%></td>
                <td><img src="C:\Users\Alumno Mañana\Documents\NetBeansProjects\ClinicaWeb\src\main\webapp\imgP;base64,<%= new String(Base64.getEncoder().encode(producto.getImgP()))%>"></td>
            </tr>
            <% }%>
        </tbody>
    </table>

</body>
</html>