<%-- 
    Document   : index
    Created on : 22/03/2011, 09:54:42 PM
    Author     : Carlos Medina
--%>
<%
String f1=request.getParameter("f1");
String f2=request.getParameter("f2");
String tipo=request.getParameter("tipo");
String nh=request.getParameter("nh");
String np=request.getParameter("np");
String nombre=request.getParameter("nombre");
String telefono=request.getParameter("telefono");
String email=request.getParameter("email");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

  
<head>

<script language="JavaScript" type="text/javascript">
<!--
function PopWindow()
{
window.open('detalleHab.jsp?f1=<%=f1%>&f2=<%=f2%>&tipo=<%=tipo%>&nh=<%=nh%>&np=<%=np%>&nombre=<%=nombre%>&telefono=<%=telefono%>&email=<%=email%>','360','width=600,height=380,menubar=no,scrollbars=yes,toolbar=no,location=no,directories=no,resizable=no,top=0,left=0');
}
//-->
</script>



 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta http-equiv="imagetoolbar" content="no" />

    <meta name="rating" content="General" />
    <meta name="keywords" content="hotel, timisoara, oxford, inns, suites, hotels, banat, booking" />
    <meta name="description" content="Hotel Oxford a fost conceput pentru a oferi maxim de confort clientilor sai." />
    <meta name="author" content="grafic design, web development, hosting powered by desero.net" />
    <meta name="publisher" content="Desero, www.desero.net" />
    <meta name="robots" content="all,index,follow" />
    <meta name="revisit-after" content="15 days" />

    <base  /> 
	 

    <title>Hotel Cupido ***</title>
	<script type="text/javascript">
		var language = '/en';
	</script>
    <script type="text/javascript" src="includes/_js/datechooser.js"></script>
    <script type="text/javascript" src="includes/_js/mootools.v1.00.js"></script>
    <script type="text/javascript" src="includes/_js/preload.js"></script>
	
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />

    <link rel="stylesheet" type="text/css" href="templates/en/css/oxford.css" />
	 <link rel="stylesheet" type="text/css" href="templates/en/css/datechooser.css" />
	 <link rel="stylesheet" type="text/css" href="templates/en/css/oxford-en.css" />
    <!--[if lte IE 6]><link rel="stylesheet" type="text/css" href="templates/en/css/ie.css" /><![endif]-->
	
    <script type="text/javascript" src="includes/_js/core.js"></script>
    <script type="text/javascript" src="includes/_js/core.ajax.js"></script>
    

	<script type="text/javascript" src="js/vanadium.js"></script>
	
    <link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />


    <style type="text/css">
<!--
#apDiv1 {
	position:absolute;
	left:823px;
	top:533px;
	width:300px;
	height:87px;
	z-index:1;
}
#apDiv2 {
	position:absolute;
	left:1095px;
	top:182px;
	width:261px;
	height:214px;
	z-index:2;
}
#contenidos {
	position:absolute;
	left:1123px;
	top:80px;
	width:183px;
	height:222px;
	z-index:2;
}
#apDiv3 {
	position:absolute;
	left:814px;
	top:143px;
	width:294px;
	height:216px;
	z-index:1000;
}
-->
    </style>
    <script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
</head>

