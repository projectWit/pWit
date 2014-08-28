// id=thirdCategory 의 글자를 가지고 와서 RGB로 변환한 뒤 CategoryImages에 배경색으로 style
/*$(function() {
	for (var j = 1; j < 6; j++) {
		var getText = new Array();
		getText[j] = $('[id^=thirdCategory' + j + ']').text();
		 alert(getText[j]); 
		$('#CategoryImagesCss' + j + '').val(getText[j]);
		
		var getText = $('[id^=thirdCategory]').text();
		alert(getText);
		var textCode = new Array();
		if (getText.length < 3) {
			for (var i = 0; i < 3; i++) {
				textCode[1] = getText[0].charCodeAt(0);
				textCode[2] = getText[0].charCodeAt(0);
			}
		} else {
			for (var i = 0; i < 3; i++) {
				textCode[i] = getText[i].charCodeAt(0);
			}
		}
		for (var i = 0; i < textCode.length; i++) {
			if (textCode[i] > 999) {
				textCode[i] = textCode[i] + "".substr(1, 3);
			}
			while (textCode[i] > 255) {
				textCode[i] -= 35;
			}
		}
		$('#CategoryImagesCss' + j + '').css('background-color', textCode);
	}
});*/

//id=thirdCategory 의 글자를 가지고 와서 RGB로 변환한 뒤 CategoryImages에 배경색으로 style
$(function() {
	var getText = $('[id^=thirdCategory]').text();
	var textCode = new Array();
	if (getText.length < 3) {
		for (var i = 0; i < 3; i++) {
			textCode[1] = getText[0].charCodeAt(0);
			textCode[2] = getText[0].charCodeAt(0);
		}
	} else {
		for (var i = 0; i < 3; i++) {
			textCode[i] = getText[i].charCodeAt(0);
		}
	}
	for (var i = 0; i < textCode.length; i++) {
		while (textCode[i] > 255) {
			textCode[i] -= 35;
		}
	}
	$('.CategoryImagesCss').val(getText);
	$('.CategoryImagesCss').css('background-color', textCode);
});