<%-- 
    Document   : intranet
    Created on : 23/03/2011, 10:00:08 AM
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
 %>
 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>Principal - Intranet Cupido ***</title>
   
	
    <link rel="shortcut icon" type="image/x-icon" href="../images/favicon.ico" />

	
 

    <style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:565px;
	top:32px;
	width:323px;
	height:162px;
	z-index:10001;
}
.Estilo1 {
	font-size: 14px;
	font-weight: bold;
	color: #694F47;
}
body {
	background-color: #C7B18B;
}
.Estilo4 {font-size: 16px; font-weight: bold; color: #694F47; }
.Estilo5 {color: #C7B18B}
.Estilo6 {color: #C7B18B; font-weight: bold; }
.Estilo7 {
	color: #CCCCCC
}
.Estilo8 {color: #CCCCCC; font-size: 16px; }
.Estilo9 {
	color: #FFFFFF;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
}
.Estilo10 {color: #000000}
-->
    </style>
</head>
    <body>
    <table width="686" height="569" border="0" align="center" bordercolor="#9A6047" bgcolor="#8A4E47" class="Estilo1">
      <tr>
        <td height="19" colspan="3"><div align="right"><span class="Estilo8">Bienvenido </span><span class="Estilo4 Estilo7"> <%=Cargo + ": " + Nombres + " " + Apellidos%></span></div></td>
        <td width="82" height="19" class="Estilo6"><a href="../logoutPersonal">(Salir)</a></td>
      </tr>
      <tr>
        <td height="19" class="Estilo8">&nbsp;</td>
        <td width="271">&nbsp;</td>
        <td width="224">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td height="89" class="Estilo8">&nbsp;</td>
        <td bgcolor="#ffffff" colspan="3" rowspan="8"><p>
          <iframe name="marco" id="marco" width="582" height="450" frameborder="0" scrolling="No" src="intro.html"></iframe>
        </p>
        </td>
      </tr>
      <tr>
        <td height="33" class="Estilo8">MENU:</td>
      </tr>
      <tr>
        <td height="31">&nbsp;</td>
      </tr>
      <tr>
        <td width="91" height="39"><span class="Estilo6"><a href="cliente.jsp" target="marco">* Cliente</a> 
          <label></label>
          <label></label>
          <label></label>
        
        <label></label>
            <label></label>
        </span>
        <label></label></td>
      </tr>
      <tr>
        <td height="35"><span class="Estilo6"><a href="personal.jsp" target="marco">* Personal
              <label></label>
              <label></label>
              <label></label>
          </a></span> <a href="personal.jsp"><span class="Estilo5">
          <label></label>
          </span>
          <label></label>
          </a>
        <label></label></td>
      </tr>
      <tr>
        <td height="39"><span class="Estilo6"><a href="habitacion.jsp" target="marco">* Habitacion
              <label></label>
              <label></label>
              <label></label>
        </a></span> <a href="habitacion.jsp"><span class="Estilo5">
        <label></label>
        </span>
        </a>
        <label></label></td>
      </tr>
      <tr>
        <td height="48"><span class="Estilo6"><a href="reservas.jsp" target="marco">* Reservas</a>
<label></label>
            <label></label>
            <label></label>
        </span> <span class="Estilo5">
        <label></label>
        </span>
        <label></label></td>
      </tr>
      <tr>
        <td height="64">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="4"><div align="center" class="Estilo9">Hotel Cupido *** - Todos los derechos reservados (Zona Segura)</div></td>
      </tr>
    </table>
    <p>&nbsp;</p>

</body>
</html>