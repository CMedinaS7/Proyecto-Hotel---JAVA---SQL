<%-- 
    Document   : reservas
    Created on : 10/04/2011, 11:48:59 PM
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
                response.sendRedirect("../intranet.jsp?error=!!!!Necesita Loguearse!!!!!!!!!!!");
            }
			String resp = request.getParameter("resp");
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
        <h1><img src="../images/reportes.png" width="500" height="400" border="0" usemap="#Map">
<map name="Map"><area shape="rect" coords="156,123,367,140" href="../jasper/ReservasHoy.pdf" target="_blank">
<area shape="rect" coords="161,175,369,193" href="../jasper/ReservasMes.pdf" target="_blank">
<area shape="rect" coords="164,222,337,239" href="../jasper/ClientesTop.pdf" target="_blank">
<area shape="rect" coords="169,276,397,291" href="../jasper/ReservasTodas.pdf" target="_blank">
</map></h1>
</body>
</html>
