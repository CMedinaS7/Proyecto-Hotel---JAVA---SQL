<%-- 
    Document   : inicio
    Created on : 23/03/2011, 10:19:18 AM
    Author     : Carlos Medina
--%>
<%
            HttpSession sesion = request.getSession(true);
            String Nombres = (String) sesion.getAttribute("nombres");
            String Apellidos = (String) sesion.getAttribute("apellidos");
	    String DNI = (String) sesion.getAttribute("dni");
	    String Telefono = (String) sesion.getAttribute("telefono");
	    String Cargo = (String) sesion.getAttribute("cargo");
	    if ((String) sesion.getAttribute("nombres") == null) {
                response.sendRedirect("intranet.jsp?error=!!!!Necesita Loguearse!!!!!!!!!!!");
            }
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=Cargo + ": " + Nombres + " " + Apellidos%></h1>
    </body>
</html>
