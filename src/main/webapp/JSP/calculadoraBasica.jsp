<%-- 
    Document   : calculadoraBasica
    Created on : 02-oct-2019, 18:11:00
    Author     : FranciscoAntonio
--%>

<%@page import="java.time.format.TextStyle"%>
<%@page import="java.util.Locale"%>
<%@page import="java.time.Month"%>
<%@page import="java.time.DayOfWeek"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/normalizer.css">
        <link rel="stylesheet" type="text/css" href="../CSS/calculatorCss.css">
        <title>Calculator.</title>
    </head>
    <body>
            <body>
        <form>
            <%
                //jueves 4 de octubre de 2018
                Calendar fechaActual = Calendar.getInstance();
                int diaMes = fechaActual.get(Calendar.DAY_OF_MONTH);
                int anio = fechaActual.get(Calendar.YEAR);

                Month mes = LocalDate.now().getMonth();
                DayOfWeek diaSemana = LocalDate.now().getDayOfWeek();
                // Obtiener nombre del mes
                String nombreMes = mes.getDisplayName(TextStyle.FULL, new Locale("es", "ES"));
                String nombreDiaSemana = diaSemana.getDisplayName(TextStyle.FULL, new Locale("es", "ES"));


            %>
            <fieldset>
                <legend>CALCULADORA BASICA</legend>
                <p><strong><%=nombreDiaSemana%> <%=diaMes%> de <%=nombreMes%> de <%=anio%></strong></p>
                <br>
                <label>Primer Operando</label><input name="num1" type="text">
                <label>Segundo Operando</label><input name="num2" type="text">
                <br>
                <br>
                Sumar<input name="operacion" value="Sumar" type="radio" checked="checked">  
                Restar<input name="operacion" value="Restar" type="radio">  
                Multiplicar<input name="operacion" value="Multiplicar" type="radio">    
                Dividir<input name="operacion" value="Dividir" type="radio">
                <br>
                <br>
                <%

                    String mensajeOperacion = "";
                    if (request.getParameter("operacion") != null) {
                        if (request.getParameter("operacion").equals("Sumar")) {
                            mensajeOperacion = "El resultado de "
                                    + Integer.parseInt(request.getParameter("num1")) + " + "
                                    + Integer.parseInt(request.getParameter("num2")) + " = "
                                    + (Integer.parseInt(request.getParameter("num1")) + Integer.parseInt(request.getParameter("num2")));
                        } else if (request.getParameter("operacion").equals("Restar")) {
                            mensajeOperacion = "El resultado de "
                                    + Integer.parseInt(request.getParameter("num1")) + " - "
                                    + Integer.parseInt(request.getParameter("num2")) + " = "
                                    + (Integer.parseInt(request.getParameter("num1")) - Integer.parseInt(request.getParameter("num2")));
                        } else if (request.getParameter("operacion").equals("Multiplicar")) {
                            mensajeOperacion = "El resultado de "
                                    + Integer.parseInt(request.getParameter("num1")) + " * "
                                    + Integer.parseInt(request.getParameter("num2")) + " = "
                                    + (Integer.parseInt(request.getParameter("num1")) * Integer.parseInt(request.getParameter("num2")));
                        } else if (request.getParameter("operacion").equals("Dividir")) {
/**
 * se introduce el valor 0.0 para que pueda al dividir por 0 salga el mensaje de texto:
 * "Se está intentando dividir por 0."
 */
                            if (Integer.parseInt(request.getParameter("num2")) != 0.0) {
                                mensajeOperacion = "El resultado de "
                                        + Integer.parseInt(request.getParameter("num1")) + " / "
                                        + Integer.parseInt(request.getParameter("num2")) + " = "
/**
 * Para conseguir que el resultado de la división tenga decimales tenemos 2 opciones, la primera es cambiar el tipo de los números
 * a float o a double pero puede que no queramos o podamos hacerlo, en ese caso la solución que tenemos es hacer un cast de al menos
 * uno de los dos números y así al hacer una operación con double o un float y un int la operación se realizará con decimales.
 */
                                        + (double)(Integer.parseInt(request.getParameter("num1")) /(double)Integer.parseInt(request.getParameter("num2")));
                            } else {
                                mensajeOperacion = "Se está intentando dividir por 0.";
                            }
                        }
                    }

                %>
                <strong><%=mensajeOperacion%></strong>
                <br>
                <br>
                <button type="submit" name="enviar" value="enviar">Enviar</button>
                <button type="reset" name="Limpiar" value="Limpiar">Limpiar</button>
                <button type="submit" name="botonCookie" value="Menu"><a id="menuCookies" href="<%=request.getContextPath()%>/index.html">Menú</a> </button>
            </fieldset>
        </form>
    </body>
</html>
