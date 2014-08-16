// JavaScript Document

/* chkIds = [ ['체크할ID', 옵션], ['체크할ID', 옵션], ... ]
 * "공백없이 입력" 은 모든 옵션에 기본적으로 포함
 * 옵션 ------------------------------------------------------
 * 0 : 숫자만 있는지
 * 1 : 문자만 있는지
 */
var chkIds = [[]];

$(document).ready(function(e) {

	for (var i=0; i<chkIds.length; i++) {
		switch(chkIds[i][1]) {
		case 0:
			numOnly(chkIds[i][0]);
			break;
		case 1:
			charOnly(chkIds[i][0]);
			break;
		case 2:
			break;
		default:
			break;
		}
	}
});
function numOnly(id) {
	$('#'+id).keydown(function(e) {
		if (e.keyCode == 32) {
			alert("공백없이 입력해 주세요");
		} else if (e.keyCode != 8 && (e.keyCode<48 || e.keyCode>57) ) {
			alert("숫자만 입력해 주세요");
			e.preventDefault();
		}
	});
}
function charOnly(id) {
	$('#'+id).keydown(function(e) {
		if (e.keyCode == 32) {
			alert("공백없이 입력해 주세요");
		} else if (e.keyCode != 8) {
			if ( (e.keyCode>64 && e.keyCode<91) || (e.keyCode>96 && e.keyCode<123)) {
				
			} else {
				alert("문자만 입력해 주세요");
				e.preventDefault();
			}
		}
	});
}