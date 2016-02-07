<%-- 
    Document   : detalleHab
    Created on : 30/03/2011, 03:55:57 PM
    Author     : Carlos Medina
--%>
<%
String f1=request.getParameter("f1");
String f2=request.getParameter("f2");
String tipo=request.getParameter("tipo");
String nh=request.getParameter("nh");
String np=request.getParameter("np");
String cliente=request.getParameter("nombre");
String telefono=request.getParameter("telefono");
String email=request.getParameter("email");

%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="Dao.conexion,java.sql.*"%>
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
	width: 180px;
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
    <form action="logeoCliente.jsp" method="post">
    <table width="502" height="29" border="0" align="center">
          <tr>
            <td height="23"><div align="center" class="Estilo2">Sr(a). <span class="Estilo3"><%=cliente%></span> le informamos que tiene disponible las siguientes habitaciones para realizar su reservacion:</div></td>
          </tr>
        </table>
        <br>
        <table width="383" border="0" align="center">
          <tr>
            <td width="55"><span class="Estilo4">Fechas:</span></td>
            <td width="245"><span class="Estilo5">del</span> <span class="Estilo4"><%=f1%></span> <span class="Estilo5">hasta</span> <span class="Estilo4"><%=f2%></span></td>
          </tr>
          <tr>
            <td colspan="2"><input name="f1" type="hidden" id="f1" value="<%=f1%>">
              <input name="f2" type="hidden" id="f4" value="<%=f2%>">
              <input name="tipo" type="hidden" id="tipo" value="<%=tipo%>">
              <input name="nh" type="hidden" id="nh" value="<%=nh%>">
              <input name="np" type="hidden" id="np" value="<%=np%>">
              <input name="cliente" type="hidden" id="cliente" value="<%=cliente%>">
<br>
            <table width="376" border="1" align="center" bordercolor="#C5AF8A">

              <tr>
                <td width="134"><div align="center" class="Estilo3">CAFETERIA(s/. 20)</div></td>
                <td width="117"><div align="center" class="Estilo3">RESTAURANT (s/. 15)</div></td>
              </tr>
              <tr>
                <td><span class="Estilo10"><label></label>
                </span>
                  <div align="center" class="Estilo10">
  <input type="radio" name="radio" id="C" value="S">
  SI
  <input type="radio" name="radio" id="C2" value="N">
  NO</div>
</label></td>
                <td><span class="Estilo10">
              <label></label>
                </span>
                  <div align="center" class="Estilo10">
                    <input type="radio" name="radio2" id="C3" value="S">
                    SI
  <input type="radio" name="radio2" id="C4" value="N">
                NO</div></td>
              </tr>
          </table></td></tr>
      </table>
  <br>
       
                                             
        <table width="476" border="1" align="center" bordercolor="#C5AF8A">
          <tr>
            <td width="138"><div align="center"><strong><span class="Estilo4">Tipo Habitacion:</span></strong></div></td>
            <td width="68"><div align="center"><strong><span class="Estilo4">Precio:</span></strong></div></td>
            <td width="146"><div align="center"><strong><span class="Estilo4">Hab. Disponibles</span></strong></div></td>
            <td width="96"><div align="center"><strong><span class="Estilo4">Reservar</span></strong></div></td>
          </tr>
          
             <%
                    Connection cn;
                    conexion con = new conexion();
                    try {
                    cn = con.conectar();
		    		Statement stmt = cn.createStatement();

						String codigo="";

						String tipoh="";

						int numero=0;

						String precio="";

						int cantidad=0;
						
						int disponible=0;

                                                int count=0;
										
						int c=0;

						String a="exec BuscarHab '" + tipo + "','" + f1 + "','" + f2 + "'";

						ResultSet rs = stmt.executeQuery(a);
                                                while (rs.next()) {
                                                count=1;
						codigo=String.valueOf(rs.getString(1));
                                                tipoh=String.valueOf(rs.getString(2));
                                                precio=String.valueOf(rs.getString(3));
                                                numero=Integer.valueOf(rs.getString(4));
                                                cantidad=Integer.valueOf(rs.getString(7));
						disponible = numero;
                      }
										 %>
          <% if(count==1 && disponible >=1){%>
           <tr>
            <td><span class="Estilo10"><%=tipo%></span></td>
            <td><span class="Estilo10">s/. <%=precio%></span></td>
            <td><div align="center"><span class="Estilo10"><%=disponible%></span></div></td>
            <td><label>
              <input type="image" name="imageField" id="imageField" src="images/reservar.jpg">
            </label></td>
          </tr>
        
          <% }if(count==0  && "SIMPLE".equals(tipo)){%>
          <tr>
            <td><span class="Estilo10">SIMPLE</span></td>
            <td><span class="Estilo10">s/. 30</span></td>
            <td><div align="center"><span class="Estilo10">4</span></div></td>
            <td><input type="image" name="imageField2" id="imageField2" src="images/reservar.jpg"></td>
          </tr>
          <%}%>

          <% if(count==0 &&   "DOBLE".equals(tipo)){%>
          <tr>
            <td><span class="Estilo10">DOBLE</span></td>
            <td><span class="Estilo10">s/. 50</span></td>
            <td><div align="center"><span class="Estilo10">4</span></div></td>
            <td><input type="image" name="imageField3" id="imageField3" src="images/reservar.jpg"></td>
          </tr>
          <%}%>
          <% if(count==0 &&  "MATRIMONIAL".equals(tipo)){%>
          <tr>
            <td><span class="Estilo10">MATRIMONIAL</span></td>
            <td><span class="Estilo10">s/. 80</span></td>
            <td><div align="center"><span class="Estilo10">2</span></div></td>
            <td><input type="image" name="imageField4" id="imageField4" src="images/reservar.jpg"></td>
          </tr>
        
          <%}if (disponible < 1 && count==1){%>
          <tr>
            <td colspan="4"><div align="center" class="Estilo4">LO SENTIMOS, NO HAY HABITACIONES DISPONIBLES, POR FAVOR ELIJA OTRO TIPO DE HABITACION. GRACIAS</div></td>
          </tr>
          <%}%>    
 </table>
 </form>
<div align="center"><br>        
            <a href="javascript:self.close()"><img src="images/boton_salir.gif" width="65" height="20" border="0"></a>        </div>
</body>
</html>

    <%
                    }catch (SQLException ex) {
                        System.out.println(ex.toString());
                    }         
%>