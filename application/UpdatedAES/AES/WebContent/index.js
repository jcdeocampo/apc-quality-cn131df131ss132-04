var xmlHttp = createXmlHttpRequestObject();

function createXmlHttpRequestObject() {
	var xmlHttp;
	
	if(window.ActiveXObject) {
		try{
			xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		}catch(e){
			xmlHttp = false;
		}
	}else{
		try{
			xmlHttp = new XMLHttpRequest();
		}catch(e) {
			xmlHttp = false;
		}
	}
	
	if(!xmlHttp)
		alert("Can't create object");
	else
		return xmlHttp;
}

function process() {
	if(xmlHttp.readyState == 0 || xmlHttp.readyState == 4){
		
		var s = "Hello World!";
		inputValue = encodeURIComponent(document.getElementById("userInput").value);
		divDuterte = document.getElementById("divDuterte");
		divDuterte.innerHTML = s;
	}
}