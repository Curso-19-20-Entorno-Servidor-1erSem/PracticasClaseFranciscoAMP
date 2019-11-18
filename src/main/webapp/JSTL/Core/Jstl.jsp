<%-- 
    Document   : Jstl
    Created on : 15 nov. 2019, 16:58:49
    Author     : franciscoantonio
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL.</title>
    </head>
    <body>
        <div>
            <p>Visualiza el contenido de una variable.</p>
            <p><c:set var="var1" value="Hola Mundo" /></p>
            
            <p><c:out value="${var1}" default="No tiene valor" /></p>
            
            <p>Elimina una varable:</p> 
            <c:remove var="var1" />
            
            <c:out value="${var1}" default="No tiene valor" /> 
            <p>Sacar la variable menor de 10 y si no 15:</p>
            <c:set var="numero" value="5" />
            <c:if test="$numero<10">
                <c:out value="La variable es menor de 10" />
            </c:if>
            
            
            
        </div>
    
    
    </body>
</html>
