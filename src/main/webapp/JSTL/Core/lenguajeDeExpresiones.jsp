<%-- 
    Document   : lenguajeDeExpresiones
    Created on : 18-nov-2019, 3:23:12
    Author     : Francisco_Antonio
--%>

<%@page import="es.albarregas.models.Dias"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
                font-family: 'Raleway', sans-serif;
                text-align: center;
        }
        #azul{
            background-color: blue;
            color: white;
        }
        #verde{
            background-color: greenyellow;
            color: black;
        }
        p{
            text-align: center;
        }

    </style>
    <body> 

        <jsp:useBean scope="page" id="lista" class="es.albarregas.models.Dias"/>

        <c:set var="semana" scope="page" value="Domingo-Lunes-Martes-Miercoles-Jueves-Viernes-Sabado"/>

        <table>

            <c:set var="listaDia" value="${lista.dias}"/>
            <c:forEach var="dia" items="${listaDia}" varStatus="status">
                <tr>
                    <c:if test="${(status.index%2)==0}">
                        <td id="azul"><c:out value="${dia}"/></td>
                    </c:if>
                    <c:if test="${(status.index%2)!=0}">
                        <td id="verde"><c:out value="${dia}"/></td>
                    </c:if>
                </tr>
            </c:forEach>
            <tr><td>&nbsp;</td></tr>
            <c:forTokens items="${semana}" delims="-" var="diaSemana">
                <tr>
                    <c:if var="domingoSe" test="${diaSemana == 'Domingo'}">
                        <td><c:out value="${diaSemana}"/> el dia del señor.</td>
                    </c:if>
                    <c:if var="domingoSe" test="${diaSemana != 'Domingo'}">
                        <td><c:out value="${diaSemana}"/></td>
                    </c:if>
                </tr>
            </c:forTokens>
        </table>

        <fmt:setLocale value="es_ES" scope="page"/>
        <c:set var="valor" value="1578.56235"/>
        <p><c:out value="${valor}"/></p>
        <p><fmt:formatNumber type="currency" value="${valor}"/></p>
        <p><fmt:formatNumber type="number" maxIntegerDigits="3" value="${valor}"/></p>
        <p><fmt:formatNumber type="number" maxFractionDigits="3" value="${valor}"/></p>
        <p><fmt:formatNumber type="number" groupingUsed="false" value="${valor}" /></p>
        <p><fmt:formatNumber type="percent" maxIntegerDigits="3" value="${valor}" /></p>
        <p><fmt:formatNumber type="percent" minFractionDigits="10" value="${valor}" /></p>
        <p><fmt:formatNumber type="percent" maxIntegerDigits="3" value="${valor}" /></p>
        <p><fmt:formatNumber type="number" pattern="###.###E0" value="${valor}" /></p>
        <p><a href="<c:url value = "/index.html" />">Menú Principal</a></p>
    </body>
</html>
