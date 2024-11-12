<%-- 
    Document   : mostrarLista
    Created on : 11 nov 2024, 20:10:01
    Author     : fgmrr
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bean.ListaMcDonaldsBean" %>
<%@ page import="bean.McDonaldsBean" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Objetos</title>
</head>
<body>
    <h1>Lista de Objetos</h1>

    <%
        request.setCharacterEncoding("UTF-8");
        // Obtener el bean de lista de la sesión
        ListaMcDonaldsBean listaComidas = (ListaMcDonaldsBean) session.getAttribute("listaComidas");
        if (listaComidas != null && !listaComidas.getLista().isEmpty()) {
            for (McDonaldsBean comida : listaComidas.getLista()) {
    %>
                <p>
                    Atributo 1: <%= comida.getCategoria() %> <br>
                    Atributo 2: <%= comida.getNombre() %> <br>
                    Atributo 3: <%= comida.getPrecio() %>
                </p>
                <hr>
    <%
            }
        } else {
    %>
            <p>No hay objetos en la lista.</p>
    <%
        }
    %>

    <a href="index.jsp">Volver a ingresar datos</a>
</body>
</html>