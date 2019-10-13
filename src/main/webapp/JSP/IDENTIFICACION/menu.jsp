<%-- 
    Document   : menu
    Created on : 13 oct. 2019, 21:12:08
    Author     : franciscoantonio
--%>

<%
    
    HttpSession sesion = request.getSession();
    String usuario = (String) sesion.getAttribute("usuario");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/CSS/normalizer.css">
        <link rel="stylesheet" type="text/css" href="../../CSS/menuIdent.css">
        <title>LOGIN</title>
    </head>
    
    <fieldset id="menu">
        <h1>Men&uacute; admin de  <%=usuario%></h1><br>
        <h2>&Uacute;ltimo acceso: <%=%></h2> <%-- ?? --%>
        <button type="submit" name="botonCookie" value="login"><a id="menuCookies" href="">Varias opciones.</a></button><br>
        <button type="submit" name="botonCookie" value="login"><a id="menuCookies" href="../../index.html">Cerrar sesión</a></button>
    </fieldset>

    
</html>
