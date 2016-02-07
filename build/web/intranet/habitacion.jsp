<%-- 
    Document   : cliente
    Created on : 10/04/2011, 11:48:33 PM
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
        <style type="text/css">
<!--
.Estilo1 {	font-family: "Courier New", Courier, monospace;
	font-size: 13px;
}
-->
        </style>
</head>
    <body>
    <form name="form1" method="post" action="../moduloHabitacion">
      <table width="469" border="0" align="center">
        <tr>
          <td width="11">&nbsp;</td>
          <td width="169">Ingrese Codigo o Tipo:</td>
          <td width="25">&nbsp;</td>
          <td width="241"><label>
            <input type="text" name="txtfiltro" id="txtfiltro">
            <input type="submit" name="buscar" id="buscar" value="Buscar">
          </label></td>
          <td width="1">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td><input name="codigo" type="hidden" id="codigo" value="<%=request.getParameter("codigo")%>"></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">Tipo:</div></td>
          <td>&nbsp;</td>
          <td><label>
            <select name="tipo" id="tipo">
              <option value="SIMPLE">SIMPLE</option>
              <option value="DOBLE">DOBLE</option>
              <option value="MATRIMONIAL">MATRIMONIAL</option>
            </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">Precio:</div></td>
          <td>&nbsp;</td>
          <td><span class="maternidad_txt_destacado">
            <%         
    if ("3".equals(resp)) {
    %>
          </span>
          <input name="txtprecio" type="text" id="txtprecio" value="<%=request.getParameter("precio")%>">
          <span class="maternidad_txt_destacado">
          <% } else { %>
          <input type="text" name="txtprecio" id="txtprecio">
          <% } %>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">Nº Habitaciones::</div></td>
          <td>&nbsp;</td>
          <td><span class="maternidad_txt_destacado">
            <%         
    if ("3".equals(resp)) {
    %>
          </span>
            <input name="txtnumero" type="text" id="txtnumero" value="<%=request.getParameter("numero")%>">
          <span class="maternidad_txt_destacado">
          <% } else { %>
          <input name="txtnumero" type="text" id="txtnumero">
          <% } %>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="3">
            <div align="center">
              <img src="../images/galerie/01.jpg" width="223" height="182"><br>
              <input type="submit" name="grabar" id="grabar" value="Grabar">
              <input type="submit" name="modificar" id="modificar" value="Modificar">
              <input type="submit" name="eliminar" id="eliminar" value="Eliminar">
              <input type="reset" name="button4" id="button4" value="Limpiar">
              </div>          </td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td colspan="5"><table width="414" border="0" align="center">
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="center" class="Estilo1"></div></td>
              <td><div align="center" class="Estilo1"><a href="../jasper/HabitacionesDisponibles.pdf" target="_blank">HABITACIONES DISPONIBLES</a></div></td>
              <td><div align="center" class="Estilo1"></div></td>
            </tr>
          </table></td>
        </tr>
      </table>
    </form>
</body>
 <% String msg=request.getParameter("msg");
                        if("ok".equals(msg)){
                        %>
                        <script language='javaScript' >
                            alert("Habitacion registrada correctamente!");
                        </script>
    <% }else{
                            if(msg=="Falso"){
                      %>
                  <script language='javaScript'>
                           alert("Error al registrar Habitacion");
                        </script>
<% }} %>
                       
                       
                       
                        <% 
                        if("1".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Habitacion Modificada correctamente!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("2".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Modificar Habitacion!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("3".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Habitacion encontrada!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("4".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Habitacion no Existe!");
                        </script>
<% } %>
                       
			            <% 
                        if("5".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Habitacion Eliminada!");
                        </script>
                      	<% } %>
                          <% 
                        if("6".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Eliminar!");
                        </script>
                      	<% } %>
</html>
