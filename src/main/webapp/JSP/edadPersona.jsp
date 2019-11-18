<%-- 
    Document   : edadPersona
    Created on : 02-oct-2019, 0:45:09
    Author     : FranciscoAntonio
--%>

<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/normalizer.css">
        <link rel="stylesheet" type="text/css" href="../CSS/edadCss.css">
        <title>Edad persona</title>
    </head>
    <body>
        <%
            String nombre = request.getParameter("nombre");
            

            String fechaNacimiento = request.getParameter("fechaNac");
            
            
            LocalDate fechaNac = LocalDate.parse(fechaNacimiento);
            int year = fechaNac.getYear();
            int month = fechaNac.getMonthValue();
            int dayOfMonth = fechaNac.getDayOfMonth();
            fechaNac = LocalDate.of(year, month, dayOfMonth);
            
            //fecha del sistema
            LocalDate hoy = LocalDate.now();
              
            Period periodo = Period.between(fechaNac, hoy);
            int dias = periodo.getDays();
            int meses = periodo.getMonths();
            int anios = periodo.getYears();
            String diceEdad = "tienes ";

            if (anios == 1) {
                diceEdad += "tienes " + anios + " año ";
            } else if (anios > 1) {
                diceEdad += "tienes " + anios + " años ";
            }
            if (meses == 1) {
                diceEdad += meses + " mes ";
            } else if (meses > 1) {
                diceEdad += meses + " meses ";
            }
            if (dias == 1) {
                diceEdad += dias + " día";
            } else if (dias > 1) {
                diceEdad += dias + " días";
            }
            
         %>



        <%   
            String noNacido = null;
            if (hoy.isBefore(fechaNac)) {
                noNacido = "todavía no has nacido";
        %>
        <h1>Hola, <%=nombre%> <%=noNacido%></h1>
        <%
        } else {
        %>
        <h1>Hola, <%=nombre%> <%=diceEdad%> de edad</h1>
        <%
            }
        %>

        <a href="<%=request.getContextPath()%>/index.html">Menú</a>
    </body>
</html>