<%         
    if ((f1 != null) && (f2 != null) && (tipo != null) && (nh != null) && (np != null)  && (nombre != null)) {
    %>
<body onload="PopWindow()">
 <% } else { %>
 <body>
  <%         
    }
    %>
    
    <div id="container">
      <!--[if !IE]>start page<![endif]-->
        <div id="wrapper">
          <div id="page">
            <div id="page_top">
              <div id="page_bottom">
                <div id="real_page">
                  <h1><a title="Home" href="#home" rel="main_menu" class="home">Hotel Cupido ***</a></h1>
                  <ul id="main_menu">
                    <li><a href="#rezervari" rel="main_menu" class="rezervari">Reservar</a></li>
                    <li><a href="#oferte" rel="main_menu" class="oferte">Hotel</a></li>
                    <li><a href="#despre" rel="main_menu" class="despre">Habitaciones</a></li>
                    <li><a href="#galerie" rel="main_menu" class="galerie">Photo Gallery</a></li>
                    <li><a href="#servicii" rel="main_menu" class="servicii">Servicios</a></li>
                    <li><a href="#camere" rel="main_menu" class="camere">Registrate</a></li>
                    <li><a href="#contact" rel="main_menu" class="contact">Contactanos</a></li>
                  </ul>
                  <!--[if !IE]>start content<![endif]-->
                  <div id="contents_wrapper">
                    <div id="contents" >
                      <!--[if !IE]>start home<![endif]-->
                      <div class="content" id="home"><img src="images/homepage.jpg" alt="" /></div>
                      <!--[if !IE]>end home<![endif]-->
                      <!--[if !IE]>start rezervari<![endif]-->
                      <div class="content" id="rezervari">
                        <h2>RESERVAR HABITACION</h2>
                        <div class="description">
                          <h3>RESERVACION</h3>
                          <div id="rezervari_div">
                            <form id="rezervari_form_id" class="formular" action="BuscarDisponibilidad" method="post">
                              <fieldset>
                              <div class="nr">
                                <div class="nr_1">
                                  <label for="data1">Fecha Inicio:</label>
                                  <span id="data1_wrapper">
                                    <input id="data1" class="text" name="f1" value="" type="text" />
                                  </span> </div>
                                <div class="nr_2">
                                  <label for="data2">Fecha Fin:</label>
                                  <span id="data2_wrapper">
                                    <input id="data2" class="text" name="f2" value="" type="text" />
                                  </span> </div>
                              </div>
                                <div class="rezervari_select">
                                <label for="rezervari_tip_camera">Tipo Habitacion:</label>
                                <select id="rezervari_tip_camera" name="cbotipo" >
                                  <optgroup label="Alege tip de camera">
                                  <option value="" >------- Seleccionar --------</option>
                                  <option value="SIMPLE">Habitacion Simple - 30 s/. (x/noche)</option>
                                  <option value="DOBLE">Habitacion Doble - 50 s/. (x/noche)</option>
                                  <option value="MATRIMONIAL">Habitacion Matrimonial - 80 s/m (x/noche)</option>
                                  </optgroup>
                                </select>
                              </div>
                                <div class="nr">
                                <div class="nr_1">
                                  <label for="rezervari_nr_camere">Nr. de Hab:</label>
                                  <span>
                                    <input id="rezervari_nr_camere" class="text" value="" name="numh" type="text" />
                                  </span> </div>
                                  <div class="nr_2">
                                  <label for="rezervari_nr_persoane">Nr. de personas:</label>
                                  <span>
                                    <input id="rezervari_nr_persoane" class="text" value="" name="nump" type="text" />
                                  </span> </div>
                                </div>
                                <label for="rezervari_nume">Nombre:</label>
                              <span>
                                <input id="rezervari_nume" class="text" name="nombre" value="" type="text" />
                              </span>
                              <label for="rezervari_telefon">Telefono:</label>
                              <span>
                                <input id="rezervari_telefon" class="text" name="telefono" value="" type="text" />
                              </span>
                              <label for="rezervari_email">Email:</label>
                              <span>
                                <input id="rezervari_email" class="text" name="email" value="" type="text" />
                              </span>
                              <div class="clearer">
                                <!-- -->
                              </div>
                                <input type="hidden" name="rezerv&#259;ri" value="1" />
                              <input type="hidden" name="sent" value="" />
                              <input class="button" name="Trimite" type="image" src="templates/en/images/send.gif"  />
                              </fieldset>
                            </form>
                          </div>
                        </div>
                      </div>
                      <!--[if !IE]>end rezervari<![endif]-->
                      <!--[if !IE]>start oferte<![endif]-->
                      <div class="content" id="oferte">
                        <h2>HOTEL</h2>
                        <div class="description">
                          <h3>HOTEL CUPIDO</h3>
                          <p>  Hotel Cupido es una empresa clasificada como pequeña de acuerdo a la Ley para el Desarrollo de la Competitividad de la Micro, Pequeña y Mediana empresa, publicada en el Diario Oficial “El Peruano” , dedicada a la prestación del servicio de hotelería. Sus instalaciones se localizan en Av. 28 de julio #562- Trujillo - La Libertad, y está clasificada dentro del sector servicios. <em>Venga y pase una estadia Inolvidable</em></p>
                        </div>
                      </div>
                      <!--[if !IE]>end oferte<![endif]-->
                      <!--[if !IE]>start despre noi<![endif]-->
                      <div class="content" id="despre">
                        <h2>HABITACIONES</h2>
                        <div class="description">
                          <h3>HABITACIONES</h3>
                          <p> <em>Habitacion Individual</em> dispone de 4 habitaciones individuales c/u con baño privado, TV cable e internet gratis. </p>                          <p> <em>Habitacion Doble</em> dispone de 4 habitaciones dobles equipadas con baño privado, TV cable e internet gratis. </p>
                          <p> <em>Habitacion Matrimonial</em> disponemos de 2 habitaciones matrimoniales con una cama espaciosa para que pase un momento agradable al aldo de su ser querido, ademas cuenta con  baño privado, TV cable, internet gratis y jacuzzi. </p>
                        </div>
                      </div>
                      <!--[if !IE]>end despre noi<![endif]-->
                      <!--[if !IE]>start galerie<![endif]-->
                      <div class="content" id="galerie">
                        <div id="fotos_nav2">
                          <ul>
                            <li><a href="#foto1">1</a></li>
                            <li><a href="#foto2">2</a></li>
                            <li><a href="#foto3">3</a></li>
                            <li><a href="#foto4">4</a></li>
                            <li><a href="#foto5">5</a></li>
                            <li><a href="#foto6">6</a></li>
                            <li><a href="#foto7">7</a></li>
                            <li><a href="#foto8">8</a></li>
                            <li><a href="#foto9">9</a></li>
                            <li><a href="#foto10">10</a></li>
                            <li><a href="#foto11">11</a></li>
                            <li><a href="#foto12">12</a></li>
                            <li><a href="#foto13">13</a></li>
                            <li><a href="#foto14">14</a></li>
                            <li><a href="#foto15">15</a></li>
                            <li><a href="#foto16">16</a></li>
                          </ul>
                        </div>
                        <ul id="fotos">
                          <li><span>SIDE VIEW</span><img class="foto" id="foto1"  width="494" height="494" src="images/galerie/13.jpg" alt="SIDE VIEW" /></li>
                          <li><span>SIDE VIEW</span><img class="foto" id="foto2" width="494" height="494" src="images/galerie/14.jpg" alt="SIDE VIEW" /></li>
                          <li><span>MAIN ENTRANCE</span><img class="foto" id="foto3" width="494" height="494" src="images/galerie/15.jpg" alt="MAIN ENTRANCE" /></li>
                          <li><span>MAIN ENTRANCE</span><img class="foto" id="foto4" width="494" height="494" src="images/galerie/16.jpg" alt="MAIN ENTRANCE" /></li>
                          <li><span>SUITE</span><img class="foto" id="foto5" width="494" height="494" src="images/galerie/05.jpg" alt="SUITE" /></li>
                          <li><span>DOUBLE ROOM</span><img class="foto" id="foto6" width="494" height="494" src="images/galerie/06.jpg" alt="DOUBLE ROOM" /></li>
                          <li><span>SINGLE ROOM</span><img class="foto" id="foto7" width="494" height="494" src="images/galerie/07.jpg" alt="SINGLE ROOM" /></li>
                          <li><span>LOBBY</span><img class="foto" id="foto8" width="494" height="494" src="images/galerie/08.jpg" alt="LOBBY" /></li>
                          <li><span>LOBBY</span><img class="foto" id="foto9" width="494" height="494" src="images/galerie/09.jpg" alt="LOBBY" /></li>
                          <li><span>LOBBY &amp; BAR</span><img class="foto" id="foto10" width="494" height="494" src="images/galerie/10.jpg" alt="LOBBY &amp; BAR" /></li>
                          <li><span>PRIVATE OFFICE</span><img class="foto" id="foto11" width="494" height="494" src="images/galerie/11.jpg" alt="PRIVATE OFFICE" /></li>
                          <li><span>BREAKFAST ROOM</span><img class="foto" id="foto12" width="494" height="494"  src="images/galerie/12.jpg" alt="BREAKFAST ROOM" /></li>
                          <li><span>BATHROOM</span><img class="foto" id="foto13" width="494" height="494" src="images/galerie/04.jpg" alt="BATHROOM" /></li>
                          <li><span>EXECUTIVE SUITE</span><img class="foto" id="foto14" width="494" height="494" src="images/galerie/03.jpg" alt="EXECUTIVE SUITE" /></li>
                          <li><span>GARDEN SUITE</span><img class="foto" id="foto15" width="494" height="494" src="images/galerie/02.jpg" alt="GARDEN SUITE" /></li>
                          <li><span>GARDEN SUITE</span><img class="foto" id="foto16" width="494" height="494"  src="images/galerie/01.jpg" alt="GARDEN SUITE" /></li>
                        </ul>
                      </div>
                      <!--[if !IE]>end galerie<![endif]-->
                      <!--[if !IE]>start servicii<![endif]-->
                      <div class="content" id="servicii">
                        <h2>SERVICIOS</h2>
                        <div class="description">
                          <h3>Nuestros Servicios:</h3>
                          <ul>
                            <li>Cada habitacion incluye baño privado</li>
                            <li>Toda habitacion cuenta con TV cable</li>
                            <li>Cuenta con Internet WiFi gratuito</li>
                            <li>Ofrece Gimnasio par todos los clientes</li>
                            <li>Cuenta con 2 piscinas</li>
                            <li>Ofrece comedor y cafeteria.</li>
                            <li>Transporte guiado desde su punto de llegada</li>
                          </ul>
                        </div>
                      </div>
                      <!--[if !IE]>end servicii<![endif]-->
                      <!--[if !IE]>start tipuri de camere<![endif]-->
                      <div class="content" id="camere">
                        <h2>Registrate</h2>
                        
                        <div class="description">
                            <h3>RESERVACION</h3>
                                                              <div id="tipuri_camere">
                           <form id="registro" name="registro" method="post" action="RegistrarCliente" >
  <table width="264" border="0">
    <tr>
      <td width="82">Nombres:</td>
      <td width="166"><label>
        <input type="text" name="txtnombres" id="txtnombres" class="text :required" />
      </label></td>
    </tr>
    <tr>
      <td>Apellidos:</td>
      <td><input type="text"  name="txtapellidos" id="txtapellidos" class="text :required" /></td>
    </tr>
    <tr>
      <td>DNI:</td>
      <td><input name="txtdni" type="text" id="txtdni" maxlength="8" class="text :length;8 :integer"/></td>
    </tr>
        <tr>
      <td>Telefono:</td>
      <td><input type="text"  name="txttelefono" id="txttelefono" class="text :required"/></td>
    </tr>
    <tr>
      <td>E-mail:</td>
      <td><input type="text"  name="txtemail" id="txtemail" class="text :email"/></td>
    </tr>
    <tr>
      <td>Usuario:</td>
      <td><input type="text" name="txtusuario" id="txtusuario" class="text :required" /></td>
    </tr>
    <tr>
      <td>Clave</td>
      <td><input type="text" name="txtclave" id="txtclave" class="text :required"/></td>
    </tr>
    <tr>
      <td colspan="2"><label>
        <div align="center">
          <input name="txtfiltro" type="hidden" value="1"><input type="image" name="imageField" id="imageField" src="templates/en/images/send.gif" />
          </div>
      </label></td>
    </tr>
  </table>
