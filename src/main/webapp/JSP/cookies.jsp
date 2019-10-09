<%-- 
    Document   : cookies
    Created on : 08-oct-2019, 16:55:40
    Author     : FranciscoAntonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Control de Cookies.</title>
    </head>
    <body>
        <%
            String mensaje = null;
            String nombre = request.getParameter("nombre");
            String valor = request.getParameter("valor");
            Cookie cookie = null;
            Cookie[] cookies = request.getCookies();

            if (cookies != null) {
                for (int i = 0; i < cookies.length; i++) {
                    if (cookies[i].getName().equals(nombre)) {
                        cookie = cookies[i];
                        break;
                    }
                }
            }
            //CREAR
            if (request.getParameter("botonCookie").equals("Crear")) { 
                if (cookie == null) {
                    cookie = new Cookie(nombre, valor);
                    cookie.setMaxAge(60 * 60);
                    mensaje = "Se ha creado la cookie " + nombre + " con valor " + valor;
                } else {
                    mensaje = "La cookie ya está creada";
                }
            
            
            //VISUALIZAR  
            } else if (request.getParameter("botonCookie").equals("Visualizar")) {
                
                    if (cookie != null) {
                        mensaje = "Esta es la cookie \"" + nombre + "\" con valor \"" + cookie.getValue() + "\"";
                    
                    } else {
                        mensaje = "La cookie \"" + nombre + "\" no existe";
                    }
                
            
            //MODIFICAR
            } else if (request.getParameter("botonCookie").equals("Modificar")) {
                
                    if (cookie != null) {
                        cookie.setValue(valor);
                        response.addCookie(cookie);
                        mensaje = "Se ha modificado la cookie \"" + nombre + " con valor \"" + valor + "\"";
                        
                    } else{
                        mensaje = "La cookie \"" + nombre + "\" no existe";
                    }
                
                
            
            //ELIMINAR    
            } else if (request.getParameter("botonCookie").equals("Eliminar")) {
                
                    if (cookie != null) {
                        cookie.setMaxAge(0);
                        response.addCookie(cookie);
                        mensaje = "Se ha eliminado la cookie \"" + nombre;
                        
                    }else{
                        mensaje = "La cookie \"" + nombre + "\" no existe";
                    }
                
            }
            //enviar la respuesta al menú inicial donde están las opciones
            response.sendRedirect("controDeCookies.jsp?mensaje=" + mensaje);
        %>
    </body>
</html>
