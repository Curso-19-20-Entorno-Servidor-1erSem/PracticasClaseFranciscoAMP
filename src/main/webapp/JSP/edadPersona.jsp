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
            
            //se introduce fecha por el cliente
            String fechaNacimiento = request.getParameter("fechaNac");
            
            //Se transforma el String fechNac a LocalDate
            LocalDate fechaNac = LocalDate.parse(fechaNacimiento);
            int year = fechaNac.getYear();
            int month = fechaNac.getMonthValue();
            int dayOfMonth = fechaNac.getDayOfMonth();
            fechaNac = LocalDate.of(year, month, dayOfMonth);
            
            //fecha del sistema
            LocalDate hoy = LocalDate.now();
            
            //ver of(int year, int month, int dayOfMonth)
            //La clase Period calcula el tiempo de diferencia entre dos fechas
            //https://docs.oracle.com/javase/8/docs/api/java/time/Period.html
            
            Period periodo = Period.between(fechaNac, hoy);
            int dias = periodo.getDays();
            int meses = periodo.getMonths();
            int anios = periodo.getYears();
            String diceEdad = "tienes ";

            //sin meses ni dias
            if (anios != 0 && meses == 0 && dias == 0) {
                if (anios == 1) {
                    diceEdad +=  + anios + " año ";
                } else if (anios > 1) {
                    diceEdad +=  + anios + " años ";
                }
            }
            //sin días
            if (anios != 0 && meses != 0 && dias == 0) {
                if (anios == 1) {
                    diceEdad +=  + anios + " año ";
                } else if (anios > 1) {
                    diceEdad +=  + anios + " años ";
                }
                if (meses == 1) {
                    diceEdad += meses + " mes ";
                } else if (meses > 1) {
                    diceEdad += meses + " meses ";
                }
            }
            //sin años ni meses
            if (anios == 0 && meses == 0 && dias != 0) {
                if (dias == 1) {
                    diceEdad += dias + " día";
                } else if (dias > 1) {
                    diceEdad += dias + " días";
                }
            }
            
            //sin años
            if (anios == 0 && meses != 0 && dias != 0){
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
            }
            
            //sin meses
            if (anios != 0 && meses == 0 && dias != 0){
                if (anios == 1) {
                    diceEdad +=  + anios + " año ";
                } else if (anios > 1) {
                    diceEdad +=  + anios + " años ";
                }
                if (dias == 1) {
                    diceEdad += dias + " día";
                } else if (dias > 1) {
                    diceEdad += dias + " días";
                }
            }
            
         %>



        <%            /**
             * Si la fecha es posterior a la fecha actual, deberá
             * indicar que la persona no ha nacido. Para ello utilizamos isBefore
             */
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