</form>
                          </div>
                          <p></p>
                        </div>
                      </div>
                      <!--[if !IE]>end tipuri de camere<![endif]-->
                      <!--[if !IE]>start contact<![endif]-->
                      <div class="content" id="contact">
                        <!--[if !IE]>start formular contact<![endif]-->
                        <div id="formular_contact">
                          <h2>CONTACTENOS</h2>
                          <div class="description">
                            <h3>Formulario de Contacto:</h3>
                            <div id="contact_div">
                              <form id="contact_form_id" class="formular formular2" action="#contact" method="post" >
                                <fieldset>
                                <label for="contact_nume">Nombre:</label>
                                <span>
                                  <input id="contact_nume" class="text" name="nume" value="" type="text" />
                                </span>
                                <label for="contact_companie">Apellidos:</label>
                                <span>
                                  <input id="contact_companie" class="text" name="companie" value="" type="text" />
                                </span>
                                <label for="contact_email">E-mail:</label>
                                <span>
                                  <input id="contact_email" class="text" name="email" value="" type="text" />
                                </span>
                                <label for="contact_mesaj">Mensage:</label>
                                <span>
                                  <textarea id="contact_mesaj" name="mesaj" cols="" rows=""></textarea>
                                </span>
                                <div class="clearer">
                                  <!-- -->
                                </div>
                                  <input type="hidden" name="contact" value="1" />
                                <input type="hidden" name="sent" id="sent" value="" />
                                <input class="button" name="Trimite" type="image" src="templates/en/images/send.gif" onclick="contact_form('contact_form_id'); return false;" />
                                <div class="clearer">
                                  <!-- -->
                                </div>
                                </fieldset>
                              </form>
                              <div id="contact_info">
                                <ul>
                                  <li>Av. 28 de julio #562</li>
                                  <li>Trujillo - La Libertad - Peru</li>
                                  <li><a class="link" href="#">webmaster@hotelcupido.com</a></li>
                                  <li>Telefono: +(044) 793545</li>
                                  <li>Fax: +4 (0) 256 217 009</li>
                                </ul>
                                <a href="#locatie" id="contact_link">Ver Mapa</a> </div>
                              <div class="clearer">
                                <!-- -->
                              </div>
                            </div>
                          </div>
                        </div>
                        <!--[if !IE]>start formular contact<![endif]-->
                        <!--[if !IE]>start locatie<![endif]-->
                        <div id="locatie"> <a id="locatie_link" href="#formular_contact"><img class="foto"  width="494" height="494" src="images/harta.gif" alt="" /></a> </div>
                        <!--[if !IE]>end locatie<![endif]-->
                      </div>
                      <!--[if !IE]>end contact<![endif]-->
                    </div>
                  </div>
                  <!--[if !IE]>end content<![endif]-->
                </div>
              </div>
          </div>
	     </div>
		</div> 
      <!--[if !IE]>end page<![endif]-->

      <!--[if !IE]>start footer<![endif]-->
        <div id="footer">
		  	<ul id="lang">
				<li><a href="#" class="ro">English</a></li>
				<li><span class="en">Español</span></li>
	    </ul>
		  	<p>Copirigth 2011 Hotel Cupido. Todos los derechos reservados</p> <a href="intranet.jsp" title="INTRANET" target="_blank" id="desero" rel="external">Intranet</a>		  </div>
      <!--[if !IE]>end footer<![endif]-->

    </div>
    
	 

    <!--[if !IE]>start google analytics<![endif]-->
    <div id="apDiv1"><img src="images/social.png" alt="" width="291" height="90" usemap="#Map" />
