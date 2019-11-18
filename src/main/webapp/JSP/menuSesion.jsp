<%-- 
    Document   : menuSesion
    Created on : 11-oct-2019, 16:55:54
    Author     : FranciscoAntonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/normalizer.css">
        <link rel="stylesheet" type="text/css" href="../CSS/sesionCss.css">
        <title>Menú sesión</title>
    </head>
    <body>
        <%
            String nombre = request.getParameter("nombre");
            String valor = request.getParameter("valor");
            String mensaje = "";
            HttpSession sesion = request.getSession(); //crear sesión
            if (request.getParameter("botonSesion") != null) {
                if (request.getParameter("botonSesion").equals("Crear")) {
                    if (nombre.length() == 0) {
                        mensaje = "Debe introducir un nombre de sesión";
                    } else {
                        session.setAttribute(nombre, valor);
                        mensaje = "Creada la sesion:" + nombre + ", con  valor: " + valor;
                    }
                } else if (request.getParameter("botonSesion").equals("Visualizar")) {
                    mensaje = "El nombre de la sesion es " + nombre + " y el valor es " + session.getAttribute(nombre);//obtiene el atributo(valor) de la sesion
                } else if (request.getParameter("botonSesion").equals("Modificar")) {
                    session.setAttribute(nombre, valor);
                    mensaje = "Se ha modificado la sesion " + nombre + " y el valor es " + session.getAttribute(nombre);
                } else if (request.getParameter("botonSesion").equals("Eliminar")) {
                    session.removeAttribute(nombre);
                    mensaje = "Se ha eliminado la sesión " + nombre + " con valor " + session.getAttribute(nombre);
                }
            }
        %>
        <div>
            <h1>CONTROL DE SESION</h1>
            <form action="menuSesion.jsp" method="post">

                <fieldset id="cabecera">
                    <label>Nombre del atributo de la sesión: </label><input  name="nombre" type="text"><br>
                    <label>Valor del atributo:</label><input  name="valor" type="text"><br>
                    <br>
                    <br>
                    <button type="submit" name="botonSesion" value="Crear">Crear</button>
                    <button type="submit" name="botonSesion" value="Visualizar">Visualizar</button>
                    <button type="submit" name="botonSesion" value="Modificar">Modificar</button>
                    <button type="submit" name="botonSesion" value="Eliminar">Eliminar</button>
                    <button type="submit" name="botonSesion" value="Menu"><a id="menuCookies" href="<%=request.getContextPath()%>/index.html">Menú</a> </button>
                    <br>
                    <br>

                    <p><%=mensaje%></p>

                </fieldset>

            </form>

        </div>
    </body>
</html>
