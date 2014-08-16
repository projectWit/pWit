// JavaScript Document
function createRequest() {
	try {
		return new XMLHttpRequest();
	} catch (e) {
		// TODO: handle exception
		var versions = [ 'Msxml12.XMLHTTP.6.0', 'Msxml12.XMLHTTP.5.0', 'Msxml12.XMLHTTP.4.0', 
		                 'Msxml12.XMLHTTP.3.0', 'Msxml12.XMLHTTP', 'Microsoft.XMLHttp' ];
		for (var i=0; i< versions.length; i++) {
			try {
				return new ActiveXObject(versions[i]);
			} catch (e) {
				// TODO: handle exception
			}
		} // end for
	} // end catch
}
