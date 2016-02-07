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
    <form name="form1" method="post" action="../moduloPersonal">
      <table width="449" border="0" align="center">
        <tr>
          <td width="10">&nbsp;</td>
          <td width="162">Ingrese Codigo o DNI:</td>
          <td width="24">&nbsp;</td>
          <td width="230"><label>
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
          <td><div align="right">Nombres:</div></td>
          <td>&nbsp;</td>
          <td><label> <span class="maternidad_txt_destacado">
            <%         
    if ("3".equals(resp)) {
    %>
            </span>
                <input type="text" value="<%=request.getParameter("nombres")%>" name="txtnombres" id="txtnombres">
                <span class="maternidad_txt_destacado">
                <% } else { %>
                <input type="text" name="txtnombres" id="txtnombres">
                <% } %>
              </span></label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">Apellidos:</div></td>
          <td>&nbsp;</td>
          <td><span class="maternidad_txt_destacado">
            <%         
    if ("3".equals(resp)) {
    %>
            </span>
              <input name="txtapellidos" type="text" id="txtapellidos" value="<%=request.getParameter("apellidos")%>">
              <span class="maternidad_txt_destacado">
              <% } else { %>
              <input type="text" name="txtapellidos" id="txtapellidos">
              <% } %>
            </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">DNI:</div></td>
          <td>&nbsp;</td>
          <td><span class="maternidad_txt_destacado">
            <%         
    if ("3".equals(resp)) {
    %>
            </span>
              <input name="txtdni" type="text" id="txtdni" value="<%=request.getParameter("dni")%>" maxlength="8">
              <span class="maternidad_txt_destacado">
              <% } else { %>
              <input name="txtdni" type="text" id="txtdni" maxlength="8">
              <% } %>
            </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">Telefono:</div></td>
          <td>&nbsp;</td>
          <td><span class="maternidad_txt_destacado">
            <%         
    if ("3".equals(resp)) {
    %>
          </span>
          <input name="txttelefono" type="text" id="txttelefono" value="<%=request.getParameter("telefono")%>">
          <span class="maternidad_txt_destacado">
          <% } else { %>
          <input type="text" name="txttelefono" id="txttelefono"><%}%>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">
            <p>Direccion:</p>
            </div></td>
          <td>&nbsp;</td>
          <td><span class="maternidad_txt_destacado">
            <%         
    if ("3".equals(resp)) {
    %>
          </span>
          <input name="txtdireccion" type="text" id="txtdireccion" value="<%=request.getParameter("direccion")%>">
          <span class="maternidad_txt_destacado">
          <% } else { %>
          <input type="text" name="txtdireccion" id="txtdireccion"><%}%>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">E-mail:</div></td>
          <td>&nbsp;</td>
          <td><span class="maternidad_txt_destacado">
            <%         
    if ("3".equals(resp)) {
    %>
          </span>
          <input name="txtemail" type="text" id="txtemail" value="<%=request.getParameter("email")%>">
          <span class="maternidad_txt_destacado">
          <% } else { %>
          <input type="text" name="txtemail" id="txtemail"><%}%>

          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">Cargo:</div></td>
          <td>&nbsp;</td>
          <td><label>
            <select name="cargo" id="cargo">
              <option value="ADMINISTRADOR">ADMINISTRADOR</option>
              <option value="CAJERO">CAJERO</option>
                        </select>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">Usuario:</div></td>
          <td>&nbsp;</td>
          <td><span class="maternidad_txt_destacado">
            <%         
    if ("3".equals(resp)) {
    %>
          </span>
          <input name="txtusuario" type="text" id="txtusuario" value="<%=request.getParameter("usuario")%>">
          <span class="maternidad_txt_destacado">
          <% } else { %>
          <input type="text" name="txtusuario" id="txtusuario">
          <%}%>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td><div align="right">Clave:</div></td>
          <td>&nbsp;</td>
          <td><span class="maternidad_txt_destacado">
            <%         
    if ("3".equals(resp)) {
    %>
          </span>
          <input name="txtclave" type="password" id="txtclave" value="<%=request.getParameter("clave")%>">
          <span class="maternidad_txt_destacado">
          <% } else { %>
          <input type="password" name="txtclave" id="txtclave">
          <%}%>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td colspan="3"><label>
            <div align="center">
              <input type="submit" name="grabar" id="grabar" value="Grabar">
              <input type="submit" name="modificar" id="modificar" value="Modificar">
              <input type="submit" name="eliminar" id="eliminar" value="Eliminar">
              <input type="reset" name="button4" id="button4" value="Limpiar">
              </div>
          </label></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td colspan="5"><table width="414" border="0" align="center">
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><div align="center" class="Estilo1"></div></td>
              <td><div align="center" class="Estilo1"><a href="../jasper/PersonalActivo.pdf" target="_blank">PERSONAL ACTIVO</a></div></td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
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
                            alert("Personal registrado correctamente!");
                        </script>
    <% }else{
                            if(msg=="Falso"){
                      %>
                  <script language='javaScript'>
                           alert("Error al registrar Personal");
                        </script>
<% }} %>
                       
                       
                       
                        <% 
                        if("1".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Personal Modificado correctamente!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("2".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Error al Modificar Personal!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("3".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Personal encontrado!");
                        </script>
                      	<% } %>
                        
                        <% 
                        if("4".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Personal no Existe!");
                        </script>
<% } %>
                       
			            <% 
                        if("5".equals(resp)){
                        %>
                        <script language='javaScript' >
                            alert("Personal Eliminado!");
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
