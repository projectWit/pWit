$(function() {

	$('[id^=queCntP]').click(
			function() {
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
				var cnt = this.id.substr(7, 10);
				$('#QUE_QNO').val(cnt);
				$('.radioSelect').on('change', function() {
					var radioSelVal = $('.radioSelect:checked').val();
					$('#QUE_RIGHTANSWER').val(radioSelVal);
				});

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
					BindChk(xml, "#radioSelect", "QUE_RIGHTANSWER");
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

			});
	$('#setQSubmit2').hide();
	var Excnt = parseInt($('#EX_QUESTIONSCOUNT').val());
	var sumCnt = 0;
	for (var i = 1; i <= Excnt; i++) {
		sumCnt += parseInt($('#scoreAssign' + i).val());

		if ($('#scoreAssign' + i).val() != 0) {
			$('#queChk' + i).prop("checked", true);
		} else {
			$('#queChk' + i).prop("checked", false);
		}
		if ($('#queChk' + i).is(':checked') == false) {
			$('#setQSubmit1').show();
			$('#setQSubmit2').hide();
		} else {
			$('#setQSubmit2').show();
		}
	}
	$('#sumQueCnt').val(sumCnt);

	$('#setQSubmit1').click(function() {
		var url2 = '/teamP/WIT_OPENEX_setExam_section6.op';
		$.ajax({
			url : url2,
			type : 'post',
			dataType : 'text',
			data : {
				EX_NO : parseInt($('#EX_NO').val()),
				QUE_USERSUBJECT : $('#QUE_USERSUBJECT').val(),
				QUE_CONTENT : $('#QUE_CONTENT').val(),
				QUE_SCORE : $('#QUE_SCORE').val(),
				QUE_EXAMPLE1 : $('#QUE_EXAMPLE1').val(),
				QUE_EXAMPLE2 : $('#QUE_EXAMPLE2').val(),
				QUE_EXAMPLE3 : $('#QUE_EXAMPLE3').val(),
				QUE_EXAMPLE4 : $('#QUE_EXAMPLE4').val(),
				QUE_EXAMPLE5 : $('#QUE_EXAMPLE5').val(),
				QUE_RIGHTANSWER : $('#QUE_RIGHTANSWER').val(),
				QUE_QNO : $('#QUE_QNO').val()
			},
			success : function(data) {
				goDetail();
			}
		});
	});
});
