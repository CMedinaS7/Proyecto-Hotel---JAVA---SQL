<%-- 
    Document   : salir
    Created on : 10/04/2011, 08:57:59 PM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>JSP Page</title>
<style type="text/css">
<!--
body {
	background-color: #5B423B;
	background-image: url(images/fondo.png);
}
.Estilo2 {
	color: #FFFFFF;
	font-family: Geneva, Arial, Helvetica, sans-serif;
}
.Estilo3 {
	color: #C5AF8A;
	font-weight: bold;
}
.Estilo4 {color: #C5AF8A}
.Estilo5 {color: #FFFFFF}
.Estilo10 {color: #FFFFFF; font-family: Geneva, Arial, Helvetica, sans-serif; font-size: 12px; }
#apDiv1 {
	position:absolute;
	left:10px;
	top:28px;
	width:194px;
	height:188px;
	z-index:1;
	visibility: inherit;
}
-->
    </style></head>
    <body onload="setTimeout('self.close()',3000)">
    <div align="center">
      <p><img src="templates/en/images/oxford.gif" width="174" height="174"></p>
      <p><span class="Estilo3">SU RESERVA REALIZADA CON EXITO. MUCHAS GRACIAS</span><br>
      </p>
    </div>
    <div align="center">
      <table width="220" border="0">
        <tr>
          <td><div align="center"><a href="javascript:self.close()"><img src="images/boton_salir.gif" width="65" height="20" border="0"></a></div></td>
        </tr>
      </table>
    </div>
</body>
</html>