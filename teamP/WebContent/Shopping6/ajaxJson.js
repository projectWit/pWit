// JavaScript Document
xhRequest =  function() {
	this.xhReq;
};

xhRequest.prototype = {
	
	setXHRequest : function() {
		this.xhReq = null;
		if(window.XMLHttpRequest) {
			this.xhReq = new XMLHttpRequest();
		}
		else {
			this.xhReq  = new ActiveXObject("Microsoft.XMLHTTP");
		}
	},
	
	openGet : function(pUrl, pCallback) {
		this.xhReq.open("Get", pUrl, true);
		this.xhReq.onreadystatechange = pCallback;
		this.xhReq.send(null);
	}			

};