<%-- 
    Document   : login
    Created on : 13 oct. 2019, 21:03:42
    Author     : franciscoantonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../../CSS/normalizer.css">
        <link rel="stylesheet" type="text/css" href="../../CSS/loginIdent.css">
        <title>LOGIN</title>
    </head>

    <body>
        <%
            //sesion.getAttribute("error")!=null? miSesion.getAttribute("error") : ""
            HttpSession sesion = request.getSession();
            if (sesion.getAttribute("error") != null) {
        %>
        <p><%=sesion.getAttribute("error")%></p>
        <%
            }
            Cookie[] cookies = request.getCookies();
            String usuario = new String();
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals("usuario")) {
                    usuario = cookies[i].getValue();
                    break;
                }
            }
            Cookie miCookieUser = new Cookie("usuario", "usuario");
            if (request.getParameter("recordar") != null) {
                response.addCookie(miCookieUser);
            }
        %>
        <form action="loginIN.jsp">

            <fieldset id="cabecera">

                <legend>Indentifícate</legend>

                Usuario: <input type="text" name="usuario"><br>
                Contrase&ntilde;a: <input type="password" name="contrasenia"><br>
                Recordar usuario<input type="checkbox" id="recordar" name="recordar" value="recordar"><br>

                <button type="submit" name="botonCookie" value="Entrar">Entrar</button>
                <button type="submit" name="botonCookie" value="Menu"><a id="menuCookies" href="<%=request.getContextPath()%>/index.html">Menú</a> </button>
                <br>

            </fieldset>
                <fieldset>
                    <%= mensajeError%>
                </fieldset>
        </form>
    </body>
</html>