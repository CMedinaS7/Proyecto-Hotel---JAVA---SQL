<%-- 
    Document   : detalleHab
    Created on : 30/03/2011, 03:55:57 PM
    Author     : Carlos Medina
--%>
<%
String cliente=request.getParameter("cliente");
String hab=request.getParameter("hab");
String fini=request.getParameter("fini");
String ffin=request.getParameter("ffin");
String cantidad=request.getParameter("nh");
String s1="";
String s2="";
if("SI".equals(request.getParameter("serc"))){
s1="S0001";}

if("SI".equals(request.getParameter("serR"))){
s2="S0001";}
%>
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
    <body>
    <table width="502" height="29" border="0" align="center">
          <tr>
            <td height="23"><div align="center" class="Estilo2">Sr(a). <span class="Estilo3"><%=request.getParameter("nombres") + " " + request.getParameter("apellidos")%></span> estos son los datos de su reserva, para confirmar haga click en boton de confirmar.<a href="index.jsp">:</a></div></td>
          </tr>
    </table>
        <br>
        <br>
        <table width="318" border="1" align="center" bordercolor="#C5AF8A">
          <tr>
            <td width="136"><div align="right"><strong><span class="Estilo4">Habitacion:</span></strong></div></td>
            <td width="166" class="Estilo10"><%=request.getParameter("tipo")%></td>
          </tr>
          <tr>
            <td><div align="right"><strong><span class="Estilo4">Cantidad:</span></strong></div></td>
            <td><span class="Estilo10"><%=request.getParameter("nh")%></span></td>
          </tr>
          <tr>
            <td><div align="right"><strong><span class="Estilo4">Cafeteria:</span></strong></div></td>
            <td><span class="Estilo10"><%=request.getParameter("serc")%></span></td>
          </tr>
          <tr>
            <td><div align="right"><strong><span class="Estilo4">Almuerzo:</span></strong></div></td>
            <td><span class="Estilo10"><%=request.getParameter("serr")%></span></td>
          </tr>
          <tr>
            <td><div align="right"><strong><span class="Estilo4">Fecha Inicio:</span></strong></div></td>
            <td><span class="Estilo10"><%=request.getParameter("fini")%></span></td>
          </tr>
          <tr>
            <td><div align="right"><strong><span class="Estilo4">Fecha Fin:</span></strong></div></td>
            <td><span class="Estilo10"><%=request.getParameter("ffin")%></span></td>
          </tr>
          <tr>
            <td><div align="right"><strong><span class="Estilo4">Total:</span></strong></div></td>
            <td><span class="Estilo10">s/. <%=request.getParameter("total")%></span></td>
          </tr>
        </table>
        <br>
    <div align="center">
      <table width="220" border="0">
        <tr>
          <td bordercolor="#000000"><div align="center">
            <form name="form1" method="post" action="confirmarReserva">
              <input name="s1" type="hidden" id="s1" value="<%=s1%>">
              <input name="s2" type="hidden" id="s2" value="<%=s2%>">
              <input name="hab" type="hidden" id="hab" value="<%=hab%>">
              <input name="cliente" type="hidden" id="cliente" value="<%=cliente%>">
              <input name="fini" type="hidden" id="fini" value="<%=fini%>">
              <input name="ffin" type="hidden" id="ffin" value="<%=ffin%>">
              <input name="cantidad" type="hidden" id="cantidad" value="<%=cantidad%>">
              <label>
              <input type="image" name="imageField" id="imageField" border="1"  src="images/trimite.gif">
              </label>
            </form>
            </div></td>
          <td><div align="center"><a href="javascript:self.close()"><img src="images/boton_salir.gif" width="65" height="20" border="0"></a></div></td>
        </tr>
      </table>
    </div>
</body>
</html>
