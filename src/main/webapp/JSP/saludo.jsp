<%-- 
    Document   : saludo
    Created on : 30-sep-2019, 17:42:29
    Author     : FranciscoAntonio
--%>
<%@page import="javafx.util.converter.LocalTimeStringConverter"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.time.LocalTime"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <!--    <link rel="stylesheet" type="text/css" href="../CSS/normalizer.css">
        <link rel="stylesheet" type="text/css" href="../CSS/estilos.css"> -->
        
        <title>JSP Saludo</title>
    </head>
    <body>
        <%
            LocalTime horaActual = LocalTime.now();
            String nombre = request.getParameter("nombre");
            
            String am = "os días";
            String pm = "as tardes";
            String noche = "as noches";
            String saludo = "Buen";
            
            String sexo = request.getParameter("sexo");
            String h = "señor";
            String m = "señora/señorita";
            String hombreOmujer;
            
            if (horaActual.getHour() > 5 && horaActual.getHour() < 12) {
                saludo += am;
            } else if (horaActual.getHour() < 20) {
                saludo += pm;
            } else {
                saludo += noche;
            }
            
            if(sexo.equals("Hombre")){
                hombreOmujer = h;
            } else{
                hombreOmujer = m;
            }
        %>
        
        <h1><%= saludo %> <%= hombreOmujer %> <%= nombre %></h1>
        <a href="<%=request.getContextPath()%>/index.html">Menú</a>
    </body>
</html>
