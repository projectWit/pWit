//선택된 select box의 값을 상단 타이틀에 출력 
function change1stCategory(obj) {
	var getObj = obj[obj.selectedIndex].innerHTML;
	$("p[name='1stCategory']").html(getObj);
	$("#1stCategory").slideDown("slow");
}
function change2ndCategory(obj) {
	var getObj = "(" + obj[obj.selectedIndex].innerHTML + ")";
	$("p[name='2ndCategory']").html(getObj);
	$("#2ndCategory").slideDown("slow");
}

// 첫번째 폼에 포커스
function findInput() {
	$('section form input[type="text"], form textarea').eq(0).focus();
}

// 선택된 select box의 값에 따라 게시물 출력 갯수 변화
// if문 : 게시물이 10개를 넘어가서 overflow 될 경우 하단에 이미지(하방향 화살표) 노출
function exCount(obj) {
	var getObj = obj[obj.selectedIndex].text;
	var exCounting = getObj.substring(0, getObj.length - 2);
	$('#openex_setExam_excount').empty();
	$('#openex_setExam_excount_down').empty();
	$("#openex_setExam_excount").hide();
	$("#openex_setExam_excount").slideDown("slow");
	if (exCounting > 10) {
		$('#openex_setExam_excount_down')
				.append(
						'<tr><td><img src="img/OENEX_down.png" style="width:25px;"></td></tr>');
		for (var j = 0; j < exCounting; j++) {
			$('#openex_setExam_excount')
					.append(
							'<a href="#">'
									+ (j + 1)
									+ '번 문제</a><hr style="width: 120px; color: gray;">');
		}

	} else {
		for (var j = 0; j < exCounting; j++) {
			$('#openex_setExam_excount')
					.append(
							'<a href="#">'
									+ (j + 1)
									+ '번 문제</a><hr style="width: 120px; color: gray;">');
		}
	}

}

// 스크롤바를 숨기고 있다가 마우스오버시 노출
function scrollUnhidden() {
	$("#openex_setExam_excount").css('overflow', 'auto');
}
function scrollHidden() {
	$("#openex_setExam_excount").css('overflow', 'hidden');
}

// 슬라이드 토글
$(function() {
	$('#slideTogBox_se').css('height', '30px');
	$('#slideTogCtn_se').hide();
	$('#slideTogBtn_se').click(function() {
		if ($('#slideTogCtn_se').is(':hidden')) {
			$('#slideTogBox_se').css('height', '360px');
		} else {
			$('#slideTogBox_se').css('height', '30px');
		}
		$('#slideTogCtn_se').slideToggle()
	});
	$('#slideTogBox_sv').css('height', '30px');
	$('#slideTogCtn_sv').hide();
	$('#slideTogBtn_sv').click(function() {
		if ($('#slideTogCtn_sv').is(':hidden')) {
			$('#slideTogBox_sv').css('height', '360px');
		} else {
			$('#slideTogBox_sv').css('height', '30px');
		}
		$('#slideTogCtn_sv').slideToggle()
	});
});