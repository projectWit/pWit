$(function() {
	$('#setQSubmit2').hide();
	// 새로고침 방지 ctrl+N ctrl+R F5
	function noEvent() {
		if (event.keyCode == 116) {
			event.keyCode = 2;
			return false;
		} else if (event.ctrlKey
				&& (event.keyCode == 78 || event.keyCode == 82)) {
			return false;
		}
	}
	document.onkeydown = noEvent;

	// 카운트 다운
	var ext = parseInt($('#EXTIMELIMIT').val());
	var intervals = (60*ext);
	function timer() {
		$("#REC_TIME").val(intervals);
		setTimeout(timer, 1000); // 1초
		intervals--;
		if (intervals < 60) {
			$('#REC_TIME').css('font-size', '15px');
			$('#REC_TIME').css('color', 'red');
		} else if (intervals < 0) {
			alert("제한 시간이 종료 되었습니다");
		}
	}
	setTimeout(timer, 10);
	// 문항 수 계산
	var Excnt = parseInt($('#EX_QUESTIONSCOUNT').val());

	// 문항 클릭 - ajax로 select 출력
	var cnt = 0;
	$('[id^=queCntP]').click(
			function() {
				cnt = 0;
				cnt = this.id.substr(7, 10);
				$('[id^=queCntP]').css({
					fontweight : "normal",
					color : "gray",
					textShadow : "0 0 0 gray"
				});
				;
				$(this).css({
					fontweight : "bold",
					color : "black",
					textShadow : "0 0 1px gray"
				});
				$('#QUE_QNO').val(cnt);
				var url1 = '/teamP/WIT_OPENEX_setExam_section3.op?QUE_QNO='
						+ cnt + '&EX_NO=' + $('#EX_NO').val();
				$.get(url1, function(xml) {
					BindInp(xml, "#QUE_CONTENT", "QUE_CONTENT");
					BindInp(xml, "#QUE_SCORE", "QUE_SCORE");
					BindInp(xml, "#QUE_USERSUBJECT", "QUE_USERSUBJECT");
					BindInp(xml, "#QUE_RIGHTANSWER", "QUE_RIGHTANSWER");
					BindInp(xml, "#QUE_EXAMPLE1", "QUE_EXAMPLE1");
					BindInp(xml, "#QUE_EXAMPLE2", "QUE_EXAMPLE2");
					BindInp(xml, "#QUE_EXAMPLE3", "QUE_EXAMPLE3");
					BindInp(xml, "#QUE_EXAMPLE4", "QUE_EXAMPLE4");
					BindInp(xml, "#QUE_EXAMPLE5", "QUE_EXAMPLE5");
				});
				function BindInp(xml, element, cFind) {
					$(element).empty();
					var code = $(xml).find(cFind).text();
					$(element).val(code);
				}
				function BindChk(xml, element, cFind) {
					$(element).empty();
					var code = $(xml).find(cFind).text();
					$(element + code).prop("checked", true);
				}
				//라디오버튼 체크 해제
				$('.radioSelect').attr('checked',false).checkboxradio('refresh');
			});

	// 사용자답이 입력되면 출력
	$('.radioSelect').on('change', function() {
		var radioSelVal = $('.radioSelect:checked').val();
		$('#USA_ANSWER' + $('#QUE_QNO').val()).val(radioSelVal);
		
		// 사용자답이 입력되면 체크
		var sumCnt = 0;
		for (var i = 1; i <= Excnt; i++) {
			sumCnt += parseInt($('#USA_ANSWER' + i).val());
			
			if ($('#USA_ANSWER' + i).val() != 0) {
				$('#queChk' + i).prop("checked", true);
			} else {
				$('#queChk' + i).prop("checked", false);
			}
			if ($('#queChk' + i).is(':checked') == false) {
				$('#setQSubmit1').show();
				$('#setQSubmit2').hide();
				$('#setQSubmit1').val("모든 답을 입력해주세요");
			} else {
				$('#setQSubmit2').show();
				$('#setQSubmit1').val("검토 후 제출을 누르세요");
			}
		}
		$('#sumQueCnt').val(sumCnt);
	});

	// 사용자 답 DB에 insert
	$('#setQSubmit2').click(function() {
		var url2 = '/teamP/WIT_OPENEX_setExam_section6.op';
		$.ajax({
			url : url2,
			type : 'post',
			dataType : 'text',
			data : {
				QUE_RIGHTANSWER : $('#QUE_RIGHTANSWER').val(),
			},
			success : function(data) {
				goDetail();
			}
		});
	});
});
