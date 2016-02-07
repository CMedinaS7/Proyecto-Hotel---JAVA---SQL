<%-- 
    Document   : detalleHab
    Created on : 30/03/2011, 03:55:57 PM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%
String tipo=request.getParameter("tipo");
int nh=Integer.parseInt(request.getParameter("nh"));
int np=Integer.parseInt(request.getParameter("np"));
String fini=request.getParameter("f1");
String ffin=request.getParameter("f2");
String caf=request.getParameter("radio");
String res=request.getParameter("radio2");
String cliente=request.getParameter("cliente");
int precio=0;
int total=0;
int serc=0;
int serr=0;
String c="";
String r="";
if ("SIMPLE".equals(tipo)){
precio=30;
}
if ("DOBLE".equals(tipo)){
precio=50;
}
if ("MATRIMONIAL".equals(tipo)){
precio=80;
}
if ("S".equals(caf)){
serc=20;
c="SI";
}else{
serc=0;
c="NO";
}

if ("S".equals(res)){
serr=15;
r="SI";
}else{
serr=0;
r="NO";
}

total=((serr * np) + (serc * np)) + (precio * nh) ;
%>
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
            <td height="23"><div align="center" class="Estilo2">Sr(a). <span class="Estilo3"><%=cliente%></span> para poder reservar una habitacion debe estar registrado si aun no esta registrado haga <a href="index.jsp#camere" target="_blank"><span class="Estilo3">click aqui</span>:</a></div></td>
          </tr>
    </table>
        <br>
        <br>
        <form action="loginCliente" method="post">
        <table width="570" border="1" align="center" bordercolor="#C5AF8A">
          <tr>
            <td width="78"><div align="center"><strong><span class="Estilo4">Habitacion:</span></strong></div></td>
            <td width="75"><div align="center"><strong><span class="Estilo4">Cantidad</span></strong></div></td>
            <td width="97"><div align="center"><strong><span class="Estilo4">Inicio</span></strong></div></td>
            <td width="97"><div align="center"><strong><span class="Estilo4">Fin</span></strong></div></td>
            <td width="77"><div align="center"><strong><span class="Estilo4">Cafeteria</span></strong></div></td>
            <td width="117"><div align="center"><strong><span class="Estilo4">Almuerzo</span></strong></div></td>
            <td width="97"><div align="center"><strong><span class="Estilo4">Total</span></strong></div></td>
          </tr>
          <tr>
            <td><div align="center"><span class="Estilo10"><%=tipo%></span></div></td>
            <td><div align="center"><span class="Estilo10"><%=nh%></span></div></td>
            <td><div align="center"><span class="Estilo10"><%=fini%></span></div></td>
            <td><div align="center"><span class="Estilo10"><%=ffin%></span></div></td>
            <td><div align="center"><span class="Estilo10"><%=c%></span></div></td>
            <td><div align="center"><span class="Estilo10"><%=r%></span></div></td>
            <td><div align="center"><span class="Estilo10">s/. <%=total%></span></div></td>
          </tr>
        </table>
        <br>
        <table width="169" border="1" align="center" bordercolor="#C5AF8A">
          <tr>
            <td colspan="2"><div align="center"><strong><span class="Estilo4">LOGEARSE</span></strong></div></td>
          </tr>
          <tr>
            <td width="78"><div align="center"><span class="Estilo10">USUARIO:</span></div></td>
            <td width="75">
              <label>
                <input type="text" name="txtusuario" id="txtusuario">
              </label>
                        </td>
          </tr>
          <tr>
            <td><div align="center"><span class="Estilo10">CLAVE:</span></div></td>
            <td>
              <label>
                <input type="password" name="txtclave" id="txtclave">
              </label>
                       </td>
          </tr>
          <tr>
            <td>
              <input name="tipo" type="hidden" id="tipo" value="<%=tipo%>">
              <input name="nh" type="hidden" id="nh" value="<%=nh%>">
              <input name="fini" type="hidden" id="fini" value="<%=fini%>">
              <input name="ffin" type="hidden" id="ffin" value="<%=ffin%>">
              <input name="serc" type="hidden" id="serc" value="<%=serc%>">
              <input name="serr" type="hidden" id="serr" value="<%=serr%>">
              <input name="total" type="hidden" id="total" value="<%=total%>">
              <input name="cliente" type="hidden" id="cliente" value="<%=cliente%>">                        </td>
            <td>
              
              <input type="submit" name="button" id="button" value="Enviar">
             
              <input type="reset" name="button2" id="button2" value="Limpiar">            </td>
          </tr>
        </table>
        </form>
<div align="center"><br>        
            <a href="javascript:self.close()"><img src="images/boton_salir.gif" width="65" height="20" border="0"></a>        </div>
</body>
</html>
