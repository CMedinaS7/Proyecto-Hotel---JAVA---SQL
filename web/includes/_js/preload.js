var imagini = new Array();
 function preloader_menu ()
 {   
	 var menu_img = ['http://www.hotel-oxford.ro/templates/images/rezervari.gif','http://www.hotel-oxford.ro/templates/images/oferte-speciale.jpg', 'http://www.hotel-oxford.ro/templates/images/despre-noi.jpg', 'http://www.hotel-oxford.ro/templates/images/galerie-foto.gif', 'http://www.hotel-oxford.ro/templates/images/servicii.jpg', 'http://www.hotel-oxford.ro/templates/images/tipuri-de-camere.jpg', 'http://www.hotel-oxford.ro/templates/images/contact.jpg']
     for(i=0; i<menu_img.length; i++)
	 {
	   imagini[i] = new Image();
	   imagini[i].src = menu_img[i];
	}
 }
 
 preloader_menu ();