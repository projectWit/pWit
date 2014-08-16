// id=thirdCategory 의 글자를 가지고 와서 RGB로 변환한 뒤 CategoryImages에 배경색으로 스타일
$(function() {
	var getText = $('#thirdCategory').text();
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
			textCode[i] -= 75;
		}
	}
	$('.CategoryImages').css('background-color', textCode);
});