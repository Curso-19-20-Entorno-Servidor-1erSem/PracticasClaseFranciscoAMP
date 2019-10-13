<%-- 
    Document   : loginOUT
    Created on : 13 oct. 2019, 21:24:01
    Author     : franciscoantonio
--%>

<%@page import="java.time.format.TextStyle"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.time.Month"%>
<%@page import="java.time.DayOfWeek"%>
<%@page import="java.time.LocalDate"%>
<%
    
    HttpSession sesion = request.getSession();
    sesion.invalidate(); 
    response.sendRedirect("menu.jsp"); 
    

    Calendar fechaActual = Calendar.getInstance();
    int hora = fechaActual.get(Calendar.HOUR_OF_DAY);
    int minutos = fechaActual.get(Calendar.MINUTE);
    int segundos = fechaActual.get(Calendar.SECOND);

    int dia = LocalDate.now().getDayOfMonth();
    Month mes = LocalDate.now().getMonth();
    int anio = LocalDate.now().getYear();
    
    DayOfWeek diaSemana = LocalDate.now().getDayOfWeek();

    String fecha = diaSemana.getDisplayName(TextStyle.FULL, new Locale("es", "ES")) + ", " 
            + dia + " de " + mes.getDisplayName(TextStyle.FULL, new Locale("es", "ES")) + " de " 
            + anio + " a las " + hora + ":" + minutos + ":" + segundos;
    fecha = fecha.replace(" ", "%20");
    
    response.addCookie(new Cookie("fecha", fecha));
%>