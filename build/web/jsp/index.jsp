<%-- 
    Document   : index.jsp
    Created on : 11 nov 2024, 20:01:26
    Author     : fgmrr
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bean.McDonaldsBean" %>
<%@ page import="bean.ListaMcDonaldsBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ingresar Datos</title>
</head>
<body>
    <h1>Ingresar Datos</h1>

    <%
        request.setCharacterEncoding("UTF-8");
        // Obtener el bean de lista de la sesión o crearlo si no existe
        ListaMcDonaldsBean listaComidas = (ListaMcDonaldsBean) session.getAttribute("listaComidas");
        if (listaComidas == null) {
            listaComidas = new ListaMcDonaldsBean();
            session.setAttribute("listaComidas", listaComidas);
        }

        String categoria = request.getParameter("categoria");
        String nombre = request.getParameter("nombre");
        String precio = request.getParameter("precio");

        if (categoria != null && nombre != null && precio != null) {
            Double precioInt = Double.parseDouble(precio);
            McDonaldsBean nuevaComida = new McDonaldsBean(categoria, nombre, precioInt);
            listaComidas.agregar(nuevaComida);
        }
    %>

    <form action="index.jsp" method="post" accept-charset="UTF-8">
        <label for="categoria">Categoria:</label>
        <input type="text" id="categoria" name="categoria" required><br><br>

        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required><br><br>

        <label for="precio">Precio:</label>
        <input type="number" id="precio" name="precio" required><br><br>

        <button type="submit">Agregar</button>
    </form>

    <hr>

    <h2>Lista de Objetos</h2>
    <a href="mostrarLista.jsp">Ver Lista</a>
</body>
</html>