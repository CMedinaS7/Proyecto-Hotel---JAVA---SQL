
function GetXmlHttpObject()
  { 
    var objXMLHttp=null
    if (window.XMLHttpRequest)
			{
        objXMLHttp=new XMLHttpRequest()
      }
			else if (window.ActiveXObject)
			{
        objXMLHttp=new ActiveXObject("Microsoft.XMLHTTP")
			}
      return objXMLHttp
  }     


function load_content(div, url, poststr, upload)
{
		if(!div || !url)
			{
				return;
			}
		id(div).innerHTML = '<span class="loading">Se incarca..</span>';
		xmlHttp=GetXmlHttpObject();
		if (xmlHttp==null)
		{
			alert ("Browser does not support HTTP Request");
			return;
		}
		xmlHttp.onreadystatechange = function ()
			{
				if (xmlHttp.readyState == 4 || xmlHttp.readyState=="complete")
					{
						id(div).innerHTML = xmlHttp.responseText;
						setForm();
						hide_calendar();
  						date_chooser_init();
  						date_chooser_call();
					} 
			}
		if(poststr)
			{
				xmlHttp.open('POST', url, true);
				xmlHttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				xmlHttp.setRequestHeader("Content-length", poststr.length);
				xmlHttp.setRequestHeader("Connection", "close");
				xmlHttp.send(poststr);	
			}
		else
			{
				xmlHttp.open("GET", url, true);
				xmlHttp.send(null);
			}
}

