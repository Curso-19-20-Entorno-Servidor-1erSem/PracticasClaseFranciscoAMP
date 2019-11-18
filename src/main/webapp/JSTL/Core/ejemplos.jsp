<%-- 
    Document   : ejemplos
    Created on : 17-nov-2019, 22:43:03
    Author     : Francisco_Antonio
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!--ESTO ES OBLIGATORIO VVV-->
<jsp:directive.page contentType="text/hmtl" pageEncoding="UTF-8"/> 
<!DOCTYPE html>
<html>
    <c:set var="var1" value="Valor de variable en ambito de página" scope="page"></c:set>
    <c:set var="var1" value="Valor de variable en ambito de petición" scope="request"></c:set>
    <c:set var="var1" value="Valor de variable en ambito de sesión" scope="session"></c:set>
    <c:set var="var1" value="Valor de variable en ambito de aplicación" scope="application"></c:set>
    
    <jsp:useBean  id="cesta"  scope="session" class="es.albarregas.beans.Lista"/>
    
    <c:forEach items="${cesta.Lista}" var="item">
	${item}<br>
    </c:forEach>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ejemplos Core.</title>
    </head>
    <body>
        <h1>Ejemplos Core</h1>
        //estamos cargando en memoria valores.
        <c:set var="var1" value="pagina" scope="page" />
        <c:set var="var1" value="peticion" scope="request" />
        <c:set var="var1" value="sesion" scope="session" />
        <c:set var="var1" value="aplicación" scope="application" />
        <p><c:out value="${var1}" /></p> //mestra el cotenido de var1
        <p><c:out value="${requestScope}" /></p>
        <p>La variable vale : '<c:out value="${pageScope.var1}"></c:out>' en el ámbito de página.</p>
	<p>La variable vale : '<c:out value="${requestScope.var1}"></c:out>' en el ámbito de petición.</p>
	<p>La variable vale : '<c:out value="${sessionScope.var1}"></c:out>' en el ámbito de sesión.</p>
	<p>La variable vale : '<c:out value="${applicationScope.var1}"></c:out>' en el ámbito de Aplicación.</p>
    </body>
</html>
