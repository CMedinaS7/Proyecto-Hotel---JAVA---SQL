<%-- 
    Document   : intranet
    Created on : 23/03/2011, 10:00:08 AM
    Author     : Carlos Medina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>JSP Page</title>
   
	
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />

    <!--[if lte IE 6]><link rel="stylesheet" type="text/css" href="templates/en/css/ie.css" /><![endif]-->
	
 

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
.Estilo3 {
	font-family: Verdana, Arial, Helvetica, sans-serif
}
.Estilo4 {font-size: 16px; font-weight: bold; color: #694F47; }
.Estilo5 {color: #C7B18B}
.Estilo6 {color: #C7B18B; font-weight: bold; }
-->
    </style>
</head>
    <body>
    <form name="form1" method="post" action="loginpersonal">
   
                          <p>&nbsp;</p>
                          <p>&nbsp;</p>
                          <p>&nbsp;</p>
                          <p align="center" class="Estilo1">&nbsp;</p>
                          <p align="center" class="Estilo4"><br>
                          INTRANET: HOTEL CUPIDO</p>
                          <p align="center" class="Estilo3">Ingrese Usuario y Clave:</p>
                          <div>
                            <table width="232" border="0" align="center" bordercolor="#9A6047" bgcolor="#8A4E47" class="Estilo1">
                              <tr>
                                <td width="86"><span class="Estilo6">Usuario :
                                    <label></label>
                                </span>
                                    <span class="Estilo5">
                                    <label></label>
                                  </span>
                                <label></label></td>
                                <td width="130"><input name="usuario" type="text" id="usuario"></td>
                              </tr>
                              <tr>
                                <td><span class="Estilo6">C l a v e:
                                    <label></label>
                                <label></label>
                                <label></label>
                                </span>
                                    <span class="Estilo5">
                                    <label></label>
                                  </span>
                                <label></label></td>
                                <td><input name="clave" type="password" id="clave"></td>
                              </tr>
                              <tr>
                                <td>&nbsp;</td>
                                <td><input name="button" type="submit" id="button" value="Enviar">
                                    <input name="button2" type="reset" id="button2" value="Limpiar"></td>
                              </tr>
                            </table>
                            <div align="center"></div>
                          </div>
                          <p>&nbsp;</p>
    </form>
    </body>
</html>