<map name="Map" id="Map"><area shape="rect" coords="8,7,76,70" href="#" alt="" /><area shape="rect" coords="110,8,179,71" href="#" alt="" /><area shape="rect" coords="214,6,283,72" href="#" alt="" /></map></div>
    <div id="apDiv3">
      <script type="text/javascript">
AC_FL_RunContent( 'codebase','http://active.macromedia.com/flash9/cabs/swflash.cab#version=9,0,28,0','name','multimedia','width','307','height','215','id','multimedia','src','panoStudioViewer','allowscriptaccess','always','allownetworking','all','allowfullscreen','true','flashvars','pano=multimedia.xml','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','panoStudioViewer' ); //end AC code
      </script>
      <noscript>
      <object classid="CLSID:D27CDB6E-AE6D-11cf-96B8-444553540000"
          codebase="http://active.macromedia.com/flash9/cabs/swflash.cab#version=9,0,28,0" name="multimedia" width="307" height="215" id="multimedia">
        <param name="movie" value="panoStudioViewer.swf" />
        <param name="allowScriptAccess" value="always" />
        <param name="allowNetworking" value="all" />
        <param name="allowFullScreen" value="true" />
        <param name="FlashVars" value="pano=multimedia.xml" />
        <embed src="panoStudioViewer.swf" width="307" height="215"
           type="application/x-shockwave-flash" name="multimedia"
 	   allowscriptaccess="always" allownetworking="all" allowfullscreen="true"
	   FlashVars="pano=multimedia.xml"
           pluginspage="http://www.macromedia.com/go/getflashplayer" > </embed>
      </object>
      </noscript>
    </div>
<!--[if !IE]>end google analytics<![endif]-->
  </body>
<% String msg=request.getParameter("msg");
                        if("ok".equals(msg)){
                        %>
                        <script language='javaScript' >
                            alert("cliente registrado correctamente!");
                        </script>
<% }else{
                            if("Falso".equals(msg)){
                      %>
                  <script language='javaScript'>
                           alert("Error al registrar Cliente Verifique sus Datos");
                        </script>
<% }} %>
  <% String f=request.getParameter("f1");
                        if("".equals(f)){
                        %>
                        <script language='javaScript' >
                            alert("Porfavor Revise sus datos!");
                        </script>
    <% }%>

</html>