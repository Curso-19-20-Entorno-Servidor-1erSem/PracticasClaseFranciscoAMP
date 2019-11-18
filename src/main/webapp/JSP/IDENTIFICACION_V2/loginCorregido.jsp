<%-- 
    Document   : loginCorregido
    Created on : 14 oct. 2019, 16:27:22
    Author     : franciscoantonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            Cookie miCookie = null;
            Cookie[] cookies = request.getCookies();
            
            if (cookies != null) {
                for (int i = 0; i < cookies.length; i++) {
                    if (cookies[i].getName().equals("cookieFAMP")) {
                        miCookie = cookies[i];
                        break;
                    }
                }//fin for
            }//fin comprobación 
            
            if (cookie!=null){
                usuario=cookie.getValue()
                        }
            }


%>
